// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text(_text_id){



	switch(_text_id){

	//change these
	
	//also NPC1 should be used as an example for what a dialogue tree looks like
	case "npc1":
		scr_text("Let the galaxy burn", "Horus");
			scr_txtColor(15,19 , c_orange,c_orange,c_white,c_white);
			scr_textShake(15,19);
		scr_text("I didn't want this", "Horus");
		
		scr_option("I am with you Warmaster", "npc1 - yes");
		scr_option("Never Horus!", "npc1 - no");
	break;
	
	case "npc1 - yes":
	
		scr_text("Excellent...");
		scr_textFloat(1,12,3);
	
	break;
	
	case "npc1 - no":
	
		scr_text("Then I have a task for you my son... Die...", "Horus");
		scr_txtColor(37,39,c_red,c_red,c_red,c_red);
		scr_textFloat(37,43,3);
		global.incomingFight = true;
	
	break;

	case "npc2":
		scr_text("Victory as the galaxy burns, Victory as the imperium rots around us, victory as humanity rages against the dying of the light.", "Guilleman");
		scr_text("Victory...", "Guilleman");
		
		scr_option("Guilleman...", "npc2 - yes");
		scr_option("Sangunius...", "npc2 - no");
	break;
	
		case "npc2 - yes":
		
			scr_text("Correct", "Guilleman");
	
		break;
	
		case "npc2 - no":
	
			scr_text("No, the angel has fallen", "Sanguinius");
	
		break;
	
	case "npc3":
		scr_text("Glory to the Khagan, and a thousand deaths to his enemies!!!");
		scr_text("HAHAHAHAHAHAHAHAHAH.....");
		
		scr_option("White Scars", "npc3 - yes");
		scr_option("Raven Gaurd", "npc3 - no");
	break;

	case "npc3 - yes":
		
		scr_text("Correct!");
		
	break;
	
	case "npc3 - no":
	
		scr_text("No they await in darkness");
	
	break;
	}
}