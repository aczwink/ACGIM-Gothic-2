INSTANCE ItMw_Berserkeraxt(C_Item)
{	
	name 				=	"Berserkeraxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	5000;

	damageTotal  		= 	150;
	damagetype 			=	DAM_EDGE;	
	range    			=  	90;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	150;
	visual 				=	"ItMw_080_2h_axe_heavy_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE ItMw_Barbarenstreitaxt(C_Item)
{	
	name 				=	"Barbarenstreitaxt";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;	
	material 			=	MAT_METAL;

	value 				=	10000;

	damageTotal  		= 	200;
	damagetype 			=	DAM_EDGE;	
	range    			=  	90;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	170;
	visual 				=	"ItMw_075_2h_axe_heavy_04.3DS";

	description			= name;
	TEXT[0] = "Nur die stärksten Bären können diese Axt schwingen.";
	TEXT[1] = "Diese gewaltige Klinge spaltet jeden Schädel...";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};