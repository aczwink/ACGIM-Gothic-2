INSTANCE Item_Potion_BlueMushroom(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_ManaMaxElixier;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	DrinkBlueMushroomPotion;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Blaupilztrank";
	
	TEXT[1]			= 	NAME_Bonus_ManaMax;				
	COUNT[1]		= 	3;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

FUNC VOID DrinkBlueMushroomPotion()
{ 
	B_RaiseAttribute(self, ATR_MANA_MAX,	3);
	Npc_ChangeAttribute(self, ATR_MANA,	3);
};