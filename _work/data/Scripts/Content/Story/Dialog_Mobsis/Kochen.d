FUNC VOID WorldCallback_Cook_S1()
{
	var C_NPC her;
	
	her = Hlp_GetNpc(PC_Hero); 
	
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_COOK;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************
//	Kochen Dialog abbrechen
//*******************************************************
INSTANCE PC_Cook_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_Cook_End_Condition;
	information		= PC_Cook_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_Cook_End_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_COOK)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Cook_End_Info()
{	
	B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
//	Fleischsuppe kochen
//*******************************************************
INSTANCE PC_Cook_MeatSoup (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_Cook_MeatSoup_Condition;
	information		= PC_Cook_MeatSoup_Info;
	permanent		= TRUE;
	description		= "Fleischsuppe kochen (1x gebratenes Fleisch, 1x Wasser)"; 
};

FUNC INT PC_Cook_MeatSoup_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_COOK)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Cook_MeatSoup_Info()
{
	if(Npc_HasItems(self, ItFoMutton) >= 1 && Npc_HasItems(self, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems(self, ItFoMutton, 1);
		Npc_RemoveInvItems(self, ItFo_Water, 1);
		CreateInvItems(self, Item_Food_MeatSoup, 1);
		PrintScreen("Fleischsuppe gekocht...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		PrintScreen("Nicht genügend Zutaten...", -1, -1, FONT_ScreenSmall, 2);
	};
};

//*******************************************************
//	Fischsuppe kochen
//*******************************************************
INSTANCE PC_Cook_FishSoup (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_Cook_FishSoup_Condition;
	information		= PC_Cook_FishSoup_Info;
	permanent		= TRUE;
	description		= "Fischsuppe kochen (1x Fisch, 1x Wasser)"; 
};

FUNC INT PC_Cook_FishSoup_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_COOK)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Cook_FishSoup_Info()
{
	if(Npc_HasItems(self, ItFo_Fish) >= 1 && Npc_HasItems(self, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems(self, ItFo_Fish, 1);
		Npc_RemoveInvItems(self, ItFo_Water, 1);
		CreateInvItems(self, ItFo_FishSoup, 1);
		PrintScreen("Fischsuppe gekocht...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		PrintScreen("Nicht genügend Zutaten...", -1, -1, FONT_ScreenSmall, 2);
	};
};

//*******************************************************
//	Eintopf kochen
//*******************************************************
INSTANCE PC_Cook_StewSoup (C_Info)
{
	npc				= PC_Hero;
	nr				= 3;
	condition		= PC_Cook_StewSoup_Condition;
	information		= PC_Cook_StewSoup_Info;
	permanent		= TRUE;
	description		= "Eintopf kochen (1x Brot, 1x Wasser)"; 
};

FUNC INT PC_Cook_StewSoup_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_COOK)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Cook_StewSoup_Info()
{
	if(Npc_HasItems(self, ItFo_Bread) >= 1 && Npc_HasItems(self, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems(self, ItFo_Bread, 1);
		Npc_RemoveInvItems(self, ItFo_Water, 1);
		CreateInvItems(self, ItFo_Stew, 1);
		PrintScreen("Eintopf gekocht...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		PrintScreen("Nicht genügend Zutaten...", -1, -1, FONT_ScreenSmall, 2);
	};
};

//*******************************************************
//	Pilzeintopf kochen
//*******************************************************
INSTANCE PC_Cook_MushroomStewSoup (C_Info)
{
	npc				= PC_Hero;
	nr				= 4;
	condition		= PC_Cook_MushroomStewSoup_Condition;
	information		= PC_Cook_MushroomStewSoup_Info;
	permanent		= TRUE;
	description		= "Pilzeintopf kochen (1x Buddlerfleisch, 1x Brot, 1x Wasser)"; 
};

FUNC INT PC_Cook_MushroomStewSoup_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_COOK)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Cook_MushroomStewSoup_Info()
{
	if(Npc_HasItems(self, ItPl_Mushroom_02) >= 1 && Npc_HasItems(self, ItFo_Bread) >= 1 && Npc_HasItems(self, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems(self, ItPl_Mushroom_02, 1);
		Npc_RemoveInvItems(self, ItFo_Bread, 1);
		Npc_RemoveInvItems(self, ItFo_Water, 1);
		CreateInvItems(self, Item_Food_MushroomStew, 1);
		PrintScreen("Pilzeintopf gekocht...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		PrintScreen("Nicht genügend Zutaten...", -1, -1, FONT_ScreenSmall, 2);
	};
};