//-------------------------------------------------------
// Fleischsuppe
//-------------------------------------------------------
const int HP_MeatSoup = 20;
const int HP_MushroomStew = 35;

INSTANCE Item_Food_MeatSoup(C_Item)
{	
	name 				=	"Fleischsuppe";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_FishSoup;
	
	visual 				=	"ItFo_FishSoup.3ds";
	material 			=	MAT_WOOD;
	scemeName			=	"RICE";
	on_state[0]			=	EatMeatSoup;

	description			= 	"Fleischsuppe";
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_MeatSoup;
	TEXT[5]				= 	NAME_Value;			COUNT[5]	= Value_FishSoup;

};

FUNC VOID EatMeatSoup()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_MeatSoup);
};



INSTANCE Item_Food_MushroomStew(C_Item)
{
	name 				=	"Pilzeintopf";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Stew;
	
	visual 				=	"ItFo_Stew.3ds";
	material 			=	MAT_WOOD;
	scemeName			=	"RICE";
	on_state[0]			=	EatMushroomStew;

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_MushroomStew;
	TEXT[5]				= 	NAME_Value;		COUNT[5]	= Value_Stew;

};

FUNC VOID EatMushroomStew()
{
	Npc_ChangeAttribute(self, ATR_HITPOINTS, HP_MushroomStew);
};