INSTANCE Item_Armor_AdeptRobe(C_Item)
{
	name 					=	"Adeptenrobe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] =	55;
	protection [PROT_BLUNT] = 	55;
	protection [PROT_POINT] = 	55;
	protection [PROT_FIRE] = 25;
	protection [PROT_MAGIC] = 	25;

	value 					=	VALUE_ITAR_KDF_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_CorAngar.3ds";
	visual_change 			=	"Armor_Battlemage.asc";
	visual_skin 			=	1;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_KDF_L;
	on_unequip				=	UnEquip_ITAR_KDF_L;

	description				=	name;
	
	TEXT[0] = "Diese Robe ist für unerfahrene Magier etwas besser gepanzert...";

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};