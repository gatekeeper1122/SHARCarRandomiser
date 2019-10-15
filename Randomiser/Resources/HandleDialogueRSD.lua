local Path = "/GameData/" .. GetPath()

if Settings.RandomDialogue and RandomDialoguePoolN > 0 then
	local RedirectPath = RandomDialoguePool[math.random(RandomDialoguePoolN)]

	DebugPrint("Redirecting " .. Path .. " to " .. RedirectPath)

	Redirect(RedirectPath)
elseif Settings.RandomMissions and Path:match("L%d") then
	if IsModEnabled("RandomiserDialogue") then
		local RedirectPath = Path:gsub("/GameData/", "/GameData/RandomDialogue/")
		if Exists(RedirectPath, true, false) then
			DebugPrint("Redirecting " .. Path .. " to " .. RedirectPath)
			Redirect(RedirectPath)
		else
			local redirected = false
				for i = 1, 7 do
					local tmp = RedirectPath:gsub("L(%d)", "L%1M" .. i)
					if Exists(tmp, true, false) then
						DebugPrint("Redirecting " .. Path .. " to " .. tmp)
						Redirect(tmp)
						redirected = true
						break
					else
						local tmp = RedirectPath:gsub("L(%d)", "L%1R" .. i)
						if Exists(tmp, true, false) then
							DebugPrint("Redirecting " .. Path .. " to " .. tmp)
							Redirect(tmp)
							redirected = true
							break
						else
							local tmp = RedirectPath:gsub("L(%d)", "L%1B" .. i)
							if Exists(tmp, true, false) then
								DebugPrint("Redirecting " .. Path .. " to " .. tmp)
								Redirect(tmp)
								redirected = true
								break	
							end
						end
					end
				end
			if not redirected then
				DebugPrint("Redirecting " .. Path .. " to empty.rsd")
				Redirect(ModPath .. "/Resources/empty.rsd")
			end
		end
	else
		DebugPrint("Redirecting " .. Path .. " to empty.rsd")
		Redirect(ModPath .. "/Resources/empty.rsd")
	end
end
