
const int	Value_Lockpick			=	10;
const int	Value_Key_02			=	3;
const int	Value_Key_03			=	3;


//******************************************************************************************
//	Dietrich
//******************************************************************************************

INSTANCE ItKe_Lockpick (C_Item)
{
	name 				=	"Dietrich";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Lockpick;

	visual 				=	"ItKe_Lockpick.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};