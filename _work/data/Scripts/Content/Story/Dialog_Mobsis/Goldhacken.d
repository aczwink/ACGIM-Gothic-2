var int CurrentGoldHackSuccessCount;

FUNC VOID Goldhacken_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{
		CurrentGoldHackSuccessCount = 0;
		self.aivar[AIV_INVINCIBLE]=TRUE;
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_GOLDHACKEN;
		Ai_ProcessInfos (her);
	};
}; 
//*******************************************************
//	Goldhacken Dialog abbrechen
//*******************************************************
INSTANCE PC_Goldhacken_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_Goldhacken_End_Condition;
	information		= PC_Goldhacken_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_Goldhacken_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_GOLDHACKEN)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Goldhacken_End_Info()
{
	Truemmer_Count = 0;
	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//	Goldhacken 
//*******************************************************
INSTANCE PC_Goldhacken_Addon_Hour (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_Goldhacken_Addon_Hour_Condition;
	information		= PC_Goldhacken_Addon_Hour_Info;
	permanent		= TRUE;
	description		= "Einfach mal hacken."; 
};

FUNC INT PC_Goldhacken_Addon_Hour_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_GOLDHACKEN)
	{	
		return TRUE;
	};
};
var int GoldCounter;
FUNC VOID PC_Goldhacken_Addon_Hour_Info()
{
	var int CurrentChance;
	CurrentChance = Hlp_Random (100);
	
	if (CurrentChance <= Hero_HackChance)
	{
		Truemmer_Count = 0;
		CurrentGoldHackSuccessCount = CurrentGoldHackSuccessCount + 1;
		if(CurrentGoldHackSuccessCount == 5) //4 mal drum herum und dann mit einem schlag den brocken heraus holen
		{
			//erfolg
			CreateInvItems(hero, ItMi_GoldNugget_Addon, 1);
			PrintScreen ("1 Goldbrocken gehackt!", -1, -1, FONT_ScreenSmall, 2);
			CurrentGoldHackSuccessCount = 0;
			
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
		PrintScreen ("Goldsplitter fliegen durch die Gegend...", -1, -1, FONT_ScreenSmall, 2);
		CurrentGoldHackSuccessCount = 0;
		Truemmer_Count = Truemmer_Count + 1;
	};
};
//*******************************************************
//	Goldhacken Trümmerschlag
//*******************************************************
INSTANCE PC_Goldhacken_Addon_TSchlag (C_Info)
{
	npc				= PC_Hero;
	nr				= 997;
	condition		= PC_Goldhacken_Addon_TSchlag_Condition;
	information		= PC_Goldhacken_Addon_TSchlag_Info;
	permanent		= TRUE;
	description		= "Trümmerschlag ansetzen."; 
};

FUNC INT PC_Goldhacken_Addon_TSchlag_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_GOLDHACKEN)
	&& (Truemmer_Count >= 4)
	&& (Knows_Truemmerschlag == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Goldhacken_Addon_TSchlag_Info()
{
	var int TruemmerChance;
	var int hackChance;
	TruemmerChance = Hlp_Random (100);
	
	hackChance = Hero_HackChance;
	if(hackChance > 75)
	{
		hackChance = 75;
	};
	
	if(TruemmerChance <= hackChance)
	{
		CreateInvItems (hero, ItMi_GoldNugget_Addon, 1);	
		PrintScreen ("1 Goldbrocken gehackt!...", -1, -1, FONT_ScreenSmall, 2);
	}
	else
	{
		PrintScreen ("Goldsplitter fliegen durch die Gegend...", -1, -1, FONT_ScreenSmall, 2);
	};
	Truemmer_Count = 0;
};
//*******************************************************
//	Goldhacken Chance
//*******************************************************
INSTANCE PC_Goldhacken_Addon_Chance (C_Info)
{
	npc				= PC_Hero;
	nr				= 998;
	condition		= PC_Goldhacken_Addon_Chance_Condition;
	information		= PC_Goldhacken_Addon_Chance_Info;
	permanent		= TRUE;
	description		= "(Eigene Goldhacken-Fähigkeit prüfen)"; 
};

FUNC INT PC_Goldhacken_Addon_Chance_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_GOLDHACKEN)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Goldhacken_Addon_Chance_Info()
{
	var string ConcatText;

	
	if (Hero_HackChance < 20) 
	{
		ConcatText = ConcatStrings ("blutiger Anfänger (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 40) 
	{
		ConcatText = ConcatStrings ("ganz passabler Schürfer (" , IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 55) 
	{
		ConcatText = ConcatStrings ("erfahrener Goldschürfer (", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 75) 
	{
		ConcatText = ConcatStrings ("waschechter Buddler ( ", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 90) 
	{
		ConcatText = ConcatStrings ("verdammt guter Buddler ( ", IntToString (Hero_HackChance));
	}
	else if (Hero_HackChance < 98) 
	{
		ConcatText = ConcatStrings ("Meister Buddler ( ", IntToString (Hero_HackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("Buddler Guru ( ", IntToString (Hero_HackChance));
	};
	
	ConcatText = ConcatStrings (concatText, " Prozent)");
	
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall,2);
};
