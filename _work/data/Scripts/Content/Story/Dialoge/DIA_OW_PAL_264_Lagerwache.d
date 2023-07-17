// ************************************************************
// 			  				PICK POCKET
// ************************************************************
INSTANCE DIA_OW_PAL_264_PICKPOCKET (C_INFO)
{
	npc			= OW_PAL_264_Lagerwache;
	nr			= 900;
	condition	= DIA_OW_PAL_264_PICKPOCKET_Condition;
	information	= DIA_OW_PAL_264_PICKPOCKET_Condition_Info;
	permanent	= TRUE;
	description = "(Es wäre schwierig seinen Schlüssel zu stehlen)";
};                       

FUNC INT DIA_OW_PAL_264_PICKPOCKET_Condition()
{
	return C_Beklauen(80, 0) && Npc_HasItems(self, ItKe_OC_Store);
};
 
FUNC VOID DIA_OW_PAL_264_PICKPOCKET_Condition_Info()
{
	Info_ClearChoices	(DIA_OW_PAL_264_PICKPOCKET);
	Info_AddChoice		(DIA_OW_PAL_264_PICKPOCKET, DIALOG_BACK 		,DIA_OW_PAL_264_PICKPOCKET_BACK);
	Info_AddChoice		(DIA_OW_PAL_264_PICKPOCKET, DIALOG_PICKPOCKET	,DIA_OW_PAL_264_PICKPOCKET_DoIt);
};

func void DIA_OW_PAL_264_PICKPOCKET_DoIt()
{
	if (other.attribute[ATR_DEXTERITY] >= 80)
	{
		B_GiveInvItems (self, other, ItKe_OC_Store, 1);
		self.aivar[AIV_PlayerHasPickedMyPocket] = TRUE;
		B_GiveThiefXP ();
		Info_ClearChoices (DIA_OW_PAL_264_PICKPOCKET);
	}
	else
	{
		B_ResetThiefLevel();
		AI_StopProcessInfos	(self);
		B_Attack (self, other, AR_Theft, 1); //reagiert trotz IGNORE_Theft mit NEWS
	};
};
	
func void DIA_OW_PAL_264_PICKPOCKET_BACK()
{
	Info_ClearChoices (DIA_OW_PAL_264_PICKPOCKET);
};