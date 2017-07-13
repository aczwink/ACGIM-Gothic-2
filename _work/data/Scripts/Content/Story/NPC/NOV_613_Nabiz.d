INSTANCE NOV_613_Nabiz (Npc_Default)
{
	// ------ NSC ------
	name 		= "Nabiz";
	guild 		= GIL_NOV;
	id 			= 613;
	voice 		= 3;
	flags       = 0;																	
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);	
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	EquipItem	(self, ItMw_1h_Nov_Mace); 
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart02, BodyTex_N, ITAR_NOV_L);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Mage.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 15); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_613;
};

FUNC VOID Rtn_Start_613 ()
{	
	TA_Pray_Innos_FP	(07,00,08,00,"NW_MONASTERY_CHURCH_03");
	TA_Pick_FP		(08,00,22,04,"NW_MONASTERY_GARDEN_02");	
    TA_Sleep			(22,04,07,00,"NW_MONASTERY_NOVICE01_06");
};

FUNC VOID Rtn_Favor_613 ()
{
	TA_Pray_Innos_FP	(07,00,08,00,"NW_MONASTERY_CHURCH_03");
	TA_Read_Bookstand	(08,00,10,00,"NW_MONASTERY_RUNEMAKER_07");
	TA_Pick_FP		(10,00,22,04,"NW_MONASTERY_GARDEN_02");	
    TA_Sleep			(22,04,07,00,"NW_MONASTERY_NOVICE01_06");
};