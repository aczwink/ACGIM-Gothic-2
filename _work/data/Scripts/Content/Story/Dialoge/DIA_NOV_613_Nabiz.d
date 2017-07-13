//Variables
var int g_stoleNabizPocket;
var int g_NabizHowAreYouGotXP;


//Exit
INSTANCE DIA_Nabiz_EXIT   (C_INFO)
{
	npc         = NOV_613_Nabiz;
	nr          = 999;
	condition   = DIA_Nabiz_EXIT_Condition;
	information = DIA_Nabiz_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Nabiz_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Nabiz_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//Begrüßung
INSTANCE DIA_Nabiz_Hello   (C_INFO)
{
	npc         = NOV_613_Nabiz;
	nr          = 2;
	condition   = DIA_Nabiz_Hello_Condition;
	information = DIA_Nabiz_Hello_Info;
	permanent   = FALSE;
	important 	= TRUE;
};
FUNC INT DIA_Nabiz_Hello_Condition()
{
	if (Npc_IsInState (self,ZS_Talk))
	&& (other.guild == GIL_NOV)
	{ 
		return TRUE;
	};	
};
FUNC VOID DIA_Nabiz_Hello_Info()
{
	AI_Output (self, other, "DIA_Nabiz_Hello_99_00"); //Hey! Willkommen im Kloster.
	AI_Output (self, other, "DIA_Nabiz_Hello_99_01"); //Hat Parlan dich zu mir geschickt um mir mit den Weinreben zu helfen?
	AI_Output (other, self, "DIA_Addon_Carlos_HI_No_15_00"); //Was? Ich? Nein!
	AI_Output (self, other, "DIA_Nabiz_Hello_99_02"); //Aaach verdammt. Versteh mich nicht falsch – Ich mag die Gartenarbeit, sehr sogar.
	AI_Output (self, other, "DIA_Nabiz_Hello_99_03"); //Allerdings komme ich kaum noch dazu die Schriften zu studieren wenn ich hier alles alleine machen soll.
	AI_Output (self, other, "DIA_Nabiz_Hello_99_04"); //Eigentlich hat mir Dyrian ja immer geholfen. Aber der kommt nicht mehr.
	AI_Output (other, self, "DIA_Mil_310_Stadtwache_FirstWarn_15_09"); //Warum nicht?
	AI_Output (self, other, "DIA_Nabiz_Hello_99_05"); //Weil der Idiot hat einem Magier ein Buch geklaut hat. Jetzt beraten sie ob sie ihn rauswerfen.
	AI_Output (self, other, "DIA_Nabiz_Hello_99_06"); //Ich hoffe es nicht sonst komme ich zu gar nichts mehr.
};



//Wie gehts
INSTANCE DIA_Nabiz_HowAreYou   (C_INFO)
{
	npc         = NOV_613_Nabiz;
	nr          = 2;
	condition   = DIA_Nabiz_HowAreYou_Condition;
	information = DIA_Nabiz_HowAreYou_Info;
	permanent   = TRUE;
	description = "Wie geht's?";
};
FUNC INT DIA_Nabiz_HowAreYou_Condition()
{
	return !g_NabizHowAreYouGotXP && (other.guild == GIL_NOV);
};
FUNC VOID DIA_Nabiz_HowAreYou_Info()
{
	AI_Output (other, self, "DIA_Babo_HowIsIt_15_00"); //Wie geht's?
	
	if(MIS_HelpDyrian == LOG_FAILED)
	{
		AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_02"); //Dyrian ist rausgeworfen worden. Ich krieg die Krise...
	}
	else if(MIS_HelpDyrian == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_03"); //Hey ich hab gehört, dass du dafür gesorgt hast, dass Dyrian bleibt und was noch besser ist, er hilft mir wieder mit den Weinreben.
		AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_04"); //Ich danke dir vielmals. Deinetwegen schaffe ich es auch wieder ein bisschen in die Bibliothek zu gehen.
		
		if(g_stoleNabizPocket)
		{
			AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_06"); //Ich hab hier was für dich…. Hm… komisch… ich hatte eigentlich eine Spruchrolle die ich dir geben wollte. Aber ich muss sie wohl hier irgendwo verloren haben.
			AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_07"); //Weißt du was, ich hab noch ne gute Flasche Wein. Hier sie gehört dir.
			B_GiveInvItems(self, other, ItFo_Wine, 1);
		}
		else
		{
			AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_05"); //Hier nimm diese Spruchrolle. Ich denke sie wird dir da draußen nützlich sein.
			B_GiveInvItems(self, other, ItSc_SumWolf, 1);
		};
		
		B_GivePlayerXP (XP_Ambient);
		
		g_NabizHowAreYouGotXP = TRUE; //so that we get the xp only once
	}
	else
	{
		//dyrian still in monastery
		AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_00"); //Bist du hier um mir zu helfen?
		AI_Output (other, self, "DIA_Addon_Carlos_HI_No_15_00"); //Was? Ich? Nein!
		AI_Output (self, other, "DIA_Nabiz_HowAreYou_99_01"); //Dann quatsch nicht und lass mich arbeiten...
	};
};

//Fegen
INSTANCE DIA_Nabiz_NoviceChambers(C_INFO)
{
	npc         = NOV_613_Nabiz;
	nr			= 2;
	condition	= DIA_Nabiz_NoviceChambers_Condition;
	information	= DIA_Nabiz_NoviceChambers_Info;
	permanent	= FALSE;
	description = "Ich brauche Hilfe beim Fegen der Novizenkammern.";
};                       

FUNC INT DIA_Nabiz_NoviceChambers_Condition()
{
	if (Kapitel == 1)
	&& (MIS_KlosterArbeit == LOG_RUNNING)
	&& (NOV_Helfer < 4)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Nabiz_NoviceChambers_Info()
{
	AI_Output (other, self, "DIA_NOV_8_Fegen_15_00"); //Ich brauche Hilfe beim Fegen der Novizenkammern.
	AI_Output (self, other, "DIA_Nabiz_NoviceChambers_99_00"); //Und warum kommst du damit zu mir? Du siehst doch dass ich beschäftigt bin.
};


// *************************************************************************
// 							Wurst verteilen
// *************************************************************************
INSTANCE DIA_Nabiz_Wurst(C_INFO)
{
	npc         = NOV_613_Nabiz;
	nr			= 2;
	condition	= DIA_Nabiz_Wurst_Condition;
	information	= DIA_Nabiz_Wurst_Info;
	permanent	= FALSE;
	description = "Hier, nimm eine Wurst.";
};                       

FUNC INT DIA_Nabiz_Wurst_Condition()
{
	return GiveSausageCondition();
};
FUNC VOID DIA_Nabiz_Wurst_Info()
{	
	AI_Output (other, self, "DIA_Babo_Wurst_15_00"); //Hier, nimm eine Wurst.
	AI_Output (self, other, "DIA_Nabiz_Wurst_99_01"); //Oh, endlich! Du kannst dir gar nicht vorstellen wieviel Hunger man von dieser Arbeit bekommt.
	
	GiveSausage();
	
	Info_ClearChoices (DIA_Nabiz_Wurst);
};


// ************************************************************
// 			  				PICK POCKET
// ************************************************************

INSTANCE DIA_Nabiz_PICKPOCKET (C_INFO)
{
	npc			= NOV_613_Nabiz;
	nr			= 900;
	condition	= DIA_Nabiz_PICKPOCKET_Condition;
	information	= DIA_Nabiz_PICKPOCKET_Info;
	permanent	= TRUE;
	description = PickPocket_Generic_20;
};                       

FUNC INT DIA_Nabiz_PICKPOCKET_Condition()
{
	StealCondition();
};
 
FUNC VOID DIA_Nabiz_PICKPOCKET_Info()
{	
	Info_ClearChoices	(DIA_Nabiz_PICKPOCKET);
	Info_AddChoice		(DIA_Nabiz_PICKPOCKET, DIALOG_BACK 		,DIA_Nabiz_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_Nabiz_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_Nabiz_PICKPOCKET_DoIt);
};

func void DIA_Nabiz_PICKPOCKET_DoIt()
{
	if(StealDoIt(22))
	{
		B_GiveInvItems (self, other, ItSc_SumWolf, 1);
		g_stoleNabizPocket = TRUE;
	};
	Info_ClearChoices (DIA_Nabiz_PICKPOCKET);
};
	
func void DIA_Nabiz_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_Nabiz_PICKPOCKET);
};


