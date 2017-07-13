var int CurrentOreHackSuccessCount;

FUNC VOID WorldCallback_HackMagicOre_S1()
{
	var C_NPC her;
	
	her = Hlp_GetNpc(PC_Hero);
	
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		CurrentOreHackSuccessCount = 0;
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_ERZHACKEN;
		Ai_ProcessInfos(her);
	};
}; 
//*******************************************************
//	Erzhacken Dialog abbrechen
//*******************************************************
INSTANCE PC_Erzhacken_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_Erzhacken_End_Condition;
	information		= PC_Erzhacken_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_Erzhacken_End_Condition ()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_ERZHACKEN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Erzhacken_End_Info()
{
	Truemmer_Count = 0;
	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//	Erzhacken 
//*******************************************************
INSTANCE PC_Erzhacken_Hack (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_Erzhacken_Hack_Condition;
	information		= PC_Erzhacken_Hack_Info;
	permanent		= TRUE;
	description		= "Einfach mal hacken."; 
};

FUNC INT PC_Erzhacken_Hack_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_ERZHACKEN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Erzhacken_Hack_Info()
{
	var int CurrentChance;
	CurrentChance = Hlp_Random (100);
	
	if (CurrentChance <= Hero_MagicalOreHackChance)
	{
		Truemmer_Count = 0;
		CurrentOreHackSuccessCount = CurrentOreHackSuccessCount + 1;
		if(CurrentOreHackSuccessCount == 5) //4 mal drum herum und dann mit einem schlag den brocken heraus holen
		{
			//erfolg
			CreateInvItems(hero, ItMi_Nugget, 1);
			PrintScreen("1 Erzbrocken gehackt!", -1, -1, FONT_ScreenSmall, 2);
			CurrentOreHackSuccessCount = 0;
			
			//50:50 lernen wir das
			var int learnChance;
			learnChance = Hlp_Random(100);
			
			if(learnChance >= 50)
			{
				B_Upgrade_Hero_HackChance(2);
			};
		}
		else
		{
			PrintScreen ("Das war ein guter Schlag...", -1, -1, FONT_ScreenSmall, 2);
		};
	}
	else
	{
		PrintScreen ("Erzsplitter fliegen durch die Gegend...", -1, -1, FONT_ScreenSmall, 2);
		CurrentOreHackSuccessCount = 0;
		Truemmer_Count = Truemmer_Count + 1;
	};
};
//*******************************************************
//	Erzhacken Trümmerschlag
//*******************************************************
INSTANCE PC_Erzhacken_TSchlag(C_Info)
{
	npc				= PC_Hero;
	nr				= 997;
	condition		= PC_Erzhacken_TSchlag_Condition;
	information		= PC_Erzhacken_TSchlag_Info;
	permanent		= TRUE;
	description		= "Trümmerschlag ansetzen."; 
};

FUNC INT PC_Erzhacken_TSchlag_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_ERZHACKEN)
	&& (Truemmer_Count >= 4)
	&& (Knows_Truemmerschlag == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Erzhacken_TSchlag_Info()
{
	var int TruemmerChance;
	var int hackChance;
	TruemmerChance = Hlp_Random (100);
	
	hackChance = Hero_MagicalOreHackChance / 2;
	if(hackChance > 30)
	{
		hackChance = 30;
	};
	
	if(TruemmerChance <= hackChance)
	{
		CreateInvItems (hero, ItMi_Nugget, 1);	
		PrintScreen ("1 Erzbrocken gehackt!...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		PrintScreen ("Erzsplitter fliegen durch die Gegend...", -1, -1, FONT_ScreenSmall, 2);
	};
	Truemmer_Count = 0;
};
//*******************************************************
//	Erzhacken Chance
//*******************************************************
INSTANCE PC_Erzhacken_Chance (C_Info)
{
	npc				= PC_Hero;
	nr				= 998;
	condition		= PC_Erzhacken_Chance_Condition;
	information		= PC_Erzhacken_Chance_Info;
	permanent		= TRUE;
	description		= "(Eigene Erzhacken-Fähigkeit prüfen)"; 
};

FUNC INT PC_Erzhacken_Chance_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_ERZHACKEN)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Erzhacken_Chance_Info()
{
	var string ConcatText;

	
	if (Hero_MagicalOreHackChance < 20) 
	{
		ConcatText = ConcatStrings ("blutiger Anfänger (", IntToString (Hero_MagicalOreHackChance));
	}
	else if (Hero_MagicalOreHackChance < 40) 
	{
		ConcatText = ConcatStrings ("ganz passabler Schürfer (" , IntToString (Hero_MagicalOreHackChance));
	}
	else if (Hero_MagicalOreHackChance < 55) 
	{
		ConcatText = ConcatStrings ("erfahrener Goldschürfer (", IntToString (Hero_MagicalOreHackChance));
	}
	else if (Hero_MagicalOreHackChance < 75) 
	{
		ConcatText = ConcatStrings ("waschechter Buddler ( ", IntToString (Hero_MagicalOreHackChance));
	}
	else if (Hero_MagicalOreHackChance < 90) 
	{
		ConcatText = ConcatStrings ("verdammt guter Buddler ( ", IntToString (Hero_MagicalOreHackChance));
	}
	else if (Hero_MagicalOreHackChance < 98) 
	{
		ConcatText = ConcatStrings ("Meister Buddler ( ", IntToString (Hero_MagicalOreHackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("Buddler Guru ( ", IntToString (Hero_MagicalOreHackChance));
	};
	
	ConcatText = ConcatStrings (concatText, " Prozent)");
	
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall,2);
};
