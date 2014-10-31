/* 

DESCRIPTION:
- RAN PREINIT BEFORE THE BI RESPAWN MENU AUTO POPS AT MISSION START KILLING THE PLAYER RENDERING HIM A CIV (DEAD MEN BELONG TO CIV SIDE). 
	- WHICH MAKES ( SIDE PLAYER ) CHECKS WORTHLESS WHILE THE PLAYER IS DEAD AND ESENTIALLY WHEN THE BI RESPAWN MENU !ISNULL (SINCE THE ONLY TIME THE MENU !ISNULL... IS ON DEATH)
 
- STORES THE PLAYER'S SIDE INTO A LOCAL GLOBAL VARIABLE BEFORE HE'S KILLED (PREINIT) AS A WORK AROUND.
- CAN BE USED ANYTIME THE PLAYER IS DEAD TO GET THE PROPER SIDE RETURNED... AND ALIVE OFCOURSE TOO.
		
USAGE EXAMPLE:
if (isDedicated) exitWith {};
SWITCH ( BCMSIDEPLAYER ) DO {
	WEST:{};
	EAST:{};
	INDEPENDENT:{};
};

*/

[] spawn {
	if (isDedicated) exitWith {};
	waitUntil { !( isNull player ) };

	BCMSIDEPLAYER = switch ( side player ) do {
		case WEST:{WEST;};
		case EAST:{EAST;};
		case INDEPENDENT:{INDEPENDENT;};
	};
};

nil
