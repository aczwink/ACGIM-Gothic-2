func void SetBodyWidthFromStrength(var C_NPC npc)
{
	//Mdl_SetModelFatness ??
	if(npc.attribute[ATR_STRENGTH] >= 200)
	{
		Mdl_SetModelScale(npc, 1.1, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 190)
	{
		Mdl_SetModelScale(npc, 1.095, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 180)
	{
		Mdl_SetModelScale(npc, 1.09, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 170)
	{
		Mdl_SetModelScale(npc, 1.085, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 160)
	{
		Mdl_SetModelScale(npc, 1.08, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 150)
	{
		Mdl_SetModelScale(npc, 1.075, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 140)
	{
		Mdl_SetModelScale(npc, 1.07, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 130)
	{
		Mdl_SetModelScale(npc, 1.065, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 120)
	{
		Mdl_SetModelScale(npc, 1.06, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 110)
	{
		Mdl_SetModelScale(npc, 1.055, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 100)
	{
		Mdl_SetModelScale(npc, 1.05, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 90)
	{
		Mdl_SetModelScale(npc, 1.045, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 80)
	{
		Mdl_SetModelScale(npc, 1.04, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 70)
	{
		Mdl_SetModelScale(npc, 1.035, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 60)
	{
		Mdl_SetModelScale(npc, 1.03, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 50)
	{
		Mdl_SetModelScale(npc, 1.025, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 40)
	{
		Mdl_SetModelScale(npc, 1.02, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 30)
	{
		Mdl_SetModelScale(npc, 1.015, 1, 1);
	}
	else if(npc.attribute[ATR_STRENGTH] >= 20)
	{
		Mdl_SetModelScale(npc, 1.01, 1, 1);
	};
};


// ****************
// B_RaiseAttribute
// ****************

// ---------------------------------------
func void B_RaiseRealAttributeLearnCounter (var C_NPC oth, var int attrib, var int points)
{
	if 		(attrib == ATR_STRENGTH)	{	oth.aivar[REAL_STRENGTH] = oth.aivar[REAL_STRENGTH] + points;	}
	else if (attrib == ATR_DEXTERITY)	{	oth.aivar[REAL_DEXTERITY] = oth.aivar[REAL_DEXTERITY] + points;	}
	else if (attrib == ATR_MANA_MAX)	{	oth.aivar[REAL_MANA_MAX] = oth.aivar[REAL_MANA_MAX] + points;	};
};

// ---------------------------------------
func void B_RaiseAttribute (var C_NPC oth, var int attrib, var int points)
{
	var string concatText;
	
	// ------ STR steigern ------
	if (attrib == ATR_STRENGTH)			
	{	
		oth.attribute[ATR_STRENGTH] = oth.attribute[ATR_STRENGTH] + points;				//bzw. Npc_ChangeAttribute (oth, attrib, points);
		
		SetBodyWidthFromStrength(oth);
		
		concatText = ConcatStrings(PRINT_LearnSTR, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ DEX steigern ------
	if (attrib == ATR_DEXTERITY)			
	{	
		oth.attribute[ATR_DEXTERITY] = oth.attribute[ATR_DEXTERITY] + points;

			if (oth.attribute[ATR_DEXTERITY] >= 90)
			&& (Npc_GetTalentSkill (oth, NPC_TALENT_ACROBAT) == 0)
			{
				Npc_SetTalentSkill 	(oth, NPC_TALENT_ACROBAT, 1);
				PrintScreen	(PRINT_Addon_AcrobatBonus, -1, 55, FONT_Screen, 2);
			};

		concatText = ConcatStrings(PRINT_LearnDEX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ MANA_MAX steigern ------
	if (attrib == ATR_MANA_MAX)			
	{	
		oth.attribute[ATR_MANA_MAX] = oth.attribute[ATR_MANA_MAX] + points;

		concatText = ConcatStrings(PRINT_LearnMANA_MAX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ HITPOINTS_MAX steigern ------
	if (attrib == ATR_HITPOINTS_MAX)			
	{	
		oth.attribute[ATR_HITPOINTS_MAX] = oth.attribute[ATR_HITPOINTS_MAX] + points;

		concatText = ConcatStrings(PRINT_Learnhitpoints_MAX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	B_RaiseRealAttributeLearnCounter (oth, attrib, points);
};
