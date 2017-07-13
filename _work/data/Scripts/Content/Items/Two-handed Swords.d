INSTANCE ItMw_Drachenschneide (C_Item) 
{	
	name 				=	"Drachenschneide";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	10000;

	damageTotal			= 	190;
	damagetype			=	DAM_EDGE;
	range    			=  	120;	

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	160;
	visual 				=	"itMw_080_2h_sword_heavy_04.3DS";

	description			= name;
	TEXT[0] = "Auf der Vorderseite des Schafts steht: Drachenschneide";
	TEXT[1] = "Auf der Rückseite: Hammerclan, Nordmar";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};