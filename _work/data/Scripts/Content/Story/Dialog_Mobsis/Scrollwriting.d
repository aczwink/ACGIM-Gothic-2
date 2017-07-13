func int WORLDCALLBACK_SCROLLWRITE_CONDITION() //Must be in capital letters!!!!!!!!!!!!!!
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		if(Npc_GetTalentSkill(self, NPC_TALENT_MAGE) < 1)
		{
			Print("Davon verstehe ich nichts...");
			return FALSE;
		};
		
		if(Npc_HasItems(self, Item_Misc_BlankScroll) == 0)
		{
			PLAYER_MOB_MISSING_ITEM();
			return FALSE;
		};
	};
	
	return TRUE;
};

func void WorldCallback_ScrollWrite_OnStart_S1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_WRITESCROLLS;
		Ai_ProcessInfos(self);
	};
};

//*******************************************************
//	MakeScrolls Dialog abbrechen
//*******************************************************
INSTANCE PC_MakeScrolls_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_MakeScrolls_End_Condition;
	information		= PC_MakeScrolls_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_MakeScrolls_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_WRITESCROLLS)
	{	
		return TRUE;
	};
};

FUNC VOID PC_MakeScrolls_End_Info()
{
	CreateInvItems (self, ItMi_RuneBlank,1);
	B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
// Spruchrollen- Erschaffung Dialoge
//---------------------------
//*******************************************************
INSTANCE PC_ScrollWriting_Circle_01 (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_ScrollWriting_Circle_01_Condition;
	information		= PC_ScrollWriting_Circle_01_Info;
	permanent		= TRUE;
	description		= "Spruchrollen Kreis 1 schreiben"; 
};

FUNC INT PC_ScrollWriting_Circle_01_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WRITESCROLLS && Npc_GetTalentSkill(self, NPC_TALENT_MAGE) >= 1)
	{	
		return TRUE;
	};
};

FUNC VOID PC_ScrollWriting_Circle_01_Info()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_01);
	
	Info_AddChoice 	  (PC_ScrollWriting_Circle_01,DIALOG_BACK,PC_ScrollWriting_Circle_01_BACK);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_01,NAME_SPL_LIGHT,PC_ItSc_Light_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_01,NAME_SPL_Firebolt,PC_ItSc_Firebolt_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_01,NAME_SPL_Zap,PC_ItSc_Zap_Info); 
	Info_AddChoice 	  (PC_ScrollWriting_Circle_01,NAME_SPL_LightHeal,PC_ItSc_LightHeal_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_01,NAME_SPL_SummonGoblinSkeleton,PC_ItSc_SumGobSkel_Info);
};

FUNC VOID PC_ScrollWriting_Circle_01_BACK()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_01);
};
//*******************************************************
INSTANCE PC_ScrollWriting_Circle_02 (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_ScrollWriting_Circle_02_Condition;
	information		= PC_ScrollWriting_Circle_02_Info;
	permanent		= TRUE;
	description		= "Spruchrollen Kreis 2 schreiben"; 
};
FUNC INT PC_ScrollWriting_Circle_02_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WRITESCROLLS && Npc_GetTalentSkill(self, NPC_TALENT_MAGE) >= 2)
	{	
		return TRUE;
	};
};
FUNC VOID PC_ScrollWriting_Circle_02_Info()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_02);
	
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,DIALOG_BACK,PC_ScrollWriting_Circle_02_BACK);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_InstantFireball,PC_ItSc_InstFireball_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_Icebolt,PC_ItSc_Icebolt_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_SummonWolf,PC_ItSc_SumWolf_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_WINDFIST,PC_ItSc_Windfist_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_Sleep,PC_ItSc_Sleep_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_Whirlwind,PC_ItSc_Whirlwind_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_02,NAME_SPL_IceLance,PC_ItSc_Icelance_Info);
};

FUNC VOID PC_ScrollWriting_Circle_02_BACK()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_02);
};
//*******************************************************
INSTANCE PC_ScrollWriting_Circle_03 (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_ScrollWriting_Circle_03_Condition;
	information		= PC_ScrollWriting_Circle_03_Info;
	permanent		= TRUE;
	description		= "Spruchrollen Kreis 3 schreiben"; 
};
FUNC INT PC_ScrollWriting_Circle_03_Condition ()
{	
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WRITESCROLLS && Npc_GetTalentSkill(self, NPC_TALENT_MAGE) >= 3)
	{	
		return TRUE;
	};
};
FUNC VOID PC_ScrollWriting_Circle_03_Info()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_03);
	
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,DIALOG_BACK,PC_ScrollWriting_Circle_03_BACK);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_MediumHeal,PC_ItSc_MediumHeal_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_SummonSkeleton,PC_ItSc_SumSkel_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_Fear,PC_ItSc_Fear_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_IceCube,PC_ItSc_IceCube_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_ChargeZap,PC_ItSc_ThunderBall_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_Firestorm,PC_ItSc_Firestorm_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_Geyser,PC_ItSc_Geyser_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_03,NAME_SPL_Thunderstorm,PC_ItSc_thunderstorm_Info);
};

FUNC VOID PC_ScrollWriting_Circle_03_BACK()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_03);
};
//*******************************************************
INSTANCE PC_ScrollWriting_Circle_04 (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_ScrollWriting_Circle_04_Condition;
	information		= PC_ScrollWriting_Circle_04_Info;
	permanent		= TRUE;
	description		= "Spruchrollen Kreis 4 schreiben"; 
};
FUNC INT PC_ScrollWriting_Circle_04_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WRITESCROLLS && Npc_GetTalentSkill(self, NPC_TALENT_MAGE) >= 4)
	{	
		return TRUE;
	};
};
FUNC VOID PC_ScrollWriting_Circle_04_Info()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_04);
	
	Info_AddChoice 	  (PC_ScrollWriting_Circle_04,DIALOG_BACK,PC_ScrollWriting_Circle_04_BACK);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_04,NAME_SPL_SummonGolem,PC_ItSc_SumGol_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_04,NAME_SPL_DestroyUndead,PC_ItSc_HarmUndead_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_04,NAME_SPL_ChargeFireball,PC_ItSc_ChargeFireball_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_04,NAME_SPL_LightningFlash,PC_ItSc_LightningFlash_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_04,NAME_SPL_Waterfist,PC_ItSc_Waterfist_Info);
};

FUNC VOID PC_ScrollWriting_Circle_04_BACK()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_04);
};
//*******************************************************
INSTANCE PC_ScrollWriting_Circle_05 (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_ScrollWriting_Circle_05_Condition;
	information		= PC_ScrollWriting_Circle_05_Info;
	permanent		= TRUE;
	description		= "Spruchrollen Kreis 5 schreiben"; 
};
FUNC INT PC_ScrollWriting_Circle_05_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WRITESCROLLS && Npc_GetTalentSkill(self, NPC_TALENT_MAGE) >= 5)
	{	
		return TRUE;
	};
};

FUNC VOID PC_ScrollWriting_Circle_05_Info()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_05);
	
	Info_AddChoice 	  (PC_ScrollWriting_Circle_05,DIALOG_BACK,PC_ScrollWriting_Circle_05_BACK);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_05,NAME_SPL_IceWave,PC_ItSc_IceWave_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_05,NAME_SPL_SummonDemon,PC_ItSc_SumDemon_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_05,NAME_SPL_FullHeal,PC_ItSc_FullHeal_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_05,NAME_SPL_Pyrokinesis,PC_ItSc_Pyrokinesis_Info);
};

FUNC VOID PC_ScrollWriting_Circle_05_BACK()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_05);
};

//*******************************************************
INSTANCE PC_ScrollWriting_Circle_06 (C_Info)
{
	npc				= PC_Hero;
	condition		= PC_ScrollWriting_Circle_06_Condition;
	information		= PC_ScrollWriting_Circle_06_Info;
	permanent		= TRUE;
	description		= "Spruchrollen Kreis 6 schreiben"; 
};

FUNC INT PC_ScrollWriting_Circle_06_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WRITESCROLLS && Npc_GetTalentSkill(self, NPC_TALENT_MAGE) >= 6)
	{	
		return TRUE;
	};
};

FUNC VOID PC_ScrollWriting_Circle_06_Info()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_06);
	
	Info_AddChoice 	  (PC_ScrollWriting_Circle_06,DIALOG_BACK,PC_ScrollWriting_Circle_06_BACK);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_06,NAME_SPL_Firerain,PC_ItSc_Firerain_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_06,NAME_SPL_BreathOfDeath,PC_ItSc_BreathOfDeath_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_06,NAME_SPL_MassDeath,PC_ItSc_MassDeath_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_06,NAME_SPL_ArmyOfDarkness,PC_ItSc_ArmyOfDarkness_Info);
	Info_AddChoice 	  (PC_ScrollWriting_Circle_06,NAME_SPL_Shrink,PC_ItSc_Shrink_Info);
};

FUNC VOID PC_ScrollWriting_Circle_06_BACK()
{
	Info_ClearChoices (PC_ScrollWriting_Circle_06);
};


//*******************************************************
FUNC VOID PC_ItSc_Light_Info ()
{
	if(Npc_HasItems (hero, ItMi_Gold)  >= 1 && Npc_HasItems(hero, Item_Misc_BlankScroll) >= 1)
	{
		Npc_RemoveInvItems  (hero,ItMI_Gold, 1);
		Npc_RemoveInvItems(hero, Item_Misc_BlankScroll, 1);
		
		CreateInvItems 	   (hero,ItSc_Light,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_Firebolt_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Sulfur)   >= 1)
	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Sulfur, 1);
		
		CreateInvItems 	    (hero,ItSc_Firebolt,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_LightHeal_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItPl_Health_Herb_01) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItPl_Health_Herb_01,1);
		
		
		CreateInvItems 	   (hero,ItSc_LightHeal,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_SumGobSkel_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItAt_GoblinBone) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItAt_GoblinBone, 1);
		
		
		CreateInvItems 	    (hero,ItSc_SumGobSkel,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_Zap_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Rockcrystal) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Rockcrystal,1);
	
		
		CreateInvItems 	   (hero,ItSc_Zap,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
FUNC VOID PC_ItSc_InstFireball_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Pitch,1);
		
		
		CreateInvItems 	   (hero,ItSc_InstantFireball,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
FUNC VOID PC_ItSc_Icebolt_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Quartz)  >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Quartz,1);

		
		CreateInvItems 	   (hero,ItSc_Icebolt,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
FUNC VOID PC_ItSc_SumWolf_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItAt_WolfFur) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItAt_WolfFur,  1);
		
		CreateInvItems	   (hero,ItSc_SumWolf,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_Windfist_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Coal) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Coal, 	 1);

		
		CreateInvItems 	   (hero,ItSc_Windfist,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_Sleep_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItPl_Swampherb) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItPl_Swampherb, 1);
		
		CreateInvItems 	   (hero,ItSc_Sleep,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_MediumHeal_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItPl_Health_Herb_02) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItPl_Health_Herb_02,  1);
		
		CreateInvItems 	   (hero,ItSc_MediumHeal,1); 
		Print (PRINT_ScrollSuccess);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_LightningFlash_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Rockcrystal) >= 1)	
	&& (Npc_HasItems (hero, ItMi_Quartz) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Rockcrystal,    1);
		Npc_RemoveInvItems  (hero,ItMi_Quartz,1	);
		
		CreateInvItems 	   (hero,ItSc_LightningFlash,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_ChargeFireball_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Sulfur) >= 1)	
	&& (Npc_HasItems (hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Sulfur,1	);
		Npc_RemoveInvItems  (hero,ItMi_Pitch,1);
		
		CreateInvItem 	   (hero,ItSc_ChargeFireball); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_SumSkel_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItAt_SkeletonBone) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItAt_SkeletonBone,1	);
		
		CreateInvItems 	   (hero,ItSc_SumSkel,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_Fear_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_DarkPearl) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl,1	);
		
		CreateInvItems 	   (hero,ItSc_Fear,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_IceCube_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems (hero, ItMi_Aquamarine) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Quartz,1	);
		Npc_RemoveInvItems  (hero,ItMi_Aquamarine,1	);
		
		CreateInvItems 	   (hero,ItSc_IceCube,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_ThunderBall_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Rockcrystal) >= 1)	
	&& (Npc_HasItems (hero, ItMi_Sulfur) 	  >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Rockcrystal,	1);
		Npc_RemoveInvItems  (hero,ItMi_Sulfur,  	1);
		
		CreateInvItems 	   (hero,ItSc_ThunderBall,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_SumGol_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItAt_StoneGolemHeart) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItAt_StoneGolemHeart,1);
		
		
		CreateInvItems 	   (hero,ItSc_SumGol,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_HarmUndead_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_HolyWater)  >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_HolyWater,  1);
		
		
		CreateInvItems 	   (hero,ItSc_HarmUndead,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
FUNC VOID PC_ItSc_Pyrokinesis_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems (hero, ItAt_WaranFiretongue) >= 1)		
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Sulfur,1	);
		Npc_RemoveInvItems  (hero,ItAt_WaranFiretongue,1);
		
		CreateInvItems 	   (hero,ItSc_Pyrokinesis,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_Firestorm_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Pitch) >= 1)
	&& (Npc_HasItems (hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 		1);
		Npc_RemoveInvItems  (hero,ItMi_Pitch, 			1);
		Npc_RemoveInvItems  (hero,ItMi_Sulfur, 			1);
	
		CreateInvItems 	   (hero,ItSc_Firestorm,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_IceWave_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItMi_Quartz) 	 >= 1)	
	&& (Npc_HasItems (hero, ItMi_Aquamarine) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll,   1);
		Npc_RemoveInvItems  (hero,ItMi_Quartz,    1);
		Npc_RemoveInvItems  (hero,ItMi_Aquamarine,1);
		
		CreateInvItems 	   (hero,ItSc_IceWave,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_SumDemon_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItAt_DemonHeart) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItAt_DemonHeart,1);
		
		CreateInvItems 	   (hero,ItSc_SumDemon,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_FullHeal_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 		 >= 1)
	&& (Npc_HasItems (hero, ItPl_Health_Herb_03) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItPl_Health_Herb_03,1	);
		
		CreateInvItems 	   (hero,ItSc_FullHeal,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_Firerain_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll)  >= 1)
	&& (Npc_HasItems (hero, ItMi_Pitch) 	>= 1)
	&& (Npc_HasItems (hero, ItMi_Sulfur) 	>= 1)		
	&& (Npc_HasItems (hero, ItAt_WaranFiretongue) >= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Pitch,	 1);
		Npc_RemoveInvItems  (hero,ItAt_WaranFiretongue,	1);
		
		CreateInvItems 	   (hero,ItSc_Firerain,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
FUNC VOID PC_ItSc_BreathOfDeath_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) >= 1)
	&& (Npc_HasItems (hero, ItMi_Coal) 			>= 1)
	&& (Npc_HasItems (hero, ItMi_DarkPearl) 	>= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 1);
		Npc_RemoveInvItems  (hero,ItMi_Coal,	 1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl,1);
		
		CreateInvItems 	   (hero,ItSc_BreathOfDeath,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();			
};
//*******************************************************
FUNC VOID PC_ItSc_MassDeath_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	  >= 1)
	&& (Npc_HasItems (hero, ItAt_SkeletonBone) 	  >= 1)
	&& (Npc_HasItems (hero, ItMi_DarkPearl) 	  >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	1);
		Npc_RemoveInvItems  (hero,ItAt_SkeletonBone,1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl,	1);
		
		CreateInvItems 	   (hero,ItSc_MassDeath,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
FUNC VOID PC_ItSc_ArmyOfDarkness_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll)		>= 1)
	&& (Npc_HasItems (hero, ItAt_SkeletonBone)			>= 1)	
	&& (Npc_HasItems (hero, ItMi_DarkPearl) 			>= 1)	
	&& (Npc_HasItems (hero, ItAt_StoneGolemHeart) 		>= 1)	
	&& (Npc_HasItems (hero, ItAt_DemonHeart) 			>= 1)
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 		1);
		Npc_RemoveInvItems  (hero,ItAt_SkeletonBone,		1);
		Npc_RemoveInvItems  (hero,ItMi_DarkPearl,			1);
		Npc_RemoveInvItems  (hero,ItAt_StoneGolemHeart,		1);
		Npc_RemoveInvItems  (hero,ItAt_DemonHeart,			1);
		
		CreateInvItems 	   (hero,ItSc_ArmyOfDarkness,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG ();	
}; 
//*******************************************************
FUNC VOID PC_ItSc_Shrink_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItAt_GoblinBone) >= 1)	
	&& (Npc_HasItems (hero, ItAt_TrollTooth) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	  1 );
		Npc_RemoveInvItems  (hero,ItAt_GoblinBone,1	);
		Npc_RemoveInvItems  (hero,ItAt_TrollTooth,1	);
		
		CreateInvItems 	   (hero,ItSc_Shrink,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};

//##########################################
//			Addon
//##########################################


FUNC VOID PC_ItSc_Whirlwind_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItAt_Wing) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	  1 );
		Npc_RemoveInvItems  (hero,ItAt_Wing,1	);
		
		CreateInvItems 	   (hero,ItSc_Whirlwind,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};

FUNC VOID PC_ItSc_Icelance_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItMi_Quartz) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	  1 );
		Npc_RemoveInvItems  (hero,ItMi_Quartz,1	);
		
		CreateInvItems 	   (hero,ItSc_Icelance,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};

FUNC VOID PC_ItSc_Thunderstorm_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItMi_Quartz) >= 1)	
	&& (Npc_HasItems (hero, ItAt_Wing) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	  1 );
		Npc_RemoveInvItems  (hero,ItMi_Quartz,1	);
		Npc_RemoveInvItems  (hero,ItAt_Wing,1	);
		
		CreateInvItems 	   (hero,ItSc_Thunderstorm,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};

FUNC VOID PC_ItSc_Geyser_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItMi_Aquamarine) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	  1 );
		Npc_RemoveInvItems  (hero,ItMi_Aquamarine,1	);
		
		CreateInvItems 	   (hero,ItSc_Geyser,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};

FUNC VOID PC_ItSc_Waterfist_Info ()
{
	if (Npc_HasItems (hero, Item_Misc_BlankScroll) 	 >= 1)
	&& (Npc_HasItems (hero, ItMi_Aquamarine) >= 1)	
	&& (Npc_HasItems (hero, ItMi_Rockcrystal) >= 1)	
	{
		Npc_RemoveInvItems  (hero,Item_Misc_BlankScroll, 	  1 );
		Npc_RemoveInvItems  (hero,ItMi_Aquamarine,1	);
		Npc_RemoveInvItems  (hero,ItMi_Rockcrystal,1	);
		
		CreateInvItems 	   (hero,ItSc_Waterfist,1); 
		Print (PRINT_ScrollSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};