-- Lont's Paladin/Retribution Rotation Version 0.1.0
ProbablyEngine.rotation.register_custom(70, "ProjectNexus", {

-- Cooldowns

{"31884", "modifier.cooldowns" },
{"105809", {"modifier.cooldowns",
			"player.holypower < 3" } },
--{"#76095", "modifier.cooldowns" }, -- Uses Potion of Mogu Power

-- Combat Rotation

{"85256", "player.holypower >= 3"}, 
{"85256", {"player.buff(31884)", "player.buff(105809)", }},
{"35395", },
{"20271", },
{"879", },
{"114157", },
{"24275", },

})