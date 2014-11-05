-- Lont's Paladin/Retribution Rotation Version 0.1.1.75

local Combat = {

-- Cooldowns --

	{"31884", "modifier.cooldowns" },
	{"105809", {"modifier.cooldowns",
				"player.holypower < 3" } },
	{"#76095", "modifier.cooldowns" }, -- Uses Potion of Mogu Power

-- Combat Rotation

	{"85256", "player.holypower >= 3"}, 
	{"85256", {"player.buff(31884)", "player.buff(105809)", }},
	{"35395", },
	{"20271", },
	{"879", },
	{"114157", },
	{"24275", },

--Interrupt Modifier

	{"96231", "modifier.interrupt"}, 
	{"155145", "modifier.interrupt"}, --Blood Elf Paladins only

}	

local outCombat = {
-- Out of Combat

--Buffs
	{"19740", {"player.spell(19740).exists", "!player.buff(19740).any"}},
--("31801", {"!player.spell(31801).exists", "!player.buff(31801).any"}}, -- Still trying to work out how to get the Seal(s) working
	{"#76088", {"toggle.flask", "!player.buff(105696).any"}},
}

local togButtons = function()
	ProbablyEngine.toggle.create('flask', 'Interface\\Icons\\trade_alchemy_potione4', 'Uses Flasks', 'Uses a flask when it expires')
end

ProbablyEngine.rotation.register_custom(70, "Retribution - by |cffff00ffLont|r", Combat, outCombat, togButtons)