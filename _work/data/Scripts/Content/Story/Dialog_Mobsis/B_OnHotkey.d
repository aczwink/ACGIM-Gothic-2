////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///		Script functions for HOTKEYS (called by the engine)
///
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
//
//	GAME_SCREEN_MAP
//

func int B_GetBestPlayerMap()
{
	if(CurrentLevel == NEWWORLD_ZEN)
	{
		if(Kapitel >= 4)
		{
			if(Npc_HasItems(hero, ItWr_Map_Orcelite_MIS) >= 1)
			{
				return ItWr_Map_Orcelite_MIS;
			};
		};
		if(Kapitel >= 3)
		{
			if (Npc_HasItems(hero, ItWr_Map_Shrine_MIS) >= 1)
			{
				return ItWr_Map_Shrine_MIS;
			};
			if (Npc_HasItems(hero, ItWr_ShatteredGolem_MIS) >= 1)
			{
				return ItWr_ShatteredGolem_MIS;
			};
		};
		if(Kapitel <= 3)
		{
			if(Npc_HasItems(hero, ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
			{
				return ItWr_Map_NewWorld_Ornaments_Addon;
			};
			if (Npc_HasItems(hero, ItWr_Map_NewWorld_Dexter) >= 1)
			{
				return ItWr_Map_NewWorld_Dexter;
			};
		};
		
		if(Npc_HasItems(hero, ItWr_Map_Caves_MIS) >= 1)
		{
			return ItWr_Map_Caves_MIS;
		};
		//default
		if(Npc_HasItems(hero, ItWr_Map_NewWorld) >= 1)
		{
			return ItWr_Map_NewWorld;
		};
		if(Npc_HasItems(hero, ItWr_Map_NewWorld_City) >= 1)
		{
			return ItWr_Map_NewWorld_City;
		};
	}
	else if (CurrentLevel == OLDWORLD_ZEN)
	{
		if(Kapitel == 2)
		{
			if(Npc_HasItems(hero, ItWr_Map_OldWorld_Oremines_MIS) >= 1)
			{
				return ItWr_Map_OldWorld_Oremines_MIS;
			};
		};
		
		if(Npc_HasItems(hero, ItWr_Map_OldWorld) >= 1)
		{
			return ItWr_Map_OldWorld;
		};
	}
	else if (CurrentLevel == DRAGONISLAND_ZEN)
	{
		// none
	}
	else if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if(Npc_HasItems(hero, ItWr_Addon_TreasureMap) >= 1)
		{
			return ItWr_Addon_TreasureMap;
		};
		if(Npc_HasItems(hero, ItWr_Map_AddonWorld) >= 1)
		{
			return ItWr_Map_AddonWorld;
		};
	};
	
	return 0;
};

func int PLAYER_HOTKEY_SCREEN_MAP()
{
	var int mapID;
	
	mapID = B_GetPlayerMap();
	
	//check if saved map is in inventory	
	if ((mapID > 0) && (Npc_HasItems(hero, mapID) < 1))
	{
		mapID = 0;
	};
	//check if saved map is for another world
	if (CurrentLevel != NEWWORLD_ZEN)
	{
		if ((mapID == ItWr_Map_Caves_MIS)					||
			(mapID == ItWr_Map_NewWorld)					||
			(mapID == ItWr_Map_NewWorld_City)				||
			(mapID == ItWr_Map_NewWorld_Dexter)			||
			(mapID == ItWr_Map_NewWorld_Ornaments_Addon)	||
			(mapID == ItWr_Map_Orcelite_MIS)				||
			(mapID == ItWr_Map_Shrine_MIS)				||
			(mapID == ItWr_ShatteredGolem_MIS)			)
		{
			mapID = 0;
		};
	};
	if (CurrentLevel != OLDWORLD_ZEN)
	{
		if ((mapID == ItWr_Map_OldWorld)					||
			(mapID == ItWr_Map_OldWorld_Oremines_MIS)		)
		{
			mapID = 0;
		};
	};
	if (CurrentLevel != DRAGONISLAND_ZEN)
	{
		// none
	};
	if (CurrentLevel != ADDONWORLD_ZEN)
	{
		if ((mapID == ItWr_Map_AddonWorld)				||
			(mapID == ItWr_Addon_TreasureMap)				)
		{
			mapID = 0;
		};
	};
	
	if(mapID == 0)
	{
		mapID = B_GetBestPlayerMap();
	};
	
	B_SetPlayerMap(mapID);
	return mapID;
};


////////////////////////////////////////////////////////////////////////////////
//
//	GAME_LAME_POTION / GAME_LAME_HEAL
//

func void B_LameSchlork ()
{
	Snd_Play ("DRINKBOTTLE");
};

func void PLAYER_HOTKEY_LAME_POTION()
{
	if (Npc_IsInState (hero,ZS_Dead) == FALSE)
	{
		if(Npc_HasItems(hero, ItPo_Mana_Addon_04)) && ((hero.attribute[ATR_MANA] * 100 / hero.attribute[ATR_MANA_MAX]) <= 15)
		{
			Npc_ChangeAttribute(hero, ATR_MANA, hero.attribute[ATR_MANA_MAX] - hero.attribute[ATR_MANA]);
			Npc_RemoveInvItem (hero, ItPo_Mana_Addon_04);
			B_LameSchlork ();
		}
		if (Npc_HasItems (hero,ItPo_Mana_03))
		&& (((hero.attribute[ATR_MANA_MAX])-(hero.attribute[ATR_MANA])) >= Mana_Elixier)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA,	Mana_Elixier);
			Npc_RemoveInvItem (hero,ItPo_Mana_03);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ItPo_Mana_02))
		&& (((hero.attribute[ATR_MANA_MAX])-(hero.attribute[ATR_MANA])) >= MANA_Extrakt)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Extrakt);
			Npc_RemoveInvItem (hero,ItPo_Mana_02);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ItPo_Mana_01))
		&& (((hero.attribute[ATR_MANA_MAX])-(hero.attribute[ATR_MANA])) >= MANA_Essenz)
		{
			Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Essenz);
			Npc_RemoveInvItem (hero,ItPo_Mana_01);
			B_LameSchlork ();
		}
		else if ((hero.attribute[ATR_MANA_MAX])!=(hero.attribute[ATR_MANA]))
		{
				if (Npc_HasItems (hero,ItPo_Mana_01))
				{
					Npc_ChangeAttribute	(hero,	ATR_MANA,	Mana_Essenz);
					Npc_RemoveInvItem (hero,ItPo_Mana_01);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ItPo_Mana_02))
				{
					Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Extrakt);
					Npc_RemoveInvItem (hero,ItPo_Mana_02);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ItPo_Mana_03))
				{
					Npc_ChangeAttribute	(hero,	ATR_MANA,	MANA_Elixier);
					Npc_RemoveInvItem (hero,ItPo_Mana_03);
					B_LameSchlork ();
				}
				else
				{
					Print ("Keine Manatränke vorhanden!");
				};
		 }
		 else
		 {
				Print ("Bereits Maximales Mana!");
		 };
	};
};

func void PLAYER_HOTKEY_LAME_HEAL ()
{
	if (Npc_IsInState (hero,ZS_Dead)==FALSE)
	{
		if(Npc_HasItems(hero, ItPo_Health_Addon_04)) && ((hero.attribute[ATR_HITPOINTS] * 100 / hero.attribute[ATR_HITPOINTS_MAX]) <= 15)
		{
			Npc_ChangeAttribute(hero, ATR_HITPOINTS, hero.attribute[ATR_HITPOINTS_MAX] - hero.attribute[ATR_HITPOINTS]);
			Npc_RemoveInvItem (hero, ItPo_Health_Addon_04);
			B_LameSchlork ();
		}
		if (Npc_HasItems (hero,ItPo_HEALTH_03))
		&& (((hero.attribute[ATR_HITPOINTS_MAX])-(hero.attribute[ATR_HITPOINTS])) >= HP_Elixier)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Elixier);
			Npc_RemoveInvItem (hero,ItPo_HEALTH_03);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ItPo_HEALTH_02))
		&& (((hero.attribute[ATR_HITPOINTS_MAX])-(hero.attribute[ATR_HITPOINTS])) >= HP_Extrakt)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Extrakt);
			Npc_RemoveInvItem (hero,ItPo_HEALTH_02);
			B_LameSchlork ();
		}
		else if (Npc_HasItems (hero,ItPo_HEALTH_01))
		&& (((hero.attribute[ATR_HITPOINTS_MAX])-(hero.attribute[ATR_HITPOINTS])) >= HP_Essenz)
		{
			Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Essenz);
			Npc_RemoveInvItem (hero,ItPo_HEALTH_01);
			B_LameSchlork ();
		}
		else if ((hero.attribute[ATR_HITPOINTS_MAX])!=(hero.attribute[ATR_HITPOINTS]))
		{
				if (Npc_HasItems (hero,ItPo_HEALTH_01))
				{
					Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Essenz);
					Npc_RemoveInvItem (hero,ItPo_HEALTH_01);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ItPo_HEALTH_02))
				{
					Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Extrakt);
					Npc_RemoveInvItem (hero,ItPo_HEALTH_02);
					B_LameSchlork ();
				}
				else if (Npc_HasItems (hero,ItPo_HEALTH_03))
				{
					Npc_ChangeAttribute	(hero,	ATR_HITPOINTS,	HP_Elixier);
					Npc_RemoveInvItem (hero,ItPo_HEALTH_03);
					B_LameSchlork ();
				}
				else
				{
					Print ("Keine Heiltränke vorhanden!");
				};
		 }
		 else
		 {
				Print ("Bereits Maximale Lebensenergie!");
		 };
	};
};
