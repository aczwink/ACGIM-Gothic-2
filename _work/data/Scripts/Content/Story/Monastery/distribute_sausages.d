const int NUMBER_OF_NOVICES_IN_MONASTERY = 14;

func int GiveSausageCondition()
{
	if (Kapitel == 1)
	&& (MIS_GoraxEssen == LOG_RUNNING)
	&& (Npc_HasItems (self, ItFo_SchafsWurst ) == 0)
	&& (Npc_HasItems (other, ItFo_SchafsWurst ) >= 1)
	{
		return TRUE;
	};
	
	return FALSE;
};

func void GiveSausage()
{
	//give sausage
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Wurst_Gegeben = (Wurst_Gegeben +1);
	
	//create a tmp sausage, so that real sausage remains in inventar (to check whether we gave this novice a sausage)
	CreateInvItems (self, ITFO_Sausage,1);
	B_UseItem (self, ITFO_Sausage);
	
	//print	
	var string NovizeText;
	var string NovizeLeft;
	NovizeLeft = IntToString (NUMBER_OF_NOVICES_IN_MONASTERY - Wurst_Gegeben);
	NovizeText = ConcatStrings(NovizeLeft, PRINT_NovizenLeft);
	AI_PrintScreen	(NovizeText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
};