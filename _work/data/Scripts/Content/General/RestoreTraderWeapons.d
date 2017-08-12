func void SaveTraderWeapons(var C_NPC slf)
{
	var C_Item item;
	
	if(Npc_HasEquippedMeleeWeapon(slf))
	{
		item = Npc_GetEquippedMeleeWeapon(slf);
		slf.aivar[AIV_ACGIM_TRADER_MW] = Hlp_GetInstanceID(item);
	}
	else
	{
		slf.aivar[AIV_ACGIM_TRADER_MW] = 0;
	};
	if(Npc_HasEquippedRangedWeapon(slf))
	{
		item = Npc_GetEquippedRangedWeapon(slf);
		slf.aivar[AIV_ACGIM_TRADER_RW] = Hlp_GetInstanceID(item);
	}
	else
	{
		slf.aivar[AIV_ACGIM_TRADER_RW] = 0;
	};
};

func void RestoreTraderWeapons(var C_NPC slf)
{
	if(slf.aivar[AIV_ACGIM_TRADER_MW] != 0 || slf.aivar[AIV_ACGIM_TRADER_RW] != 0)
	{
		AI_UnequipWeapons(slf);
	};
	if(slf.aivar[AIV_ACGIM_TRADER_MW] != 0)
	{
		//Npc_RemoveInvItems(slf, slf.aivar[AIV_ACGIM_TRADER_MW], 1);
		//EquipItem(slf, slf.aivar[AIV_ACGIM_TRADER_MW]);
	};
	if(slf.aivar[AIV_ACGIM_TRADER_RW] != 0)
	{
		//Npc_RemoveInvItems(slf, slf.aivar[AIV_ACGIM_TRADER_RW], 1);
		//EquipItem(slf, slf.aivar[AIV_ACGIM_TRADER_RW]);
	};
};