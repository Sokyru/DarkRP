
AddEntity("Drug lab", {
	ent = "drug_lab",
	model = "models/props_lab/crematorcase.mdl",
	price = 400,
	max = 3,
	cmd = "/buydruglab",
	allowed = {TEAM_GANG, TEAM_MOB}
})

AddEntity("Money printer", {
	ent = "money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 1000,
	max = 2,
	cmd = "/buymoneyprinter"
})

AddEntity("Microwave", {
	ent = "microwave",
	model = "models/props/cs_office/microwave.mdl",
	price = 400,
	max = 1,
	cmd = "/buymicrowave",
	allowed = TEAM_COOK
})

AddEntity("Gun lab", {
	ent = "gunlab",
	model = "models/props_c17/TrapPropeller_Engine.mdl",
	price = 500,
	max = 1,
	cmd = "/buygunlab",
	allowed = TEAM_GUN
})


-- ADD CUSTOM SHIPMENTS HERE(next line):


 
AddEntity("Swag_printer", {
	ent = "Swag_Printer",
	model = "models/props_c17/consolebox05a.mdl",
	price = 10000,
	max = 200,
	cmd = "/buySwag"
})
 
AddEntity("Yolo_Printer", {
	ent = "Gold plated printer",
	model = "models/props_c17/consolebox03a.mdl",
	price = 20000,
	max = 200,
	cmd = "/buyYolo"
})
 
 AddCustomShipment("M249", "models/weapons/w_mach_m249para.mdl", "weapon_real_cs_m249", 6000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Galil", "models/weapons/w_rif_galil.mdl", "weapon_real_cs_galil", 4000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("AK47", "models/weapons/w_rif_ak47.mdl", "weapon_real_cs_ak47", 4000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("M4A1", "models/weapons/w_rif_m4a1.mdl", "weapon_real_cs_m4a1", 3900, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Famas", "models/weapons/w_rif_famas.mdl", "weapon_real_cs_famas", 3900, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("AWP", "models/weapons/w_snip_awp.mdl", "weapon_real_cs_awp", 5000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Scout", "models/weapons/w_snip_scout.mdl", "weapon_real_cs_scout", 4500, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("SteyrAug", "models/weapons/w_rif_aug.mdl", "weapon_real_cs_aug", 4000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("SG552", "models/weapons/w_rif_sg552.mdl", "weapon_real_cs_sg552", 4000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("G3SG1", "models/weapons/w_snip_g3sg1.mdl", "weapon_real_cs_g3sg1", 4000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("SG550", "models/weapons/w_snip_sg550.mdl", "weapon_real_cs_sg550", 4000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("UMP45", "models/weapons/w_smg_ump45.mdl", "weapon_real_cs_ump_45", 3600, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("P90", "models/weapons/w_smg_p90.mdl", "weapon_real_cs_p90", 3500, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("TMP", "models/weapons/w_smg_tmp.mdl", "weapon_real_cs_tmp", 3500, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("MP5", "models/weapons/w_smg_mp5.mdl", "weapon_real_cs_mp5a5", 3200, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Mac10", "models/weapons/w_smg_mac10.mdl", "weapon_real_cs_mac10", 3000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("AutoShotgun", "models/weapons/w_shot_xm1014.mdl", "weapon_real_cs_xm1014", 3000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Shotgun", "models/weapons/w_shot_m3super90.mdl", "weapon_real_cs_pumpshotgun", 2500, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Grenade", "models/weapons/w_eq_fraggrenade.mdl", "weapon_real_cs_grenade", 15000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Flash", "models/weapons/w_eq_flashbang_thrown.mdl", "weapon_real_cs_flash", 2000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Smoke", "models/weapons/w_eq_smokegrenade.mdl", "weapon_real_cs_smoke", 2000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("DualElites", "models/weapons/w_pist_elite_dropped.mdl", "weapon_real_cs_elites", 2300, 10, true, 250, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Deagle", "models/weapons/w_pist_deagle.mdl", "weapon_real_cs_desert_eagle", 2300, 10, true, 250, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("USP", "models/weapons/w_pist_usp.mdl", "weapon_real_cs_usp", 2200, 10, true, 240, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("P228", "models/weapons/w_pist_p228.mdl", "weapon_real_cs_p228", 2100, 10, true, 220, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Glock", "models/weapons/w_pist_glock18.mdl", "weapon_real_cs_glock18", 2000, 10, true, 210, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("FiveSeven", "models/weapons/w_pist_fiveseven.mdl", "weapon_real_cs_five-seven", 1900, 10, true, 200, false, {TEAM_GUN, TEAM_ADMIN})
   AddCustomShipment("Knife", "models/weapons/w_knife_t.mdl", "weapon_real_cs_knife", 2000, 10, false, 0, false, {TEAM_GUN, TEAM_ADMIN})