INSTANCE ITKE_ErzBaronFlur(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: F�r die erste T�r";
	
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

	description			= 	"Burg: F�r die zweite T�r";
	
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

	description			= 	"Burg: Kerkerschl�ssel";
	
	TEXT[2]				= 	"Der Schl�ssel zum Kerker";
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

	description			= 	"Burg: Turmschl�ssel der Haupttorwache";
};

INSTANCE ItKe_OC_Store(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Burg: Lagerschl�ssel";
	
	TEXT[2]				= 	"Der Schl�ssel zum Lagerraum";
	TEXT[3]				= 	"in der Burg";
};