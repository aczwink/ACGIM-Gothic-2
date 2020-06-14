INSTANCE VariablenSetzBrief1(C_Item)
{
	name 				=	"VariablenSetzBrief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseVariablenSetzBrief1;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseVariablenSetzBrief1()
{
	Hagen_BroughtMessage = TRUE;
};

INSTANCE VariablenSetzBrief2(C_Item)
{
	name 				=	"VariablenSetzBrief";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseVariablenSetzBrief2;
	scemeName			=	"MAP";
	description			= 	name;
};

func void UseVariablenSetzBrief2()
{
	CreateInvItems(self, Itmi_gold, 10000);
	CreateInvItems(self, ItMi_LostInnosStatue_Daron, 1);
	MIS_Addon_Daron_GetStatue = LOG_RUNNING;
};