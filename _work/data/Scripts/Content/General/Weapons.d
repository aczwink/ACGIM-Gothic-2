func string AppendWeaponStats(var string text, var int damage, var int strength, var int value)
{
	var string tmp;
	
	text = ConcatStrings(text, " - ");
	//damage
	text = ConcatStrings(text, NAME_Damage);
	text = ConcatStrings(text, ": ");
	tmp = IntToString(damage);
	text = ConcatStrings(text, tmp);
	
	//strength
	text = ConcatStrings(text, ", Stärke: ");
	tmp = IntToString(strength);
	text = ConcatStrings(text, tmp);
	
	//value
	text = ConcatStrings(text, ", Wert: ");
	tmp = IntToString(value);
	text = ConcatStrings(text, tmp);
	
	return text;
};