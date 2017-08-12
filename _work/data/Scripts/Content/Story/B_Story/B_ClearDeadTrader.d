// ***************************************************
// B_ClearDeadTrader (Händler die gellert werden sollen, wenn sie sterben!)
// ***************************************************

func void B_ClearDeadTrader (var C_NPC Trader)
{
	var C_NPC Trd_Juan;			Trd_Juan		= Hlp_GetNpc (BDT_10017_Addon_Juan);
	
	if  Hlp_GetInstanceID (Trader) == Hlp_GetInstanceID (Trd_Juan)
	{
		var int count;
		count = Npc_HasItems(Trader, Itfo_Addon_Grog);
		Npc_clearInventory (Trader);
		CreateInvItems(Trader, Itfo_Addon_Grog, count);
	}
	else
	{
		Npc_clearInventory (Trader);
	};

	if (Trader.aivar[AIV_VictoryXPGiven] == FALSE)//Joly:gegen TraderExploid bei bewusstlos
	{
		B_CreateAmbientInv (Trader);
	};
};




