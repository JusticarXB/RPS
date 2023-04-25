
rW = room_width;
rH = room_height;



PCMAX = global.health;

EMMAX = global.EmHealth;

currentStyle = 0;
styleLength = array_length(global.styleLoadout) -1;
global.styleChange = false;

global.chosen = false;
global.EMChosenSelect = false;
PCchosenStyleName = "";
EMchosenStyleName = "";
PCStyle = RPS.rock;
EMStyle = RPS.rock;


global.combatPhase = fightState.intro;


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


