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
			
		case "npc4":
			scr_text("No talk", "Ken");
		
			scr_text("Let's fight!!!", "Ken");
			
			global.incomingFight = true;
		break;
		
		#region Tutorial Kid
		
		case "TutorialTimmy":
		
			scr_text("Hey, You!!!", "TutorialTimmy");
			
			scr_text("You're that new kid right?", "TutorialTimmy");
			
			scr_option("Yes", "Tim - Yes");
			scr_option("No", "Tim - No");
		
		break;
		
		case "Tim - Yes":
		
			scr_text("Yeah, that's what I thought.", "TutorialTimmy");
			scr_text("You don't have that look in your eye...", "TutorialTimmy");
			scr_text("a grizzled veteran of the playground", "TutorialTimmy");
			
			scr_game_text("Tim prop");
		
		break;
		
		case "Tim - No":
		
			scr_text("What? No, you're definitely him.", "TutorialTimmy");
			scr_text("Anyways...", "TutorialTimmy");
			
			scr_game_text("Tim prop")
			
		
		break;
		
		case "Tim prop":
		
			scr_text("So since you're new and all...", "TutorialTimmy");
			scr_text("It looks like it's up to me, to explain to you 'The' game on the playground", "TutorialTimmy");
			scr_text("It's called Rule The Playground Schoolyard...", "TutorialTimmy");
			scr_text("I know the name is bad, but I didn't come up with it man.", "TutorialTimmy");
			scr_text("The game is like Rock Paper and Scissors and that popular game, Poketottero", "TutorialTimmy");
			
			scr_option("That sounds cool.", "Tim Cool");
			scr_option("I don't think I wanna play.", "Tim Reject");
		
		break;
		
		case "Tim Cool":
		
			scr_text("Sweet, I knew you'd like it!", "TutorialTimmy");
			scr_text("I'll tell you how to play, then we'll battle one another!", "TutorialTimmy");
			
			scr_game_text("Tim Rules");
		
		break;
		
		case "Tim Reject":
		
			scr_text("Wait, no please? I really want you to play...", "TutorialTimmy");
			
			scr_option("...Fine.", "Tim Rules");
			scr_option("No, I don't like these kind of games", "Tim DoubleReject");
			
		
		break;
		
		case "Tim DoubleReject":
			
			scr_text("aawww... really?", "TutorialTimmy");
			scr_text("Okay, whatever man...", "TutorialTimmy");
			
			game_end();
			
		break;
		
		case "Tim Rules":
			////////////////////perhaps change this when you potentially change the whole combat system
			scr_text("Alright, so first you have to find someone to challenge, it's easy enough nearly everybody is playing it.", "TutorialTimmy");
			scr_text("Next, after challenging somebody, you start the real game!", "TutorialTimmy");
			scr_text("You and your opponent each have 3 styles, or 3 different attacks...", "TutorialTimmy");
			scr_text("You choose one of these styles using the up and down arrow keys and press enter to choose your option.", "TutorialTimmy");
			scr_text("Then you and your opponent each reveal your attacks...", "TutorialTimmy");
			scr_text("This is where the game differs from Rock, Paper, Scissors the most.", "TutorialTimmy");
			scr_text("But instead of normal Rock, Paper, Scissors rules, where somebody loses and somebody wins...", "TutorialTimmy");
			scr_text("You deal damage to each others health, every attack has a certain damage value that is amplified by your selection.", "TutorialTimmy");
			scr_text("So like if you choose rock and your opponent chooses paper, you deal double damage to their health.", "TutorialTimmy");
			scr_text("But the opposite is also true, so if you had paper and they had rock they would do double damage to you.", "TutorialTimmy");
			scr_text("When your health is at or lower than 0, you lose, if you enemy's health is at or lower than 0 they lose, if both of you have 0 or less health than everybody loses.", "TutorialTimmy");
			scr_text("And that's about it.", "TutorialTimmy");
			
			scr_option("is it?", "Tim Final");
			scr_option("Wait... run by that again.", "Tim RulesAgain");
			
			
			
		
		break;
		
		case "Tim RulesAgain":
		
					////////////////////perhaps change this when you potentially change the whole combat system
			scr_text("Sure, no problem.", "TutorialTimmy");
			scr_text("Alright, so first you have to find someone to challenge, it's easy enough nearly everybody is playing it.", "TutorialTimmy");
			scr_text("Next, after challenging somebody, you start the real game!");
			scr_text("You and your opponent each have 3 styles, or 3 different attacks...", "TutorialTimmy");
			scr_text("You choose one of these styles using the up and down arrow keys and press enter to choose your option.", "TutorialTimmy");
			scr_text("Then you and your opponent each reveal your attacks...", "TutorialTimmy");
			scr_text("This is where the game differs from Rock, Paper, Scissors the most.", "TutorialTimmy");
			scr_text("But instead of normal Rock, Paper, Scissors rules, where somebody loses and somebody wins...", "TutorialTimmy");
			scr_text("You deal damage to each others health, every attack has a certain damage value that is amplified by your selection.", "TutorialTimmy");
			scr_text("So like if you choose rock and your opponent chooses paper, you deal double damage to their health.", "TutorialTimmy");
			scr_text("But the opposite is also true, so if you had paper and they had rock they would do double damage to you.", "TutorialTimmy");
			scr_text("When your health is at or lower than 0, you lose, if you enemy's health is at or lower than 0 they lose, if both of you have 0 or less health than everybody loses.", "TutorialTimmy");
			scr_text("And that's about it.", "TutorialTimmy");
			
			scr_option("is it?", "Tim final");
			scr_option("Wait... run by that again.", "Tim RulesAgain");
			
		break;
		
		case "Tim Final":
		
			scr_text("I mean that's about it, OH... there is one more thing.", "TutorialTimmy");
			scr_text("There's this one really annoying kid, who's made himself 'Prince of The Playground', because he made up his own powerful style that beat everybody else's", "TutorialTimmy");
			scr_text("Once he did that, a lot of the other kids started to use the move too.", "TutorialTimmy");
			scr_text("But the... Prince, started making up more rules, to the game, to where no one can use the ability unless they have a special token...", "TutorialTimmy");
			scr_text("So now no one can beat him...", "TutorialTimmy");
			scr_text("But so long as you keep your head down, I'm sure he won't embaress you.", "TutorialTimmy");
			
			scr_option("Alright... well now I want to play", "Tim Fight");
			scr_option("I kinda want to beat this guy.", "Tim What");
		
		break;
		
		case "Tim FightChoice":
		
			scr_text("Then let's have a practice battle and then you can be on your way", "TutorialTimmy");
			
			scr_option("Sure", "Tim Fight");
			scr_option("Nah, I just want to go", "Tim What");
		
		break;
		
		case "Tim What":
		
			scr_text("Wait, are you sure that's a good idea?", "TutorialTimmy");
			scr_text("Don't you want to have a practice battle first", "TutorialTimmy");
			
			scr_option("I guess", "Tim FightChoice");
			scr_option("nah I just want to leave", "Tim Leave");
		
		break;
		
		case "Tim Leave":
			
			scr_text("Alright see ya, if you need anything I'll be under the tree with my friends", "TutorialTimmy");
			
		break;
		
		case "Tim Fight":
		
			scr_text("Alright Let's do it!", "TutorialTimmy");
		
			global.incomingFight = true;
		break;
		#endregion
		
		#region rando kids
		
		case "random1":
		
			scr_text("I don't really like RPS, it's too complicated... that's why I play magic instead");
			
		
		break;
		
		case "rando2":
		
			scr_text("Don't tell the teacher but... I've got Wacky Bandz, want any?");
		
		break;
		
		case "rando3":
			
			scr_text("I hope someone finally takes down the Prince, he keeps hogging the playset, claiming it as his castle... it's annoying");
			
		break;
		
		case "rando4":
		
			scr_text("My brother got me this cool toy for my birthday want to see?");
			
			scr_option("Yeah!", "WH Toy");
			scr_option("Nah", "No rando");
		
		break;
		
			case "No rando":
		
				scr_text("That's alright.");
		
			break;
		
			case "WH Toy":
		
				scr_text("[They show you this 8in tall soldier in green armour, it's helmet looks fearsome and it is holding a weird looking sword with teeth]")
			
				scr_option("Woah, that's awesome!", "WH Toy Lore");
				scr_option("That's kind of cool.", "WH Out");
		
			break;
		
			case "WH Toy Lore":
		
				scr_text("Yeah they're cool Space warriors, who go around the galaxy killing aliens and saving people.");
				scr_text("This guy is a part of a group called the Night Angels");
			
				scr_option("Nice.", "WH Out");
		
			break;
		
			case "WH Out":
		
				scr_text("Thanks for liking my toy.");
		
			break;
			
		case "rando5":
		
			scr_text("I would love to play kickball, but everyone is just standing around waiting to be challenged");
		
		break;
		
		case "rando6":
		
			scr_text("You know my mom said that, these kinds of games are a complete waste of time and mental capacity and that kids are better off with no electronics...");
			scr_text("But then she gets on her phone and plays Candy Crunch. So I don't know how much faith I put in her opinion.");
			
		
		break;
		
		case "rando7":
		
			scr_text("Can't we just stop playing RPS and do something fun for once like climbing on top of the monkey bars or swinging really really fast");
		
		break;
		
		case "rando8":
		
		
			scr_text("I used to be a player like you... until I took a paper to the hand.");
			scr_text("Now it just hurts to hold a pencil");
			
		break;
		
		case "rando9":
		
			scr_text("I think RPS is kind of dumb, which is why I'm coming up with my own game...");
			scr_text("It's gonna be so much better than RPS");
		
		break;
		
		#endregion
		
		#region Style Fights
		
		#region Boulder Boy
		
			case "Boulder Boy":
				//add in character
				scr_text("So... you're the new kid?");
				
				scr_option("Yep", "Boulder Y");
				scr_option("Nope",  "Confuse 1");
			
			break;
			
			case "Boulder Y":
			
				scr_text("Well, my name is Bruce Burns, and you aren't going to be taking my token.");
				
				scr_option("You won't have an option", "Boulder Fight");
				scr_option("okay, I don't want trouble", "Boulder Retreat");
			
			break;
			
			case "Boulder Y Confuse":
			
				scr_text("Okay... well, my name is Bruce Burns, and you aren't going to be taking my token.");
				
				scr_option("You won't have an option", "Boulder Fight");
				scr_option("okay, I don't want trouble", "Boulder Retreat");
			
			break;
			
			case "Confuse 1":
			
				scr_text("Yes you are, I know it is, I've never seen you on the playground before");
				
				scr_option("How do you not remember me?", "Confuse 2");
				scr_option("Then why ask if I'm the transfer student?", "doubt");
			
			break;
			
			case "Confuse 2":
			
				scr_text("STOP IT, I KNOW IT'S YOU!!!");
				scr_text("I was just trying to act cool");
				
				scr_option("Okay sorry, do you cool thing", "Boulder Y Confuse");
				scr_option("I can't believe you don't remmeber me we were in Pre-K together", "Confuse 3");
			
			break;
			
			case "Confuse 3":
			
			scr_text("Okay I'm done, you're not making this fun anymore.");
			scr_text("I'm gonna go play kickball with Kyle");
			
			break;
			
			case "doubt":
			
				scr_text("Alright, I've had enough I challenge you to a fight");
				global.incomingFight = true;
			break;
			
			case "Boulder Fight":
			
				scr_text("Awesome, now let's fight!");
				global.incomingFight = true;
			
			break;
			
			case "Boulder Retreat":
			
				scr_text("I'll be waiting, if you want to fight again.");
			
			break;
			
		#endregion
		
		#region Water
			
			case "Water Welma":
				//add in character
				scr_text("Hey I'm Welma, I hold the water token and... huff.....");
				scr_text("I have to be honest with you, I don't really want to play this game anymore.");
				scr_text("the other kids just like my style, but none of them can beat me");
				
				
				scr_option("Well hopefully I can change that", "Water Fight");
				scr_option("Then why not just give the token to me?", "Water Question");
			
			break;
			
			
			case "Water Fight":
			
				scr_text("I sure hope so.");
				
				global.incomingFight = true;
			
			break;
			
			case "Water Question":
			
				scr_text("Because Prince is giving me some of his older brother's superhero comics.");
				scr_text("And all I have to do is make sure others don't get my token");
				
				scr_option("Well I guess that's fair", "Water Choice");
			
			break;
			
			case "Water Choice":
			
				scr_text("So are you gonna fight me or not?");
				
				scr_option("Fight", "Fight");
				scr_option("Nah", "Water Reject");
			
			break;
			
			case "Water Reject":
			
				scr_text("Well, you know where to find me.");
			
			break;
		#endregion
		
		#region Cardboard Carolyn
		
		
		
		#endregion
		
		#region Trimmers
		
		
		
		#endregion
		
		#region lizards
		
		
		
		#endregion
		
		#region Fire
		
		
		
		#endregion
		
		#region Wind
		
		
		
		#endregion
		
		#region Kaiju
		
		
		
		#endregion
		
		#region Nuke
		
		
		
		#endregion
		
		#region General
		
		case "Fight":
		
			global.incomingFight = true;
		
		break;
		
		//debug
		
		case "give Boulder":
		
			scr_text("Give Boulder");
			
			scr_changeAvailableStyles(3);
			
		
		break;
		
		#endregion
		
		#endregion
	}
}