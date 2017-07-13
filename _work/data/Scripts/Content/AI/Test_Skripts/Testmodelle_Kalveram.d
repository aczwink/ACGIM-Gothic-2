//#########################################
//##
//##	Allgemeine Hinweise
//##
//#########################################
/*
*********************************************************************************************
VOR DEM SCHIFF:
*********************************************************************************************

NW_WAITFOR_SHIP_CAPTAIN 			1x TA_Sit_Bench
	alle drei Captains
 
NW_WAITFOR_SHIP_01 					1x TA_Sit_Bench, 2x TA_Stand_
	Lee 	-> Stand_Guarding
	Mario	-> Stand_Drinking
	Wolf 	-> Sit_Bench	

NW_CITY_WAY_TO_SHIP_19 				2x TA_Smalltalk
	Lester	->Smalltalk
	Milten	->Smalltalk

NW_WAITFOR_SHIP_05 
	Diego 	->Smalltalk
	Lares 	->Smalltalk				2x TA_Smalltalk, 2x TA_Stand_
	Bennet  ->Stand
	GornNW_nach_DJG	->Stand
	
NW_WAITFOR_SHIP_03 					2x TA_Smalltalk, 2x TA_Stand_
	Biff 	->Stand
	Angar 	-> Stand
NW_WAITFOR_SHIP_04 					1x TA_Sit_Bench, 2x TA_Stand_
	Vatras 	->TA_SIT_BENCH

*********************************************************************************************
AUF DEM SCHIFF:
*********************************************************************************************
SHIP_CREW_CAPTAIN 			1x TA_STAND_WP
	alle drei Captains
 
SHIP_CREW_01 					1x TA_Sit_Bench, 2x TA_Stand_
	Lee 	-> Stand_Guarding
	Mario	-> Stand_Drinking
	Wolf 	-> Sit_Bench	

SHIP_CREW_19 				2x TA_Smalltalk
	Lester	->Smalltalk
	Milten	->Smalltalk

SHIP_CREW_05 	2x TA_Smalltalk, 1x TA_Stand_
	Lares 	->Smalltalk				
	Diego	->Smalltalk	

SHIP_CREW_03 					2x TA_Smalltalk, 2x TA_Stand_
	Angar
	Girion
SHIP_CREW_04 					1x TA_Sit_Bench, 2x TA_Stand_


	Gorn 	->Patroll
	Biff 	->Patroll
	Wolf 	->Patroll

*/

instance Hoshi_Testmodell (Npc_Default)
{
	// ------ NSC ------
	name 		= "Hoshi";	
	guild 		= GIL_MIL;
	id 			= 20000;
	voice 		= 6;
	flags       = 0;																
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 3);																	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																	
	EquipItem			(self, ItMw_1h_Mil_Sword);
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																		
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal05, BodyTex_N, ITAR_PAL_M);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	B_SetFightSkills (self, 80); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_302;
};

FUNC VOID Rtn_Start_20000 ()
{	
	TA_Guard_Passage	(08,00,23,00,"NW_CITY_GUARDOFFICE_GUARD_01");
    TA_Guard_Passage	(23,00,08,00,"NW_CITY_GUARDOFFICE_GUARD_01");
};


instance TA_Testmodell (Npc_Default)
{
	// ------ NSC ------
	name 		= "TA_Testmodell";
	guild 		= GIL_SLD;
	id 			= 1500;
	voice 		= 3;
	flags       = NPC_FLAG_IMMORTAL;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ AIVARS ------
	//aivar[AIV_IgnoresFakeGuild] 		= TRUE;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Bau_Mace);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, 0);	
	//Mdl_SetModelFatness	(self, 2);
	//Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	//------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 70); //Grenzen für Talent-Level liegen bei 30 und 60
		

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1500;
};

FUNC VOID Rtn_Start_1500 ()
{
	TA_Cook_Cauldron   	(00,00,00,15,"WP_COOK_CAULDRON");
	TA_Pee				(00,15,00,30,"WP_WASH");
	TA_Cook_Pan			(00,30,00,45,"WP_COOK_PAN");
	TA_Pick_FP			(00,45,01,00,"WP_PICK");
	TA_Pick_Ore			(01,00,01,15,"WP_PICK_ORE");
	TA_Practice_Magic	(01,15,01,30,"WP_STAND");
	TA_Potion_Alchemy	(01,30,01,45,"WP_POTION_ALCHEMY");
	TA_Pray_Innos_FP	(01,45,02,00,"WP_PRAY");
	TA_Pray_Innos		(02,00,02,15,"WP_PRAY_INNOS_STATUE");
	TA_Practice_Sword	(02,15,02,30,"WP_MOBSIS_ALLE");
	TA_Play_Lute		(02,30,02,45,"WP_STAND");
	TA_Read_Bookstand	(02,45,03,00,"WP_READ_BOOKSTAND");
	TA_Repair_Hut		(03,00,03,15,"WP_REPAIR_HUT");
	TA_Roast_Scavenger	(03,15,03,30,"WP_ROAST_SCAVENGER");
	TA_Sit_Campfire		(03,30,03,45,"WP_STAND");
	TA_Sit_Bench		(03,45,04,00,"WP_SIT_BENCH");
	TA_Smoke_Joint		(04,00,04,15,"WP_STAND");
	TA_Sit_Chair		(04,15,04,30,"WP_SIT_CHAIR");
	TA_Sit_Throne		(04,30,04,45,"WP_SIT_THRONE");
	TA_Smalltalk		(04,45,05,00,"WP_SMALLTALK");
	TA_Smith_Fire		(05,00,05,15,"WP_SMITH_FIRE");
	TA_Smith_Anvil		(05,15,05,30,"WP_SMITH_ANVIL");
	TA_Smith_Cool		(05,30,05,45,"WP_SMITH_COOL");
	TA_Smith_Sharp		(05,45,06,00,"WP_SMITH_SHARP");		
	TA_Sleep			(06,00,06,15,"WP_SLEEP");
	TA_Stand_ArmsCrossed(06,15,06,30,"WP_STAND");
	TA_Smoke_Waterpipe	(06,30,06,45,"WP_SMOKE_WATERPIPE");
	TA_Stand_Guarding	(06,45,07,00,"WP_STAND");
	TA_Stand_Eating		(07,00,07,15,"WP_STAND");
	TA_Spit_Fire		(07,15,07,30,"WP_STAND");
	TA_Stand_Drinking	(07,30,07,45,"WP_STAND");	
	TA_Stand_Sweeping	(07,45,08,00,"WP_STAND");
	TA_Rake_FP			(08,00,08,15,"WP_PICK");
	TA_Cook_Stove		(08,15,08,30,"WP_COOK_STOVE");
	TA_Saw				(08,30,08,45,"WP_SAW");
	TA_Pray_Innos		(08,45,09,00,"WP_PRAY_INNOS_STATUE");
	TA_Pray_Innos_FP	(09,00,09,15,"WP_PRAY");
	TA_Wash_FP			(09,15,09,30,"WP_WASH");
	TA_Stomp_Herb		(09,30,09,45,"WP_STOMP_HERB");
	TA_Pick_FP			(09,45,10,15,"WP_PICK");
	TA_Pick_FP			(10,15,24,00,"WP_PRAY");				
};

FUNC VOID Rtn_Guide_1500 ()
{
	TA_Guide_Player	(06,00,18,00,"WP_GUIDE_PLAYER");
	TA_Guide_Player	(18,00,06,00,"WP_GUIDE_PLAYER");
};

FUNC VOID Rtn_Follow_1500 ()
{
	TA_Follow_Player	(06,00,18,00,"WP_FOLLOW_PLAYER");
	TA_Follow_Player	(18,00,06,00,"WP_FOLLOW_PLAYER");
};


//*************************************************
//	Testdialoge für Followmode und Guideplayer ----
//*************************************************

//--- Exit ---

INSTANCE DIA_TA_Testmodell_EXIT(C_INFO)
{
	npc			= TA_Testmodell;
	nr			= 999;
	condition	= DIA_TA_Testmodell_EXIT_Condition;
	information	= DIA_TA_Testmodell_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_TA_Testmodell_EXIT_Condition()
{
	return TRUE;
};
 
FUNC VOID DIA_TA_Testmodell_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//--- Guideplayer ---

INSTANCE Info_TA_Testmodell_GuideStart (C_INFO)
{
	npc			= TA_Testmodell;
	nr			= 997;
	condition	= DIA_TA_Testmodell_GuideStart_Condition;
	information	= DIA_TA_Testmodell_GuideStart_Info;
	permanent	= TRUE;
	description = "Zeig mir den Guide_Player!";
};                       

FUNC INT DIA_TA_Testmodell_GuideStart_Condition()
{
	var C_NPC Testmodell;
	Testmodell = Hlp_GetNpc (TA_Testmodell);
	
	if (!Npc_IsInRoutine (self,ZS_GUIDE_PLAYER))
	{
		return 1;
	};
};
 
	FUNC VOID DIA_TA_Testmodell_GuideStart_Info()
	{	
		AI_StopProcessInfos (self);
		Npc_ExchangeRoutine (self,"Guide");
		
	};


INSTANCE Info_TA_Testmodell_GuideEnd (C_INFO)
{
	npc			= TA_Testmodell;
	nr			= 998;
	condition	= DIA_TA_Testmodell_GuideEnd_Condition;
	information	= DIA_TA_Testmodell_GuideEnd_Info;
	permanent	= TRUE;
	description = "Beende den Guide_Player!";
};                       

FUNC INT DIA_TA_Testmodell_GuideEnd_Condition()
{
	var C_NPC Testmodell;
	Testmodell = Hlp_GetNpc (TA_Testmodell);
	
	if (Npc_IsInRoutine (self,ZS_GUIDE_PLAYER))
	{
		return 1;
	};
};
 
FUNC VOID DIA_TA_Testmodell_GuideEnd_Info()
{	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"START");
};

//--- Follow_Player ---

INSTANCE Info_TA_Testmodell_FollowStart (C_INFO)
{
	npc			= TA_Testmodell;
	nr			= 995;
	condition	= DIA_TA_Testmodell_FollowStart_Condition;
	information	= DIA_TA_Testmodell_FollowStart_Info;
	permanent	= TRUE;
	description = "Folge mir!";
};                       

FUNC INT DIA_TA_Testmodell_FollowStart_Condition()
{
	var C_NPC Testmodell;
	Testmodell = Hlp_GetNpc (TA_Testmodell);
	
	if (!Npc_IsInRoutine (self,ZS_FOLLOW_PLAYER))
	{
		return 1;
	};
};
 
FUNC VOID DIA_TA_Testmodell_FollowStart_Info()
{	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"FOLLOW");
	
};


INSTANCE Info_TA_Testmodell_FollowEnd (C_INFO)
{
	npc			= TA_Testmodell;
	nr			= 998;
	condition	= DIA_TA_Testmodell_FollowEnd_Condition;
	information	= DIA_TA_Testmodell_FollowEnd_Info;
	permanent	= TRUE;
	description = "Hör auf mir zu folgen!";
};                       

FUNC INT DIA_TA_Testmodell_FollowEnd_Condition()
{
	var C_NPC Testmodell;
	Testmodell = Hlp_GetNpc (TA_Testmodell);
	
	if (Npc_IsInRoutine (self,ZS_FOLLOW_PLAYER))
	{
		return 1;
	};
};
 
FUNC VOID DIA_TA_Testmodell_FollowEnd_Info()
{	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"START");
	
};



//*********************
//	Smalltalkpartner
//*********************


instance TA_Smalltalkpartner (Npc_Default)
{
	// ------ NSC ------
	name 		= "Smalltalkpartner";
	guild 		= GIL_NONE;
	id 			= 1501;
	voice 		= 1;
	flags       = NPC_FLAG_IMMORTAL;																	//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_MAIN;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 4);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Bau_Mace);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, 0);	
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	//------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 70); //Grenzen für Talent-Level liegen bei 30 und 60
		

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_1501;
};

FUNC VOID Rtn_Start_1501 ()
{
	TA_Smalltalk		(11,00,23,00,"WP_SMALLTALK");
	TA_Smalltalk		(23,00,11,00,"WP_SMALLTALK");
};

FUNC VOID Startup_TA_Testlevel ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();

	Wld_InsertNpc (PIR_1350_Addon_Francis,"WP_SMITH_SHARP");
	Wld_InsertNpc (PIR_1351_Addon_Samuel,"WP_COOK_STOVE");
	Wld_InsertNpc (PIR_1352_Addon_AlligatorJack,"WP_SAW");
	Wld_InsertNpc (PIR_1353_Addon_Morgan,"WP_SMITH_FIRE");
	Wld_InsertNpc (PIR_1354_Addon_Henry,"WP_POTION_ALCHEMY");
	Wld_InsertNpc (PIR_1355_Addon_Skip,"WP_COOK_PAN");
	Wld_InsertNpc (PIR_1356_Addon_Bill,"WP_ROAST_SCAVENGER");
	
	Wld_InsertNpc (PAL_Zombie01,"WP_GUIDE_PLAYER");
	//Wld_InsertNpc (PAL_Zombie01,"WP_GUIDE_PLAYER");
	
	//Wld_InsertNpc (PIR_1357_Addon_Pirat,"WP_SIT_CHAIR");  		//Ersatz-Pirat
	//Wld_InsertNpc (PIR_1358_Addon_Pirat,"WP_STOMP_HERB");			//Ersatz-Pirat
	//Wld_InsertNpc (PIR_1359_Addon_Pirat,"WP_SIT_THRONE");			//Ersatz-Pirat
	//Wld_InsertNpc (PIR_1360_Addon_Pirat,"WP_SMITH_ANVIL");		//Ersatz-Pirat	
};

FUNC VOID INIT_SUB_TA_TESTLEVEL ()
{
	
};

func void INIT_TA_Testlevel ()
{
	B_InitMonsterAttitudes ();
	B_InitGuildAttitudes();
	B_InitNpcGlobals ();
	
	INIT_SUB_TA_TESTLEVEL ();
};

//***********************************
//		TestGold
//***********************************

INSTANCE Gold(C_Item)
{
	name 				=	"Ein Beutel voll Gold!";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   UseGold;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID UseGold ()
{
	CreateInvItems (self,ItMi_Gold,1000);	
	PrintScreen	("1000 Gold erhalten.", -1, 45, FONT_Screen, 2);
	Snd_Play ("Geldbeutel");
	PrintScreen	("Cheater Malus: -100 EXP", -1, 55, FONT_Screen, 2);
	if hero.exp >= 100
	{
		hero.exp = hero.exp - 100;
	}
	else
	{
		hero.exp = 0;
	};	
};

//***********************************
//		Armor
//***********************************

INSTANCE Armor(C_Item)
{
	name 				=	"Ein Beutel voller Rüstungen!";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   UseArmor;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID UseArmor ()
{
	Snd_Play ("Geldbeutel");

	CreateInvItem(self,ITAR_Governor);
	CreateInvItem(self,ITAR_Smith);
	CreateInvItem(self,ITAR_Barkeeper);
	CreateInvItem(self,ITAR_Judge);
	CreateInvItem(self,ITAR_VLK_L);
	CreateInvItem(self,ITAR_VLK_M);
	CreateInvItem(self,ITAR_VLK_H);
	CreateInvItem(self,ITAR_VLKBabe_L);
	CreateInvItem(self,ITAR_VLKBabe_M);
	CreateInvItem(self,ITAR_VLKBabe_H);
	CreateInvItem(self,ITAR_MIL_L);
	CreateInvItem(self,ITAR_MIL_M);
	CreateInvItem(self,ITAR_PAL_M);
	CreateInvItem(self,ITAR_PAL_H);
	CreateInvItem(self,ITAR_PAL_SKEL);
	
	CreateInvItem(self,ITAR_Bau_L);
	CreateInvItem(self,ITAR_Bau_M);
	CreateInvItem(self,ITAR_BauBabe_L);
	CreateInvItem(self,ITAR_BauBabe_M);
	CreateInvItem(self,ITAR_SLD_L);
	CreateInvItem(self,ITAR_SLD_M);
	CreateInvItem(self,ITAR_SLD_H);
	
	CreateInvItem(self,ITAR_NOV_L);
	CreateInvItem(self,ITAR_KDF_L);
	CreateInvItem(self,ITAR_KDF_H);
	
	CreateInvItem(self,ITAR_Leather_L);
	CreateInvItem(self,ITAR_BDT_M);
	CreateInvItem(self,ITAR_BDT_H);
	
	CreateInvItem(self,ITAR_DJG_L);
	CreateInvItem(self,ITAR_DJG_M);
	CreateInvItem(self,ITAR_DJG_H);
	CreateInvItem(self,ITAR_DJG_Crawler);
		
	CreateInvItem(self,ITAR_XARDAS);
	CreateInvItem(self,ITAR_LESTER);
	CreateInvItem(self,ITAR_DIEGO);
	CreateInvItem(self,ITAR_CorAngar);
	CreateInvItem(self,ITAR_KDW_H);
	CreateInvItem(self,ITAR_Dementor);
	CreateInvItem(self,ITAR_Prisoner);
	
	//Addon
	CreateInvItem(self,ITAR_PIR_L_Addon);
	CreateInvItem(self,ITAR_PIR_M_Addon);
	CreateInvItem(self,ITAR_PIR_H_Addon);
	CreateInvItem(self,ITAR_Thorus_Addon);
	CreateInvItem(self,ITAR_Raven_Addon);
	CreateInvItem(self,ITAR_OreBaron_Addon);
	CreateInvItem(self,ITAR_RANGER_Addon);
	CreateInvItem(self,ITAR_KDW_L_Addon);
	CreateInvItem(self,ITAR_Bloodwyn_Addon);
};


// **********************
// Runenbrief
// **********************
instance Runenbrief (C_Item)
{	
	name 				=	"Runenbrief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseHosh1;
	scemeName			=	"MAP";
	description			=   "Gibt dir alle Addon-Runen";
};
func void UseHosh1 ()
{   
	CreateInvItems (self,ItRu_Waterfist,1);
	CreateInvItems (self,ItRu_Icelance,1);
	CreateInvItems (self,ItRu_Whirlwind,1);
	CreateInvItems (self,ItRu_Geyser,1);
	CreateInvItems (self,ItRu_Thunderstorm,1);
	
	CreateInvItems (self,ItSC_Waterfist,1);
	CreateInvItems (self,ItSC_Icelance,1);
	CreateInvItems (self,ItSC_Whirlwind,1);
	CreateInvItems (self,ItSc_Geyser,1);
	CreateInvItems (self,ItSc_Thunderstorm,1);
	
	CreateInvItems (self,ItRu_BeliarsRage,1);
	CreateInvItems (self,ItRu_SuckEnergy,1);
	CreateInvItems (self,ItRu_GreenTentacle,1);
	CreateInvItems (self,ItRu_Swarm,1);
	CreateInvItems (self,ItRu_Skull,1);
	CreateInvItems (self,ItRu_SummonZombie,1);
	CreateInvItems (self,ItRu_SummonGuardian,1);
};

INSTANCE EnterBanditCamp (C_Item)
{	
	name 				=	"Komm ins BanditCamp";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseHosh2;
	scemeName			=	"MAP";
	description			=   "Setzt Player_HasTalkedToBanditCamp";
};
func void UseHosh2 ()
{   
	Player_HasTalkedToBanditCamp = TRUE;
};

INSTANCE PH (C_Item)
{	
	name 				=	"Gimme Magic";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePatrickHelper;
	scemeName			=	"MAP";
	description			=   "Kleine Magietestumgebung";
};
func void UsePatrickHelper ()
{   
	self.attribute[ATR_MANA_MAX] =		400;
	self.attribute[ATR_MANA] =			400;
	
	Npc_SetTalentSkill	(self, NPC_TALENT_MAGE, 			6);
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKLOCK, 		1); //hängt ab von DEX (auf Programmebene)
	Npc_SetTalentSkill	(self, NPC_TALENT_SNEAK, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ACROBAT, 			0);
	
	Npc_SetTalentSkill	(self, NPC_TALENT_PICKPOCKET, 		1);	//hängt ab von DEX (auf Scriptebene)
	Npc_SetTalentSkill	(self, NPC_TALENT_SMITH, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_RUNES, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_ALCHEMY, 			1);
	Npc_SetTalentSkill	(self, NPC_TALENT_TAKEANIMALTROPHY,	1);
	
	PLAYER_TALENT_ALCHEMY[POTION_Health_01]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Health_02]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Health_03]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Mana_01]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Mana_02]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Mana_03]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Speed]			= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Perm_STR]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana]		= TRUE; 
	PLAYER_TALENT_ALCHEMY[POTION_Perm_Health]	= TRUE; 

	PLAYER_TALENT_SMITH[WEAPON_Common] 			= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_02]	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] 	= TRUE;
	PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] 	= TRUE;

	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws]			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] 				= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] 			= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CrawlerPlate] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] 	= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonScale] 		= TRUE;
	PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DragonBlood] 		= TRUE;
	
	PLAYER_TALENT_RUNES[SPL_LIGHT] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firebolt] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Icebolt] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_LightHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] 	= TRUE;
	PLAYER_TALENT_RUNES[SPL_InstantFireball] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Zap] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonWolf] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_WINDFIST] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Sleep] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_MediumHeal] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_LightningFlash] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_ChargeFireball] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonSkeleton] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Fear] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceCube] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ChargeZap] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonGolem] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_DestroyUndead] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Pyrokinesis] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firestorm] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_IceWave] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_SummonDemon] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_FullHeal] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Firerain] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_BreathOfDeath] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_MassDeath] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_ArmyOfDarkness] 		= TRUE;
	PLAYER_TALENT_RUNES[SPL_Shrink] 				= TRUE;
	
	
	PLAYER_TALENT_RUNES[SPL_Whirlwind] 				= TRUE;
	PLAYER_TALENT_RUNES[SPL_Geyser] 				= TRUE;
	
	PLAYER_TALENT_RUNES[SPL_Greententacle] 			= TRUE;
	PLAYER_TALENT_RUNES[SPL_Swarm] 					= TRUE;
	PLAYER_TALENT_RUNES[SPL_Waterfist] 				= TRUE;
	


	CreateInvItem(self,ItRu_Whirlwind);
	CreateInvItem(self,ItRu_Geyser);
	
	CreateInvItem(self,ItRu_Greententacle);
	CreateInvItem(self,ItRu_Swarm);
	CreateInvItem(self,ItRu_Waterfist);
};

INSTANCE Hosh4 (C_ITEM) 
{	
	name 					=	"Greg ist Back";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	0;

	visual 					=	"ItWr_Book_01.3ds";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tagebuch";
	TEXT	[0]				=	"Das Tagebuch von Hoshi";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseHoshiTagebuch;
};

FUNC VOID UseHoshiTagebuch()
{   
	GregIsBack_S1 ();
};


