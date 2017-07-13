FUNC VOID B_Upgrade_Hero_HackChance (var int Wert)
{
	var string concatText;
	var int gelernterWert;
	var int erzLernWert;
	
	if((Hero_HackChance + Wert) > 100)
	{
		if(Hero_HackChance == 100)
		{
			gelernterWert = 0;
		}
		else
		{
			gelernterWert = 100 - Hero_HackChance;
		};
	}
	else
	{
		gelernterWert = Wert;
	};
	
	erzLernWert = gelernterWert / 2;
	if(erzLernWert >= 5)
	{
		erzLernWert = erzLernWert / 2;
	};
	if(Hero_MagicalOreHackChance == 100)
	{
		erzLernWert = 0;
	};
	
	Hero_HackChance	= (Hero_HackChance + gelernterWert);
	Hero_MagicalOreHackChance = Hero_MagicalOreHackChance + erzLernWert;
	
	if(gelernterWert > 0)
	{
		concatText = ConcatStrings (PRINT_ADDON_HACKCHANCE, IntToString(gelernterWert));
		concatText = ConcatStrings (concatText, ")");
		PrintScreen	(concatText, -1, 30, FONT_ScreenSmall, 2);
	};
	if(erzLernWert > 0)
	{
		concatText = ConcatStrings ("Wissen über Erzhacken gesteigert! (+ ", IntToString(erzLernWert));
		concatText = ConcatStrings (concatText, ")");
		PrintScreen	(concatText, -1, 33, FONT_ScreenSmall, 2);
	};
	
	if(gelernterWert > 0 || erzLernWert > 0)
	{
		Snd_Play ("Geldbeutel");
	};
};
