var int groupMemberEntriesSet[10];
//'var' arrays can only be of type int
var C_NPC groupMember0;
var C_NPC groupMember1;
var C_NPC groupMember2;
var C_NPC groupMember3;
var C_NPC groupMember4;
var C_NPC groupMember5;
var C_NPC groupMember6;
var C_NPC groupMember7;
var C_NPC groupMember8;
var C_NPC groupMember9;

/*func void PrintGroupMembers()
{
	var string concatText;
	
	if(groupCounter == 0)
	{
		concatText = "-";
	}
	else if(groupCounter == 1)
	{
		concatText = groupMemberName0;
	}
	else if(groupCounter == 2)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
	}
	else if(groupCounter == 3)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
	}
	else if(groupCounter == 4)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
	}
	else if(groupCounter == 5)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName4);
	}
	else if(groupCounter == 6)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName4);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName5);
	}
	else if(groupCounter == 7)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName4);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName5);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName6);
	}
	else if(groupCounter == 8)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName4);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName5);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName6);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName7);
	}
	else if(groupCounter == 9)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName4);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName5);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName6);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName7);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName8);
	}
	else if(groupCounter == 10)
	{
		concatText = ConcatStrings(groupMemberName0, ", ");
		concatText = ConcatStrings(concatText, groupMemberName1);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName2);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName3);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName4);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName5);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName6);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName7);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName8);
		concatText = ConcatStrings(concatText, ", ");
		concatText = ConcatStrings(concatText, groupMemberName9);
	};
	
	concatText = ConcatStrings("Gruppe: ", concatText);
	PrintScreen(concatText, -1, 33, FONT_ScreenSmall, 5);
};*/

func void CheckGroupMembers()
{
	if(groupMemberEntriesSet[0] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember0))
		{
			if(Npc_IsDead(groupMember0))
			{
				groupMemberEntriesSet[0] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[0] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[1] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember1))
		{
			if(Npc_IsDead(groupMember1))
			{
				groupMemberEntriesSet[1] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[1] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[2] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember2))
		{
			if(Npc_IsDead(groupMember2))
			{
				groupMemberEntriesSet[2] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[2] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[3] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember3))
		{
			if(Npc_IsDead(groupMember3))
			{
				groupMemberEntriesSet[3] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[3] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[4] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember4))
		{
			if(Npc_IsDead(groupMember4))
			{
				groupMemberEntriesSet[4] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[4] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[5] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember5))
		{
			if(Npc_IsDead(groupMember5))
			{
				groupMemberEntriesSet[5] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[5] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[6] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember6))
		{
			if(Npc_IsDead(groupMember6))
			{
				groupMemberEntriesSet[6] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[6] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[7] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember7))
		{
			if(Npc_IsDead(groupMember7))
			{
				groupMemberEntriesSet[7] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[7] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[8] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember8))
		{
			if(Npc_IsDead(groupMember8))
			{
				groupMemberEntriesSet[8] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[8] = FALSE;
		};
	};
	
	if(groupMemberEntriesSet[9] == TRUE)
	{
		if(Hlp_IsValidNpc(groupMember9))
		{
			if(Npc_IsDead(groupMember9))
			{
				groupMemberEntriesSet[9] = FALSE;
			};
		}
		else
		{
			groupMemberEntriesSet[9] = FALSE;
		};
	};
};

func void PrintGroupMembers()
{
	var string printText;
	var int first;
	
	printText = "Gruppe: ";
	first = TRUE;
	
	if(groupMemberEntriesSet[0] == TRUE)
	{
		printText = ConcatStrings(printText, groupMember0.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[1] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember1.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[2] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember2.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[3] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember3.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[4] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember4.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[5] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember5.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[6] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember6.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[7] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember7.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[8] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember8.name);
		first = FALSE;
	};
	if(groupMemberEntriesSet[9] == TRUE)
	{
		if(first == FALSE)
		{
			printText = ConcatStrings(printText, ", ");
		};
		printText = ConcatStrings(printText, groupMember9.name);
		first = FALSE;
	};
	
	if(first == TRUE)
	{
		printText = ConcatStrings(printText, "-");
	};
	
	PrintScreen(printText, -1, 33, FONT_ScreenSmall, 5);
};

func void SetGroupMember(var C_NPC npc)
{
	if(groupMemberEntriesSet[0] == FALSE)
	{
		groupMemberEntriesSet[0] = TRUE;
		groupMember0 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[1] == FALSE)
	{
		groupMemberEntriesSet[1] = TRUE;
		groupMember1 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[2] == FALSE)
	{
		groupMemberEntriesSet[2] = TRUE;
		groupMember2 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[3] == FALSE)
	{
		groupMemberEntriesSet[3] = TRUE;
		groupMember3 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[4] == FALSE)
	{
		groupMemberEntriesSet[4] = TRUE;
		groupMember4 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[5] == FALSE)
	{
		groupMemberEntriesSet[5] = TRUE;
		groupMember5 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[6] == FALSE)
	{
		groupMemberEntriesSet[6] = TRUE;
		groupMember6 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[7] == FALSE)
	{
		groupMemberEntriesSet[7] = TRUE;
		groupMember7 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[8] == FALSE)
	{
		groupMemberEntriesSet[8] = TRUE;
		groupMember8 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	}
	else if(groupMemberEntriesSet[9] == FALSE)
	{
		groupMemberEntriesSet[9] = TRUE;
		groupMember9 = Hlp_GetNpc(Hlp_GetInstanceID(npc));
	};
};

func void UnsetGroupMember(var C_NPC npc)
{	
	if(groupMemberEntriesSet[0] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember0))
		{
			groupMemberEntriesSet[0] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[1] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember1))
		{
			groupMemberEntriesSet[1] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[2] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember2))
		{
			groupMemberEntriesSet[2] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[3] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember3))
		{
			groupMemberEntriesSet[3] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[4] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember4))
		{
			groupMemberEntriesSet[4] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[5] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember5))
		{
			groupMemberEntriesSet[5] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[6] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember6))
		{
			groupMemberEntriesSet[6] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[7] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember7))
		{
			groupMemberEntriesSet[7] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[8] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember8))
		{
			groupMemberEntriesSet[8] = FALSE;
			return;
		};
	};
	
	if(groupMemberEntriesSet[9] == TRUE)
	{
		if(Hlp_GetInstanceID(npc) == Hlp_GetInstanceID(groupMember9))
		{
			groupMemberEntriesSet[9] = FALSE;
		};
	};
};

//Functions for global use
func void EnterGroup(var C_NPC npc)
{
	var string concatText;
	
	CheckGroupMembers();
	
	if(npc.aivar[AIV_PARTYMEMBER] == FALSE) //join only when not joined already
	{
		npc.aivar[AIV_PARTYMEMBER] = TRUE; //join party
		SetGroupMember(npc);
		
		//output
		concatText = ConcatStrings(npc.name, " betritt die Gruppe...");
		PrintScreen(concatText, -1, 30, FONT_ScreenSmall, 2);	
		PrintGroupMembers();
	};
};

func void LeaveGroup(var C_NPC npc)
{
	var string concatText;
	
	CheckGroupMembers();
	
	if(npc.aivar[AIV_PARTYMEMBER] == TRUE) //leave only when still in party
	{
		npc.aivar[AIV_PARTYMEMBER] = FALSE; //leave party
		UnsetGroupMember(npc);
		
		//output
		concatText = ConcatStrings(npc.name, " verlässt die Gruppe...");
		PrintScreen(concatText, -1, 30, FONT_ScreenSmall, 2);
		PrintGroupMembers();
	};
};