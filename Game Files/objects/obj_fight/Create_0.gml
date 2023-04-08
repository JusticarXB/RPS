
rW = room_width;
rH = room_height;


PCHP = 100;
PCMAX = PCHP;


EMHP = 100;

EMMAX = EMHP;

currentStyle = 0;
styleLength = array_length(global.styleLoadout) -1;

chosen = false;

combatPhase = fightState.intro;

/* For when you are implementing 
playerSequence = layer_sequence_create()
enemySequence = layer_sequence_create( )
*/
if(instance_exists(obj_PC) ){
	
	
	obj_PC.visible = false;
	obj_PC.hasControl = false;
	
	}
	
fightStyles = create_fight_style_entry(

	["Rock",RPS.rock, "DMG: 5, DESC: Solid choice"],
	["Paper",RPS.paper, "DMG: 5, DESC: Watch the edges"],
	["Scissors",RPS.scissors, "DMG: 5, DESC: You can't run"]
);

//fight states
enum fightState {

intro,
startTurn,
wait,
process,
checkFinish,
endTurn,
win,
lose


}

//enemy Fight Script, random currently but changes with difficulty setting
EmScript = irandom_range(0,2);

//used to prevent the next turn from starting without pressing enter when in the fight;
dialogBlock = false;
damageDealt = false;

playerDmg = 0;
EMDmg = 0;