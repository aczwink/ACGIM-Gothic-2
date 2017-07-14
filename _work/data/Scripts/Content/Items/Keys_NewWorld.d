INSTANCE ItKe_Bandit(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Truhenschlüssel Bandit";
	
	TEXT[2]				=	"Der Schlüssel";
	TEXT[3]				=   "gehörte einem Banditen";
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

	description			= 	"Khorinis-Umgebung: Dexter's Truhenschlüssel";
};

INSTANCE ItKe_Xardas(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Xardas Truhenschlüssel";
	
	TEXT[2]				=	"für die Truhe in seinem Turm";	
};

INSTANCE ItKe_ThiefTreasure(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Unbekannter Schlüssel";
	
	TEXT[2]				=	"Sehr stabiler Schlüssel...";
};

INSTANCE ItKe_Pass_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Schlüssel zum Pass";
	TEXT[2]				= 	"Öffnet das Tor am Pass";
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
	
	TEXT[1]				= 	"Die Truhe zu dem Schlüssel";
	TEXT[2]				= 	"steht unter einer Brücke";
	TEXT[3]				= 	"und enthält einen Runenstein";
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
	
	TEXT[2]				=	"Passt zur Tür des";
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

	description			= 	"Khorinis-Umgebung: Teleportsteinhöhle Taverne";
	
	TEXT[2]				=	"Passt zur Tür der Höhle";
	TEXT[3]				=   "südlich seiner Taverne";
};

INSTANCE ITKE_ORLAN_HOTELZIMMER(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Zimmerschlüssel";
	
	TEXT[2]				=	"der Taverne ´Zur toten Harpie´";
};

INSTANCE ItKe_MagicChest(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION |ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Alter Schlüssel";
	
	TEXT[1]				=	"Ein alter eiserner Schlüssel.";
	TEXT[2]				=   "Er könnnte zu einem ";
	TEXT[3]				=	"Vorhängeschloss gehören.";
	TEXT[4] = "Für Pyrokars Prüfung.";
};

INSTANCE ItKe_CHEST_SEKOB_XARDASBOOK_MIS (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Xardas Truhenschlüssel";
	
	TEXT[2]				=   "für die Truhe auf Sekobs Bauernhof";
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

	description			= 	"Kloster: Geheimer Schlüssel";
	
	TEXT[2]				= 	"Aus dem Buch ´Die Hallen von Irdorath´";
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
	
	TEXT[2]				=	"Der Schlüssel zur ";
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
	
	TEXT[2]				=	"Der Schlüssel zur ";
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
	
	TEXT[2]				=	"Der Schlüssel zum ";
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

	description			= 	"Kloster: Igaraz' Truhenschlüssel";
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
	
	TEXT[2]				=	"Der Schlüssel zur Pforte";
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
	
	TEXT[2]				=	"Der Schlüssel zur ";
	TEXT[3]				=   "Bibliothek im Kloster";
	
};

//****************************************************************************
//				Crypta-Schlüssel
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_EVT_CRYPT_01(C_Item)
{
	name 				=	"Alter Messingschlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Krypta";
	
	TEXT[2]				=	"Der Schlüssel vom Skelett in Raum 1";
};

INSTANCE ItKe_EVT_CRYPT_02(C_Item)
{
	name 				=	"Alter Messingschlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Krypta";
	
	TEXT[2]				=	"Der Schlüssel vom Skelett in Raum 2";
	
};

INSTANCE ItKe_EVT_CRYPT_03(C_Item)
{
	name 				=	"Alter Messingschlüssel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	"Khorinis-Umgebung: Krypta";
	
	TEXT[2]				=	"Der Schlüssel vom Skelett Raum 3";
	
};