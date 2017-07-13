FUNC VOID WorldCallback_UsePan_S1()
{
	var C_NPC her;
	
	her = Hlp_GetNpc(PC_Hero); 
	
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		CreateInvItems(self, ItFoMuttonRaw, 1); //mobsi deletes one
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_BRATEN;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************
//	Braten Dialog abbrechen
//*******************************************************
INSTANCE PC_Braten_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_Braten_End_Condition;
	information		= PC_Braten_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_Braten_End_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_BRATEN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Braten_End_Info()
{	
	B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//	1 Fleischst�ck braten
//*******************************************************
INSTANCE PC_Braten_1Stck (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_Braten_1Stck_Condition;
	information		= PC_Braten_1Stck_Info;
	permanent		= TRUE;
	description		= "1 Fleischst�ck braten"; 
};

FUNC INT PC_Braten_1Stck_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_BRATEN && Npc_HasItems(self, ItFoMuttonRaw) >= 1)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Braten_1Stck_Info()
{
	Npc_RemoveInvItems(self, ItFoMuttonRaw, 1);
	CreateInvItems(self, ItFoMutton, 1);
	PrintScreen("1 Fleischst�ck gebraten...", -1, -1, FONT_ScreenSmall, 2);
};

//*******************************************************
//	2 Fleischst�ck braten
//*******************************************************
INSTANCE PC_Braten_2Stck (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_Braten_2Stck_Condition;
	information		= PC_Braten_2Stck_Info;
	permanent		= TRUE;
	description		= "2 Fleischst�ck braten"; 
};

FUNC INT PC_Braten_2Stck_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_BRATEN && Npc_HasItems(self, ItFoMuttonRaw) >= 2)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Braten_2Stck_Info()
{
	Npc_RemoveInvItems(self, ItFoMuttonRaw, 2);
	CreateInvItems(self, ItFoMutton, 2);
	PrintScreen("2 Fleischst�ck gebraten...", -2, -2, FONT_ScreenSmall, 2);
};

//*******************************************************
//	5 Fleischst�cke braten
//*******************************************************
INSTANCE PC_Braten_5Stck (C_Info)
{
	npc				= PC_Hero;
	nr				= 3;
	condition		= PC_Braten_5Stck_Condition;
	information		= PC_Braten_5Stck_Info;
	permanent		= TRUE;
	description		= "5 Fleischst�cke braten"; 
};

FUNC INT PC_Braten_5Stck_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_BRATEN && Npc_HasItems(self, ItFoMuttonRaw) >= 5)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Braten_5Stck_Info()
{
	Npc_RemoveInvItems(self, ItFoMuttonRaw, 5);
	CreateInvItems(self, ItFoMutton, 5);
	PrintScreen("5 Fleischst�cke gebraten...", -1, -1, FONT_ScreenSmall, 2);
};

//*******************************************************
//	10 Fleischst�cke braten
//*******************************************************
INSTANCE PC_Braten_10Stck (C_Info)
{
	npc				= PC_Hero;
	nr				= 4;
	condition		= PC_Braten_10Stck_Condition;
	information		= PC_Braten_10Stck_Info;
	permanent		= TRUE;
	description		= "10 Fleischst�cke braten"; 
};

FUNC INT PC_Braten_10Stck_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_BRATEN && Npc_HasItems(self, ItFoMuttonRaw) >= 10)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Braten_10Stck_Info()
{
	Npc_RemoveInvItems(self, ItFoMuttonRaw, 10);
	CreateInvItems(self, ItFoMutton, 10);
	PrintScreen("10 Fleischst�cke gebraten...", -1, -1, FONT_ScreenSmall, 2);
};

//*******************************************************
//	20 Fleischst�cke braten
//*******************************************************
INSTANCE PC_Braten_20Stck (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Braten_20Stck_Condition;
	information		= PC_Braten_20Stck_Info;
	permanent		= TRUE;
	description		= "20 Fleischst�cke braten"; 
};

FUNC INT PC_Braten_20Stck_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_BRATEN && Npc_HasItems(self, ItFoMuttonRaw) >= 20)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Braten_20Stck_Info()
{
	Npc_RemoveInvItems(self, ItFoMuttonRaw, 20);
	CreateInvItems(self, ItFoMutton, 20);
	PrintScreen("20 Fleischst�cke gebraten...", -1, -1, FONT_ScreenSmall, 2);
};