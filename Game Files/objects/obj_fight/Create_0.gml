
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
if(instance_exists(obj_OverworldPC) ){
	
	
	obj_OverworldPC.visible = false;
	obj_OverworldPC.hasControl = false;
	
	}
	
fightStyles = create_fight_style_entry(

	["Rock",RPS.rock, "DMG: 5, DESC: Solid choice"],
	["Paper",RPS.paper, "DMG: 5, DESC: Watch the edges"],
	["Scissors",RPS.scissors, "DMG: 5, DESC: You can't run"],
	["Boulder", RPS.boulder, "DMG: 10, DESC: It's a stone..."],
	["Cardboard", RPS.cardboard, "DMG: 10, DESC: The white bread of packing"],
	["Hedge Trimmer", RPS.hedgeTrimmer, "DMG: 10, DESC: Cut's, cleaves, and shears"],
	["Lizards", RPS.lizards, "DMG: 7, DESC: The class pet"],
	["Water", RPS.water, "DMG: 7, DESC: Bubble Blast Go"],
	["Fire", RPS.fire, "DMG: 7, DESC: Use Flame Sweep!"],
	["Wind", RPS.wind, "DMG: 7, DESC: Must have been the wind."],
	["Kaiju", RPS.godzilla, "DMG: 10, DESC: A Titan of the class"],
	["Nuke",RPS.nuke, "DMG: 10, DESC: It's Kind of Unfair"]
	
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