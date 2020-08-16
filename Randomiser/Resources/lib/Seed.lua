Seed = {}
Seed.Spoiler = {}

local MAX_ATTEMPTS = 5

-- Special Base64 Array to avoid "similar" letters
Seed._bs = { [0] =
   'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P',
   'Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f',
   'g','h','%','j','k','&','m','n','o','p','q','r','s','t','u','v',
   'w','x','y','z','0','$','2','3','4','5','6','7','8','9','+','/',
}

-- Inverse lookup for base64
Seed._bsi = {}
for i=0,#Seed._bs do
	Seed._bsi[string.byte(Seed._bs[i])] = i
end

function Seed.Base64(s)
	return base64(s, Seed._bs):sub(1, -2)
end

function Seed.Base64dec(s)
	return base64dec(s .. "=", Seed._bs, Seed._bsi)
end

function Seed.MakeChoices(choicetbl, idx1, idx2)
	local tbl = { Attempt = {}, Choices = {} }
	for i1=1,idx1 do
		if idx2 == nil then 
			tbl.Choices[i1] = {}
			tbl.Attempt[i1] = 1
			for m=1,MAX_ATTEMPTS do
				tbl.Choices[i1][m] = math.random(#choicetbl)
				Seed.AddSpoiler("[%d][%d] = %d (%s)", i1, m, tbl.Choices[i1][m], choicetbl[tbl.Choices[i1][m]])
			end
		else
			tbl.Choices[i1] = {}
			tbl.Attempt[i1] = {}
			for i2=1,idx2 do
				tbl.Choices[i1][i2] = {}
				tbl.Attempt[i1][i2] = 1
				for m=1,MAX_ATTEMPTS do
					tbl.Choices[i1][i2][m] = math.random(#choicetbl)
					Seed.AddSpoiler("[%d][%d][%d] = %d (%s)", i1, i2, m, tbl.Choices[i1][i2][m], choicetbl[tbl.Choices[i1][i2][m]])
				end
			end
		end
	end	
	return tbl
end

function Seed.GetChoice(choices, idx1, idx2)
	if idx2 == nil then
		local rv = choices.Choices[idx1][choices.Attempt[idx1]]
		choices.Attempt[idx1] = choices.Attempt[idx1] + 1
		if choices.Attempt[idx1] > MAX_ATTEMPTS then
			choices.Attempt[idx1] = 1
		end
		return rv
	else
		local rv = choices.Choices[idx1][idx2][choices.Attempt[idx1][idx2]]
		choices.Attempt[idx1][idx2] = choices.Attempt[idx1][idx2] + 1
		if choices.Attempt[idx1][idx2] > MAX_ATTEMPTS then
			choices.Attempt[idx1][idx2] = 1
		end
		return rv
	end
end

function Seed.Init()
	if Settings.Seed == nil or Settings.Seed == "" then
		local number = math.random(math.maxinteger)
		Settings.Seed = Seed.Base64(string.pack("j", number))
		Seed.SeedRaw = number
		DebugPrint("Generated a new seed: " .. Settings.Seed)
	else
		if (Settings.Seed:len() > 11) then
			Alert("Your seed was longer than 11 characters, characters after this won't affect the seed or the randomness")
		end
		local raw = Seed.Base64dec(Settings.Seed)
		if raw:len() < 16 then
			raw = raw .. string.rep("\0", 16 - raw:len())
		end
		Seed.SeedRaw = string.unpack("j", raw)
	end
	DebugPrint("Initialising RNG with Seed: " .. Seed.SeedRaw)
	math.randomseed(Seed.SeedRaw)
end

function Seed.AddSpoiler(f, ...)
	table.insert(Seed.Spoiler, string.format(f, ...))
end

function Seed.PrintSpoiler()
	print("--- BEGIN SEED SPOILERS ---")
	print(base64(table.concat(Seed.Spoiler, "\n")))
	print("--- END SPOILERS ---")
end