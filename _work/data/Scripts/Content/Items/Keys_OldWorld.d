INSTANCE ITKE_ErzBaronFlur(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: Für die erste Tür";
	
	TEXT[2]				= 	"Eine Name ist eingraviert:";
	TEXT[3]				= 	"Gomez";
};

INSTANCE ITKE_ErzBaronRaum(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: Für die zweite Tür";
	
	TEXT[2]				= 	"Eine Name ist eingraviert:";
	TEXT[3]				= 	"Gomez";
};

INSTANCE ItKe_PrisonKey_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: Kerkerschlüssel";
	
	TEXT[2]				= 	"Der Schlüssel zum Kerker";
	TEXT[3]				= 	"in der Burg";
};

INSTANCE ITKE_OC_MAINGATE_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: Turmschlüssel der Haupttorwache";
};

INSTANCE ItKe_OC_Store(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: Lagerschlüssel";
	
	TEXT[2]				= 	"Der Schlüssel zum Lagerraum";
	TEXT[3]				= 	"in der Burg";
};