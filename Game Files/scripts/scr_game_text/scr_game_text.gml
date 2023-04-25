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
			
			global.endGame = true;
			
		break;
		
		case "Tim Rules":
			////////////////////perhaps change this when you potentially change the whole combat system
			scr_text("Alright, so first you have to find someone to challenge, it's easy enough nearly everybody is playing it.", "TutorialTimmy");
			scr_text("Next, after challenging somebody, you start the real game!", "TutorialTimmy");
			scr_text("Firstly, you only have 3 attacks, and you have to select your attacks before the battle begins, you can do that from the pause menu then in the characters selection and finally the styles menu.", "TutorialTimmy");
			scr_text("So when you fight someone, you'll be able to select one of these three options using the up and down arrow keys and then press enter to select your attack", "TutorialTimmy");
			scr_text("Each style can beat 4-5 other styles, the style chart is provided in the instructions, if you play a style that beats your opponents, you deal damage to their health instead of just winning like Rock, Paper, Scissors.", "TutorialTimmy");
			scr_text("And that's about it.", "TutorialTimmy");
			
			scr_option("is it?", "Tim Final");
			scr_option("Wait... run by that again.", "Tim RulesAgain");
			
			
			
		
		break;
		
		case "Tim RulesAgain":
		
					////////////////////perhaps change this when you potentially change the whole combat system
			scr_text("Sure, no problem.", "TutorialTimmy");
			scr_text("Firstly, you only have 3 attacks, and you have to select your attacks before the battle begins, you can do that from the pause menu then in the characters selection and finally the styles menu.", "TutorialTimmy");
			scr_text("So when you fight someone, you'll be able to select one of these three options using the up and down arrow keys and then press enter to select your attack", "TutorialTimmy");
			scr_text("Each style can beat 4-5 other styles, the style chart is provided in the instructions, if you play a style that beats your opponents, you deal damage to their health instead of just winning like Rock, Paper, Scissors.", "TutorialTimmy");
			scr_text("If you reduce your opponents health to 0 you win, if your opponent reduces your health to 0 they win. And that's about it.", "TutorialTimmy");
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
		
		case "Tim Loss":
			
			scr_text("Nice job new kid! When you beat some of the other kids on the playground they'll give you tokens, with the tokens you can now use that style!", "TutorialTimmy");
		
		break;
		#endregion
		
		#region rando kids
		
		case "random1":
		
			scr_text("I don't really like RPS, it's too complicated... that's why I play magic instead");
			
		
		break;
		
		case "rando2":
		
			scr_text("Don't tell the teacher but... I've got Wacky Bandz, want some?");
		
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
				scr_text("So... you're the new kid?", "Boulder");
				
				scr_option("Yep", "Boulder Y");
				scr_option("Nope",  "Confuse 1");
			
			break;
			
			case "Boulder Y":
			
				scr_text("Well, my name is Bruce Burns, and you aren't going to be taking my token.","Boulder");
				
				scr_option("You won't have an option", "Boulder Fight");
				scr_option("okay, I don't want trouble", "Boulder Retreat");
			
			break;
			
			case "Boulder Y Confuse":
			
				scr_text("Okay... well, my name is Bruce Burns, and you aren't going to be taking my token.", "Boulder");
				
				scr_option("You won't have an option", "Boulder Fight");
				scr_option("okay, I don't want trouble", "Boulder Retreat");
			
			break;
			
			case "Confuse 1":
			
				scr_text("Yes you are, I know it is, I've never seen you on the playground before", "Boulder");
				
				scr_option("How do you not remember me?", "Confuse 2");
				scr_option("Then why ask if I'm the transfer student?", "doubt");
			
			break;
			
			case "Confuse 2":
			
				scr_text("STOP IT, I KNOW IT'S YOU!!!", "Boulder");
				scr_text("I was just trying to act cool", "Boulder");
				
				scr_option("Okay sorry, do you cool thing", "Boulder Y Confuse");
				scr_option("I can't believe you don't remmeber me we were in Pre-K together", "Confuse 3");
			
			break;
			
			case "Confuse 3":
			
			scr_text("Okay I'm done, you're not making this fun anymore.", "Boulder");
			scr_text("I'm gonna go play kickball with Kyle", "Boulder");
			
			break;
			
			case "doubt":
			
				scr_text("Alright, I've had enough I challenge you to a fight", "Boulder");
				global.incomingFight = true;
			break;
			
			case "Boulder Fight":
			
				scr_text("Awesome, now let's fight!","Boulder");
				global.incomingFight = true;
			
			break;
			
			case "Boulder Retreat":
			
				scr_text("I'll be waiting, if you want to fight again.","Boulder");
			
			break;
			
			case "Boulder Loss":
			
				scr_text("That was great new kid, here you can have my token!", "Boulder")
				scr_option("Take token", "give boulder");
		
			break;
			
		#endregion
		
		#region Water
			
			case "Water Welma":
				//add in character
				scr_text("Hey I'm Welma, I hold the water token and... huff.....", "Welma");
				scr_text("I have to be honest with you, I don't really want to play this game anymore.", "Welma");
				scr_text("the other kids just like my style, but none of them can beat me","Welma");
				
				
				scr_option("Well hopefully I can change that", "Water Fight");
				scr_option("Then why not just give the token to me?", "Water Question");
			
			break;
			
			
			case "Water Fight":
			
				scr_text("I sure hope so.","Welma");
				
				global.incomingFight = true;
			
			break;
			
			case "Water Question":
			
				scr_text("Because Prince is giving me some of his older brother's superhero comics.","Welma");
				scr_text("And all I have to do is make sure others don't get my token","Welma");
				
				scr_option("Well I guess that's fair", "Water Choice");
			
			break;
			
			case "Water Choice":
			
				scr_text("So are you gonna fight me or not?","Welma");
				
				scr_option("Fight", "Fight");
				scr_option("Nah", "Water Reject");
			
			break;
			
			case "Water Reject":
			
				scr_text("Well, you know where to find me.","Welma");
			
			break;
			
			case "Water Loss":
			
				scr_text("That was kind of fun, you're pretty good...", "Welma");
				scr_text("Oh and here's my token", "Welma");
				
				scr_option("Take token", "give water");
		
			break;
		#endregion
		
		#region Cardboard Carolyn
		case "Cardboard Carolyn":	
			scr_text("So your're the new kid? And you want my token, huh? Well come on then challenge me.", "Carolyn");
		
			scr_option("Okay, let's fight", "Fight");
			scr_option("Wait, can't I aska few questions", "Card Ques");
		
		break;
		
		case "Card Ques":
			
			scr_text("uuuuggghhhhh..... Fine. What is it?", "Carolyn");
			
			scr_option("Can't I just have your token?" , "Card Plea");
			scr_option("Nevermind, I want to fight", "Card Fight");
			
		
		break;
		
		case "Card Plea":
		
			scr_text("No... I like playing this game, and one I'm gonna try and take the Prince's title and become 'Princess of the Playground.'", "Carolyn");
			
			scr_option("Those are some big dreams", "Hint Kaiju");
			scr_option("Well so am I... maybe we can work together?", "Card Bargain");
			
		
		break;
		
		case "Card Fight":
		
			scr_text("Nice, let's do it!", "Carolyn");
			
			global.incomingFight = true;
		
		break;
		
		case "Hint Kaiju":
		
			scr_text("Bigger than you'd think.","Carolyn");
			
			scr_option("What does that mean?", "Card Bargain");
			
		break;
		
		case "Card Bargain":
		
			scr_text("I'll tell you what, if you beat me then I won't just give you my token, I'll tell you what it is and where you can find it.", "Carolyn");
			
			scr_option("Sure, that sounds good", "Card Fight");
			scr_option("Nah let's just fight.", "Fight");
			
		
		break;
		
		case "Card Lose":
		
			scr_text("Nice Job new kid. Before I give you my token, I need to tell you about what me and Kyle have been doing.", "Carolyn");
			scr_text("We have been making a new attack that might be enough to defeat Kyle's finally. Go talk to Kyle!","Carolyn");
			scr_text("Now, here's my token", "Carolyn");
			
			scr_option("Take token", "give cardboard");
			
		
		break;
		
		#endregion
		
		#region Trimmers
		
		case "Trim Tanner":
		
			scr_text("Hey new kid! I'm Tanner, but everybody calls me Trim, and you won't get in my way to become the Prince!", "Trim");
			scr_text("I will defeat you and finally rule this playground, and it will FINALLY BE ENGULFED IN DARKNESS AND EVIL!!!", "Trim");
			
			scr_option("Then I shall end your REIGN!!!", "Fight");
			scr_option("Why are you being so extra?", "Trim explain");
			
		
		break;
		
		case "Trim explain":
		
			scr_text("Can't you just play along... please... No-one else does...", "Trim");
			
			scr_option("Fine... THAN I SHALL END YOUR REIGN, ARCH NECROMANCER!!!", "Fight");
			scr_option("C'mon that's lame let's just fight normally.", "Trim normalFight");
		
		break;
		
		case "Trim normalFight":
			
			scr_text("alright, then let's just get this over with.", "Trim");
			
			global.incomingFight = true;
		
		break;
		
		case "Trim Loss":
		
			scr_text("AAGGGHGHHH, YOU'VE DEFEATED ME CHAMPION! YOU ARE WORTHY ENOUGH TO TAKE MY TOKEN!", "Trim");
			scr_option("Take token", "give trimmer");
		
		break;
		
		#endregion
		
		#region lizards
		
			case "Lizard Man":
			
				scr_text("Hey... they call me Lizard Larry", "Lizard Man");
				
				scr_option("Hi.", "Lizard talk");
				scr_option("No time to talk, Let's FIGHT!", "Fight");
				
		
			break;
			
		case "Lizard talk":
		
			scr_text("Are you playing RPS or do you just want to hang out", "Lizard Man");
		
			scr_option("Let's fight, I wanna take down the prince", "Fight");
			scr_option("Let's just hang out.", "Lizard Hang");
		
		break;
		
		case "Lizard Hang":
		
			scr_text("................................................................................, do you want to talk about something?", "Lizard Man");
			
			scr_option("Well do you know anything about the other players moves?", "Lizard info");
			scr_option("Nothing really...", "Lizard ok");
		
		break;
		
		case "Lizard info":
		
			scr_text("Well Tanner, he uses the Trimmer as his main move, he also uses lizard and rock I think.", "Lizard Man");
			scr_text("He likes to fight me, because scissors and trimmers are good against lizards.", "Lizard Man");
			scr_text("Anyways do you want to fight now or just keep hangning out?","Lizard Man");
		
			scr_option("Alright, let's fight", "Fight");
			scr_option("Nah, let's keep hanging", "Lizard Hang");
		
		break;
		
		case "Lizard ok":
		
			scr_text("Alright...", "Lizard Man");
			scr_option("[Keep Hanging]", "Lizard Hang");
		
		break;
		
		
		case "Lizard Loss":
		
			scr_text("Nice job, new kid! Take my token!");
			
			scr_option("Take token", "give lizard");
		
		break;
		
		#endregion
		
		#region Fire
		
			case "Franklin":
			
				scr_text("Hey new kid! I'm Franklin, I have the fire token so you'll need to beat me if you want to it.", "Fire Frank");
				scr_text("But, we also don't have to fight, I don't take the game too seriously, not since Prince became 'The Prince.' ", "Fire Frank");
				
				scr_option("Nah, I'm cool, let's just fight", "Fight");
				scr_option("Can you tell me about Prince?", "Prince Info");
				scr_option("I'm gonna go talk to somebody else", "Back");
		
			break;
		
			case "Prince Info":
			
				scr_text("Sure, I hope you beat the guy, not in like a mean way, but he takes the game waaay too seriously.", "Fire Frank");
				scr_text("His 'Epic' move is the nuke, it's absolutley overpowered...", "Fire Frank");
				scr_text("That's the reason he made it so you had to make tokens if you had a special move, and somebody would have to beat you if you wanted their special move.", "Fire Frank");
				
				scr_option("Why do you even listen to him?", "Prince power");
				scr_option("Thanks for the info!", "Frank decide");
		
			break;
		
			case "Prince power":
			
				scr_text("It's because his dad is the principal, and he is just so annoying about everything, I would just give you the token, but he would annoy me about it endlessly until you do it properly", "Fire Frank");
				
				scr_option("I see", "Frank decide");
		
			break;
		
			case "Frank decide":
			
				scr_text("Anything else?", "Fire Frank");
				
				scr_option("Nah, I'm cool, let's just fight", "Fight");
				scr_option("Can you tell me about Prince?", "Prince Info");
				scr_option("I'm gonna go talk to somebody else", "Back");
		
			break;
			
			//lose statement
			case "Frank Lose":
		
				scr_text("I haven't had this much fun in a while. Here, take my token", "Fire Frank");
				
				scr_option("Take token", "give fire");
		
			break;
		
		
		#endregion
		
		#region Wind
		
			case "Wendy":
			
				scr_text("You're the new kid? I'm Wendy, I'm Frank's sister, if you haven't met him already. Frank got me into playing, and I was having fun until Prince came and started making dumb rules", "Wind Wendy");
				
				scr_option("Let's fight then","Fight");
				scr_option("What can you tell me about Frank?","Frank info");
				scr_option("I'll see you later","Wendy Back");
		
			break;
		
			case "Frank info":
			
				scr_text("Frank helped some of the other kids make RPS, he drug me into playing the game to test the game before we showed a lot of the other kids.", "Wind Wendy");
				scr_text("Frank helped a lot of the kids make some cool styles, and showed them how to make it work in the game." , "Wind Wendy");
				scr_text("Then Prince came and kind of took over the game, and now everybody is kind of mad at him. ", "Wind Wendy");
				
				scr_option("Can't we just ignore Prince and keep playing", "Wendy explain");
				scr_option("Thanks for the info, now let's battle!", "Fight");
		
			break;
		
			case "Wendy Back":
			
				scr_text("You know where to find me.", "Wind Wendy");
		
			break;
		
			case "Wendy Explain":
			
				scr_text("If we did, he would just find another way to make the game about him, that's why everybody is just standing around the playground, they don't want to put up with Prince", "Wind Wendy");
				
				scr_option("Thanks for the info, now let's battle", "Fight");
				scr_option("I'll see you later","Wendy Back");
		
			break;
			//lose statement
			case "Wendy Loss":
			
				scr_text("Nice going, that was a lot of fun! Here, take my token!", "Wind Wendy");
				
				scr_option("Take token", "give wind");
		
			break;
		
		
		#endregion
		
		#region Kaiju
		
			case "Ken":
				if(global.kaijuUnlock){
					scr_text("I've been watching you new kid, and it seems like you have what it takes to go and fight Prince, but first you'll need something that he won't expect...", "Ken");
					scr_text("An edge...", "Ken");
				
					scr_option("Which is?", "Kaiju Reveal");
					scr_option("No thanks...", "Ken Back");
				}else scr_text("Not now new kid, I'm doing something", "Ken")
			break;
		
			case "Kaiju Reveal":
			
				scr_text("This...", "Ken");
				
				global.incomingFight = true;
		
			break;
		
			case "Ken Back":
			
				scr_text("You'll be back");
		
			break;
		
			case "Ken Win":
			
				scr_text("Maybe not...");
		
			break;
		
			case "Ken lose":
			
				scr_text("I knew you had it in you new kid! Here, take this");
				
				scr_option("Take token", "Give Kaiju");
		
			break;
		
		#endregion
		
		#region Nuke
		
			case "Prince":
				if(global.kaijuUnlock){
					scr_text("So you want to fight me? Alright new kid, let's see how well you do against my NUKE!!!", "Prince");
				
					global.incomingFight = true;
				} else scr_text("Get lost new kid you aren't worth my time.", "Prince");
			break;
			
			case "Prince Win":
			
				scr_text("That's what I thought! Better luck next time new kid!", "Prince")
		
			break;
		
			case "Prince Loss":
			
				scr_text("No way, you must have cheated!", "Prince");
				
				scr_option("Not at all Prince, I played by your rules and still beat you. You owe an apology to everybody here.", "Victory");
				scr_option("No more than you. I think what you did was unfair to everybody here, and deserves an apology", "Victory");
		
			break;
		
			case "Victory":
			
				scr_text("I'm sorry guys, I was just trying to have some fun...", "Prince");
				scr_text("I hope we can all still play together...", "Prince");
				scr_text("That's okay Prince, we forgive you","Fire Frank");
				
				scr_text("Awesome... does anyone want to play Magic with me?", "Prince");
				
				global.endGame = true;
		
			break;
		
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
		
			case "give cardboard":
		
				scr_text("Got cardboard token");
				
				scr_changeAvailableStyles(4);
		
			break;
		
			case "give trimmer":
			
				scr_text("Got trimmer token");
				
				scr_changeAvailableStyles(5);
		
			break;
		
			case "give lizard":

				scr_text("Got lizard token");
				
				scr_changeAvailableStyles(6);

			break;
		
			case "give water":
		
				scr_text("Got water token");
				
				scr_changeAvailableStyles(7);
		
			break;
		
			case "give fire":
			
				scr_text("Got fire token");
				
				scr_changeAvailableStyles(8);
		
			break;
		
			case "give wind":
			
				scr_text("Got wind token");
				
				scr_changeAvailableStyles(9);
		
			break;
		
			case "give Kaiju":
			
				scr_text("Got Kaiju token");
				
				scr_changeAvailableStyles(10);
		
			break;
			
			case "Back":
			
				scr_text("[You walk away]");
		
			break;
			
			
		
		#endregion
		
	#endregion
	}
}