INSTANCE ItKe_Bandit(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Truhenschl�ssel Bandit";
	
	TEXT[2]				=	"Der Schl�ssel";
	TEXT[3]				=   "geh�rte einem Banditen";
	TEXT[4]				=   "nahe Xardas Turm.";
};

INSTANCE ItKe_Dexter(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Dexter's Truhenschl�ssel";
};

INSTANCE ItKe_Xardas(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Xardas Truhenschl�ssel";
	
	TEXT[2]				=	"f�r die Truhe in seinem Turm";	
};

INSTANCE ItKe_ThiefTreasure(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Unbekannter Schl�ssel";
	
	TEXT[2]				=	"Sehr stabiler Schl�ssel...";
};

INSTANCE ItKe_Pass_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Schl�ssel zum Pass";
	TEXT[2]				= 	"�ffnet das Tor am Pass";
};

INSTANCE ITKE_RUNE_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Lutero's Geschenktruhe";
	
	TEXT[1]				= 	"Die Truhe zu dem Schl�ssel";
	TEXT[2]				= 	"steht unter einer Br�cke";
	TEXT[3]				= 	"und enth�lt einen Runenstein";
};

INSTANCE ITKE_PORTALTEMPELWALKTHROUGH_ADDON(C_Item)
{
	name 				=	NAME_KeyRusty;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Teleportsteinraum Portal-Tempel";
	
	TEXT[2]				=	"Passt zur T�r des";
	TEXT[3]				=   "Teleportsteins im Portal-Tempel ";
};

INSTANCE ITKE_ORLAN_TELEPORTSTATION (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Teleportsteinh�hle Taverne";
	
	TEXT[2]				=	"Passt zur T�r der H�hle";
	TEXT[3]				=   "s�dlich seiner Taverne";
};

INSTANCE ITKE_ORLAN_HOTELZIMMER(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Zimmerschl�ssel";
	
	TEXT[2]				=	"der Taverne �Zur toten Harpie�";
};

INSTANCE ItKe_MagicChest(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION |ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Alter Schl�ssel";
	
	TEXT[1]				=	"Ein alter eiserner Schl�ssel.";
	TEXT[2]				=   "Er k�nnnte zu einem ";
	TEXT[3]				=	"Vorh�ngeschloss geh�ren.";
	TEXT[4] = "F�r Pyrokars Pr�fung.";
};

INSTANCE ItKe_CHEST_SEKOB_XARDASBOOK_MIS (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Xardas Truhenschl�ssel";
	
	TEXT[2]				=   "f�r die Truhe auf Sekobs Bauernhof";
};

//****************************************************************************
//			Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_MonastarySecretLibrary_Mis (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Geheimer Schl�ssel";
	
	TEXT[2]				= 	"Aus dem Buch �Die Hallen von Irdorath�";
};

INSTANCE ItKe_KlosterSchatz(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Schatzkammer";
	
	TEXT[2]				=	"Der Schl�ssel zur ";
	TEXT[3]				=   "Schatzkammer im Kloster";	
};

INSTANCE ItKe_KlosterStore(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Vorratskammer";
	
	TEXT[2]				=	"Der Schl�ssel zur ";
	TEXT[3]				=   "Vorratskammer im Kloster";
};

INSTANCE ItKe_KDFPlayer(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Gemach";
	
	TEXT[2]				=	"Der Schl�ssel zum ";
	TEXT[3]				=   "Gemach im Kloster";
};

INSTANCE ItKe_IgarazChest_Mis(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Igaraz' Truhenschl�ssel";
};

INSTANCE ItKe_Innos_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Pforte";
	
	TEXT[2]				=	"Der Schl�ssel zur Pforte";
	TEXT[3]				=   "des Innos Klosters";	
};

INSTANCE ItKe_KlosterBibliothek(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kloster: Bibliothek";
	
	TEXT[2]				=	"Der Schl�ssel zur ";
	TEXT[3]				=   "Bibliothek im Kloster";
	
};

//****************************************************************************
//				Crypta-Schl�ssel
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_EVT_CRYPT_01(C_Item)
{
	name 				=	"Alter Messingschl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Krypta";
	
	TEXT[2]				=	"Der Schl�ssel vom Skelett in Raum 1";
};

INSTANCE ItKe_EVT_CRYPT_02(C_Item)
{
	name 				=	"Alter Messingschl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Krypta";
	
	TEXT[2]				=	"Der Schl�ssel vom Skelett in Raum 2";
	
};

INSTANCE ItKe_EVT_CRYPT_03(C_Item)
{
	name 				=	"Alter Messingschl�ssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Krypta";
	
	TEXT[2]				=	"Der Schl�ssel vom Skelett Raum 3";
	
};