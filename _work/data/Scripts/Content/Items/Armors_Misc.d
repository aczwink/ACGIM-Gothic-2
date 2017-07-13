instance Item_Armor_DemolishedCloth(C_Item)
{
	name 				=	"Abgerissene Kleidung";
	
	mainflag 			=	ITEM_KAT_ARMOR;
	flags 				=	0;
	
	protection [PROT_EDGE]	=	0;
	protection [PROT_BLUNT] = 	0;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 				=	0;

	wear 				=	WEAR_TORSO;

	visual 				=	"ItAr_Prisoner.3ds";
	//visual_change 			=	"Armor_Prisoner.asc";
	visual_change 			=	"LUMPEN1.ASC";
	visual_skin 			=	0;
	material 			=	MAT_LEATHER;
	
	TEXT[0] = "Diese Lumpen tragen nur die ärmsten...";

	description			=	name;
};