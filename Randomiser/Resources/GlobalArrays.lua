-- CAR LIST
RandomCarPool = {
	"ambul",
	"apu_v",
	"atv_v",
	"bart_v",
	"bbman_v",
	"bookb_v",
	"burns_v",
	"burnsarm",
	"carhom_v",
	"cArmor",
	"cBlbart",
	"cBone",
	"cCellA",
	"cCellB",
	"cCellC",
	"cCellD",
	"cCola",
	"cCube",
	"cCurator",
	"cDonut",
	"cDuff",
	"cFire_v",
	"cHears",
	"cKlimo",
	"cletu_v",
	"cLimo",
	"cMilk",
	"cNerd",
	"cNonup",
	"coffin",
	"comic_v",
	"compactA",
	"cPolice",
	"cSedan",
	"cVan",
	"dune_v",
	"elect_v",
	"famil_v",
	"fishtruc",
	"fone_v",
	"frink_v",
	"garbage",
	"glastruc",
	"gramp_v",
	"gramR_v",
	"hallo",
	"hbike_v",
	"homer_v",
	"honor_v",
	"hype_v",
	"icecream",
	"IStruck",
	"knigh_v",
	"krust_v",
	"lisa_v",
	"marge_v",
	"minivanA",
	"moe_v",
	"mono_v",
	"mrplo_v",
	"nuctruck",
	"oblit_v",
	"otto_v",
	"pickupA",
	"pizza",
	"plowk_v",
	"redbrick",
	"rocke_v",
	"schoolbu",
	"scorp_v",
	"sedanA",
	"sedanB",
	"ship",
	"skinn_v",
	"smith_v",
	"snake_v",
	"sportsA",
	"sportsB",
	"SUVA",
	"taxiA",
	"tt",
	"votetruc",
	"wagonA",
	"wiggu_v",
	"willi_v",
	"witchcar",
	"zombi_v",
	"huskA"
}

CustomCarPool = {}
CustomCarSounds = {}

RandomCarPoolPlayer = {table.unpack(RandomCarPool)}
for i = #RandomCarPoolPlayer, 1, -1 do
	if not GetSetting(RandomCarPoolPlayer[i] .. "Player") then
		table.remove(RandomCarPoolPlayer, i)
	end
end
RandomCarPoolTraffic = {table.unpack(RandomCarPool)}
for i = #RandomCarPoolTraffic, 1, -1 do
	if not GetSetting(RandomCarPoolTraffic[i] .. "Traffic") then
		table.remove(RandomCarPoolTraffic, i)
	end
end
RandomCarPoolMission = {table.unpack(RandomCarPool)}
for i = #RandomCarPoolMission, 1, -1 do
	if not GetSetting(RandomCarPoolMission[i] .. "Mission") then
		table.remove(RandomCarPoolMission, i)
	end
end
RandomCarPoolChase = {table.unpack(RandomCarPool)}
for i = #RandomCarPoolChase, 1, -1 do
	if not GetSetting(RandomCarPoolChase[i] .. "Chase") then
		table.remove(RandomCarPoolChase, i)
	end
end

-- DRIVER LIST
CarDrivers = {}
CarDrivers["apu"] = {"apu_v"}
CarDrivers["bart"] = {"bart_v", "honor_v"}
CarDrivers["cletus"] = {"cletu_v"}
CarDrivers["cbg"] = {"comic_v"}
CarDrivers["lisa"] = {"elect_v", "lisa_v"}
CarDrivers["homer"] = {"famil_v", "homer_v"}
CarDrivers["frink"] = {"frink_v"}
CarDrivers["grandpa"] = {"gramp_v", "gramR_v"}
CarDrivers["marge"] = {"marge_v"}
CarDrivers["otto"] = {"otto_v"}
CarDrivers["skinner"] = {"skinn_m1", "skinn_v"}
CarDrivers["smithers"] = {"smith_v"}
CarDrivers["snake"] = {"snake_v"}
CarDrivers["wiggum"] = {"wiggu_v"}
CarDrivers["zmale1"] = {"zombi_v"}

-- PED LIST
RandomPedPool = {
	"apu",
	"askinner",
	"a_american", 
	"a_army",  
	"a_besharp", 
	"barney",  
	"bart",  
	"beeman",  
	"boy1", 
	"boy2", 
	"boy3", 
	"boy4", 
	"brn_unf", 
	"bum", 
	"burns", 
	"busm1", 
	"busm2",  
	"busw1", 
	"b_football", 
	"b_hugo", 
	"b_man",  
	"b_military", 
	"b_ninja", 
	"b_tall", 
	"captain", 
	"carl", 
	"cbg", 
	"cletus", 
	"const1", 
	"const2", 
	"dolph", 
	--"eddie", 
	"farmr1", 
	"fem1", 
	"fem2", 
	"fem3", 
	"fem4", 
	"frankenstein", 
	"frink", 
	"gil", 
	"girl1", 
	"girl2", 
	"girl3", 
	"girl4", 
	--"grandpa", 
	"hibbert", 
	"homer", 
	"hooker", 
	"h_donut", 
	"h_evil", 
	"h_fat", 
	"h_scuzzy", 
	"h_stcrobe", 
	"h_undrwr", 
	"jasper", 
	"jimbo", 
	"joger1", 
	"joger2", 
	"kearney", 
	--"krusty", 
	--"lenny", 
	"lisa", 
	"louie", 
	"lou", 
	"l_cool", 
	"l_florida", 
	"l_jersey", 
	"male1", 
	"male2", 
	"male3", 
	"male4", 
	"male5", 
	"male6", 
	"marge", 
	"milhouse", 
	"mobstr", 
	--"moe", 
	--"moleman", 
	"m_pink", 
	"m_police", 
	"m_prison", 
	"ned", 
	"nelson", 
	"nriviera", 
	"nuclear", 
	"olady1", 
	"olady2", 
	"olady3", 
	"otto", 
	--"patty", 
	--"ralph", 
	"rednk1", 
	"rednk2", 
	"sail1", 
	"sail2", 
	"sail3", 
	"sail4", 
	"selma", 
	"skinner", 
	"smithers", 
	"snake", 
	"teen", 
	"wiggum", 
	--"willie", 
	"witch", 
	"zfem1", 
	"zfem5", 
	"zmale1",  
	"zmale3", 
	"zmale4"
}

-- Char P3D List
RandomCharP3DPool = {
	"apu_m",
	"askinn_m",
	"a_amer_m",
	"a_army_m",
	"a_besh_m",
	"barney_m",
	"bart_m",
	"beeman_m",
	"boy1_m",
	"boy2_m",
	"boy3_m",
	"boy4_m",
	"brn_un_m",
	"bum_m",
	"burns_m",
	"busm1_m",
	"busm2_m",
	"busw1_m",
	"b_foot_m",
	"b_hugo_m",
	"b_man_m",
	"b_mili_m",
	"b_ninj_m",
	"b_tall_m",
	"captai_m",
	"carl_m",
	"cbg_m",
	"cletus_m",
	"const1_m",
	"const2_m",
	"dolph_m",
	"eddie_m",
	"farmr1_m",
	"fem1_m",
	"fem2_m",
	"fem3_m",
	"fem4_m",
	"franke_m",
	"frink_m",
	"gil_m",
	"girl1_m",
	"girl2_m",
	"girl3_m",
	"girl4_m",
	"grandp_m",
	"hibber_m",
	"homer_m",
	"hooker_m",
	"h_donu_m",
	"h_evil_m",
	"h_fat_m",
	"h_scuz_m",
	"h_stcr_m",
	"h_undr_m",
	"jasper_m",
	"jimbo_m",
	"joger1_m",
	"joger2_m",
	"kearne_m",
	"krusty_m",
	"lenny_m",
	"lisa_m",
	"louie_m",
	"lou_m",
	"l_cool_m",
	"l_flor_m",
	"l_jers_m",
	"male1_m",
	"male2_m",
	"male3_m",
	"male4_m",
	"male5_m",
	"male6_m",
	"marge_m",
	"milhou_m",
	"mobstr_m",
	"moe_m",
	"molema_m",
	"m_pink_m",
	"m_poli_m",
	"m_pris_m",
	"ned_m",
	"nelson_m",
	"nrivie_m",
	"nuclea_m",
	"olady1_m",
	"olady2_m",
	"olady3_m",
	"otto_m",
	"patty_m",
	"ralph_m",
	"rednk1_m",
	"rednk2_m",
	"sail1_m",
	"sail2_m",
	"sail3_m",
	"sail4_m",
	"selma_m",
	"skinne_m",
	"smithe_m",
	"snake_m",
	"teen_m",
	"wiggum_m",
	"willie_m",
	"witch_m",
	"zfem1_m",
	"zfem5_m",
	"zmale1_m",
	"zmale3_m",
	"zmale4_m"
}

-- Icon P3D List
IconP3DPool = {
	"\\char\\apu",
	"\\char\\barne",
	"\\char\\barneuni",
	"\\char\\bart",
	"\\char\\burns",
	"\\char\\carl",
	"\\char\\cbg",
	"\\char\\cletus",
	"\\char\\drhibert",
	"\\char\\drnick",
	"\\char\\frink",
	"\\char\\grampa",
	"\\char\\homer",
	"\\char\\jimbo",
	"\\char\\kearney",
	"\\char\\krusty",
	"\\char\\lenny",
	"\\char\\lisa",
	"\\char\\louie",
	"\\char\\marage",
	"\\char\\milhouse",
	"\\char\\moe",
	"\\char\\moleman",
	"\\char\\ned",
	"\\char\\nelson",
	"\\char\\otto",
	"\\char\\ralph",
	"\\char\\scaptain",
	"\\char\\sjail",
	"\\char\\skinner",
	"\\char\\smithers",
	"\\char\\snake",
	"\\char\\svt",
	"\\char\\wiggum",
	"\\location\\android",
	"\\location\\aztec",
	"\\location\\bartroom",
	"\\location\\bowlera",
	"\\location\\casino",
	"\\location\\cemetery",
	"\\location\\chum",
	"\\location\\cletushs",
	"\\location\\dmv",
	"\\location\\duff",
	"\\location\\google",
	"\\location\\grocery",
	"\\location\\hermans",
	"\\location\\hospital",
	"\\location\\itcstore",
	"\\location\\java",
	"\\location\\kburger",
	"\\location\\krustylu",
	"\\location\\kwike",
	"\\location\\lardlads",
	"\\location\\lbsc",
	"\\location\\lexicon",
	"\\location\\mansion",
	"\\location\\moehouse",
	"\\location\\moes",
	"\\location\\monorail",
	"\\location\\museum",
	"\\location\\noise",
	"\\location\\observ",
	"\\location\\parking",
	"\\location\\planethy",
	"\\location\\playgrou",
	"\\location\\police",
	"\\location\\pwrplant",
	"\\location\\retire",
	"\\location\\right",
	"\\location\\school",
	"\\location\\scream",
	"\\location\\ship",
	"\\location\\simpsons",
	"\\location\\sitnrota",
	"\\location\\spsign",
	"\\location\\squidp",
	"\\location\\stadium",
	"\\location\\taffy",
	"\\location\\townhall",
	"\\location\\trynsave",
	"\\location\\ufo",
	"\\location\\wallewea",
	"\\location\\wstation",
	"\\object\\antifung",
	"\\object\\barrel",
	"\\object\\blender",
	"\\object\\blood",
	"\\object\\boards",
	"\\object\\bonestor",
	"\\object\\buzzcola",
	"\\object\\caffeine",
	"\\object\\cardboar",
	"\\object\\chainsaw",
	"\\object\\colacrat",
	"\\object\\comic",
	"\\object\\cooler",
	"\\object\\diaper",
	"\\object\\digest",
	"\\object\\donuts",
	"\\object\\firework",
	"\\object\\firstaid",
	"\\object\\fish",
	"\\object\\flatmeat",
	"\\object\\folder",
	"\\object\\heart",
	"\\object\\icecream",
	"\\object\\inhaler",
	"\\object\\kbmeal",
	"\\object\\ketchup",
	"\\object\\key",
	"\\object\\kids",
	"\\object\\lasercra",
	"\\object\\lasergun",
	"\\object\\lasersta",
	"\\object\\lawnchr",
	"\\object\\lawnmwr",
	"\\object\\litter",
	"\\object\\lundry",
	"\\object\\map",
	"\\object\\monkey",
	"\\object\\photo",
	"\\object\\pills",
	"\\object\\powercou",
	"\\object\\race",
	"\\object\\radio",
	"\\object\\record",
	"\\object\\redhat",
	"\\object\\setelite",
	"\\object\\sock",
	"\\object\\tamacco",
	"\\object\\tomoto",
	"\\object\\tooth",
	"\\object\\tshirt",
	"\\object\\tuxedo",
	"\\vehicle\\apu_v",
	"\\vehicle\\arm_v",
	"\\vehicle\\blimo_v",
	"\\vehicle\\bsedan_v",
	"\\vehicle\\celph_v",
	"\\vehicle\\cletus_v",
	"\\vehicle\\cola_v",
	"\\vehicle\\cvan_v",
	"\\vehicle\\frink_v",
	"\\vehicle\\krusty_v",
	"\\vehicle\\milk_v",
	"\\vehicle\\skinn_v",
	"\\vehicle\\smith_v",
	"\\vehicle\\sports_v",
	"\\vehicle\\wiggu_v"
}

-- Random Drop Item List
RandomItemPool = {}
RandomItemPool["bonestorm"] = "\\level01\\bonebox"
RandomItemPool["coolr"] = "\\level01\\coolr"
RandomItemPool["flanpic"] = "\\level01\\flanpic"
RandomItemPool["h_soda"] = "\\level01\\h_soda"
RandomItemPool["i_soda"] = "\\level01\\i_soda"
RandomItemPool["icebuck"] = "\\level01\\ibucket"
RandomItemPool["inhaler"] = "\\level01\\inhaler"
RandomItemPool["lwnchair"] = "\\level01\\lwnchair"
RandomItemPool["mower"] = "\\level01\\mower"
RandomItemPool["poster_t"] = "\\level01\\poster_t"
RandomItemPool["scien"] = "\\level01\\scien"
RandomItemPool["tomat"] = "\\level01\\tomat"
RandomItemPool["tux"] = "\\level01\\tux"
RandomItemPool["blend"] = "\\level02\\blend"
RandomItemPool["bloodbag"] = "\\level02\\bloodbag"
RandomItemPool["firewrks"] = "\\level02\\firewrks"
RandomItemPool["i_bldbag"] = "\\level02\\i_bldbag"
RandomItemPool["i_firewk"] = "\\level02\\i_firewk"
RandomItemPool["monkey"] = "\\level02\\monkey"
RandomItemPool["radio"] = "\\level02\\radio"
RandomItemPool["roadkill"] = "\\level02\\roadkill"
RandomItemPool["s_dish"] = "\\level02\\satellite"
RandomItemPool["cream"] = "\\level03\\cream"
RandomItemPool["diaper"] = "\\level03\\diaper"
RandomItemPool["fish"] = "\\level03\\fish"
RandomItemPool["h_soda"] = "\\level03\\h_soda"
RandomItemPool["is_comic"] = "\\level03\\is_comic"
RandomItemPool["jeans"] = "\\level03\\jeans"
RandomItemPool["kmeal"] = "\\level03\\kmeal"
RandomItemPool["laundry"] = "\\level03\\laundry"
RandomItemPool["molemanr"] = "\\level03\\molemanr"
RandomItemPool["rhat"] = "\\level03\\rhat"
RandomItemPool["cola"] = "\\level04\\cola"
RandomItemPool["cpill"] = "\\level04\\cpill"
RandomItemPool["donut"] = "\\level04\\donut"
RandomItemPool["i_cpill"] = "\\level04\\i_cpill"
RandomItemPool["ketchup"] = "\\level04\\ketchup"
RandomItemPool["pills"] = "\\level04\\pills"
RandomItemPool["r_choco"] = "\\level04\\r_choco"
RandomItemPool["r_dent"] = "\\level04\\r_dent"
RandomItemPool["r_diaper"] = "\\level04\\r_diaper"
RandomItemPool["r_onions"] = "\\level04\\r_onions"
RandomItemPool["r_tomb"] = "\\level04\\r_tomb"
RandomItemPool["folder"] = "\\level05\\folder"
RandomItemPool["i_folder"] = "\\level05\\i_folder"
RandomItemPool["key"] = "\\level05\\key"
RandomItemPool["litter"] = "\\level05\\litter"
RandomItemPool["laserbox_crate"] = "\\level06\\laserbox"
RandomItemPool["lasergun"] = "\\level06\\lasergun"
RandomItemPool["lasrstnd"] = "\\level06\\lasrstnd"
RandomItemPool["s_boy1"] = "\\level06\\s_boy1"
RandomItemPool["s_boy2"] = "\\level06\\s_boy2"
RandomItemPool["s_girl1"] = "\\level06\\s_girl1"
RandomItemPool["s_girl2"] = "\\level06\\s_girl2"
RandomItemPool["map"] = "\\level07\\map"
RandomItemPool["medkit"] = "\\level07\\medkit"
RandomItemPool["record"] = "\\level07\\record"
RandomItemPool["saw"] = "\\level07\\saw"
RandomItemPool["sockg"] = "\\level07\\sockg"
RandomItemPool["tooth"] = "\\level07\\tooth"
RandomItemPool["wplanks"] = "\\level07\\wplanks"

-- Presentation P3D List
PresentationP3DPool = {
	"mis01_00",
	"mis01_01",
	"mis01_02",
	"mis01_03",
	"mis01_04",
	"mis01_05",
	"mis01_06",
	"mis01_07",
	"mis01_08",
	"mis02_01",
	"mis02_02",
	"mis02_03",
	"mis02_04",
	"mis02_05",
	"mis02_06",
	"mis02_07",
	"mis02_08",
	"mis03_01",
	"mis03_02",
	"mis03_03",
	"mis03_04",
	"mis03_05",
	"mis03_06",
	"mis03_07",
	"mis03_08",
	"mis04_01",
	"mis04_02",
	"mis04_03",
	"mis04_04",
	"mis04_05",
	"mis04_06",
	"mis04_07",
	"mis04_08",
	"mis05_01",
	"mis05_02",
	"mis05_03",
	"mis05_04",
	"mis05_05",
	"mis05_06",
	"mis05_07",
	"mis05_08",
	"mis06_01",
	"mis06_02",
	"mis06_03",
	"mis06_04",
	"mis06_05",
	"mis06_06",
	"mis06_07",
	"mis06_08",
	"mis07_01",
	"mis07_02",
	"mis07_03",
	"mis07_04",
	"mis07_05",
	"mis07_06",
	"mis07_07",
	"mis07_08",
	"misXX_CP",
	"misXX_CT",
	"misXX_GB",
	"misXX_HW",
	"misXX_PS",
	"misXX_TT"
}

RandomDialoguePool = {}

--Level interiors
interiorNames = {}
interiorNames["00"] = "SpringfieldElementary"
interiorNames["01"] = "KwikEMart"
interiorNames["02"] = "SimpsonsHouse"
interiorNames["03"] = "dmv"
interiorNames["04"] = "moe1"
interiorNames["05"] = "Android"
interiorNames["06"] = "Observatory"
interiorNames["07"] = "bartroom"

l1interiors = {
	"00",
	"01",
	"02",
}

l2interiors = {
	"03",
	"04"
}

l3interiors = {
	"05",
	"06"
}

l4interiors = {
	"00",
	"01",
	"02",
	"07"
}

l5interiors = {
	"03",
	"04"
}

l6interiors = {
	"05",
	"06"
}

l7interiors = {
	"00",
	"01",
	"02",
	"07"
}

interiorReplace = {}
iconReplace = {}
missionOrder = {}
itemReplace = {}

-- Random Stats Saving
PlayerStats = {}
