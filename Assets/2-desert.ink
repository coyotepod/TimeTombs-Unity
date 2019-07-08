#title: Desert of Time
#author: Master Scoy

// VARIABLES for Story Outline
VAR SeasonTitle = "Desert of Time"
VAR PrologueTitle = "PROLOGUE: THE BLUE MUG"
VAR EpisodeOne = "EPISODE 1: INSULAR MARSUPLIA"
VAR EpisodeTwo = "EPISODE 2: ARRAKIS"
VAR EpisodeThree = "EPISODE 3:"
VAR EpisodeFour = "EPISODE 4:"
VAR EpisodeFive = "EPISODE 5:"
VAR EpilogueTitle = "EPILOGUE"

VAR You = "You"
VAR you = "you"
VAR Your = "Your"

VAR TheCleric = "The cleric"
VAR thecleric = "the cleric"
VAR TheRogue = "The rogue"
VAR therogue = "the rogue"
VAR TheWarrior = "The warrior"
VAR thewarrior = "the warrior"
VAR TheWizard = "The wizard"
VAR thewizard = "the wizard"


->StartMenu
==== Preface ====
#audio: fx-valleys
<em>Welcome weary adventurer! This story takes place in <em>Regio Scientiae: A Land of Understanding. Its a world of magic and steampunk, and a place for you to develop grit and explore curiosities. The quest narratives maybe done solo. However, they are best experienced the first time as playful interaction with the game master and neighboring, real life players.
+ [MENU]
    ->StartMenu

=== StartMenu ===
<h3>Start Menu</h3>
<em>Choose wisely</em>
// + {not Preface} [Preface]
//    ->Preface
// + [PRESS START]
//    -> Prologue
+ [Episode 1]
    -> Ep1
// + [Episode 2]
    -> Ep2
// + [Episode 3]
    -> Ep3
// + [Episode 4]
    -> Ep4
// + [Episode 5]
    -> Ep5
-> DONE
=== AboutSeason2 ===
<h1>{SeasonTitle}</h1>
This section is for SEASON to keep INKY from getting confused. Its also a place to write a season summary without special text formatting. It shouldn't be visible to the reader. 
+[START MENU]
    ->StartMenu
    
->DONE

=== Prologue ===
<h3>{PrologueTitle}</h3>
+[START MENU]
    ->StartMenu
+[NEXT]
    ->Ep1
    
->DONE



=== Ep1 ===
<h3>{EpisodeOne}</h3>
{Your} party ventures from the ship's cabin onto the deck. A band of eight crewman have offered to join you ashore for your protection against indigenous animals. This strikes you as odd. The captain acts mistrustful. He suspects you looking for previously hidden treasure and not gathering research about desert animals.
+ You shrug your shoulders with indifference.
    ->c1
// + You confront the captain.
    ->c1
==c1
The party heads to shore. You look around for a pathway.
+[PERCEPTION Success]
    ->c2
+[PERCEPTION Fail]
    ->c2

==c2
You notice a narrow pathway mostly covered with sand. It snakes its way betwee the dunes ahead. You travel inland about half mile without incident.
+[PERCEPTION Success]
    ->c3
+[PERCEPTION Fail]
    ->c3

==c3
You notice a strange landform on the pathway ahead.
+ [INSIGHT Success]
    ->c4
+ [INSIGHT Fail]
    ->c4
    
==c4
The landform on the ground is a near perfect circle of desert pavement. Otherwise it looks fairly benign...except for the numerous bones scattered around the edges. You decide that one person should check out the path first while the others provide cover.
TODO: + Proceed ahead as a group.
+ Ask {thecleric} to pray.
    ->cleric
+ Ask {therogue} to scout.
    ->rogue
+ Ask {thewarrior} to throw something heavy at it.
    ->warrior
+ Ask {thewizard} to cast a spell.
    ->wizard
+ "Send the redshirt crewman to scout" {You} say.
    ->redshirt
    
=cleric
{TheCleric} says a quick prayer and says "To be honest this isn't really the sort of thing my diety gets involved with. I can't promise safe passage"
+ "Fine, send the redshirt to scout" {You} say.
    ->redshirt

=rogue
{TheRogue} complains loudly, “Why do I always get the raw end of the deal?”
+ "Fine, send the redshirt to scout" {You} say.
    ->redshirt
    
=warrior
{TheWarrior} says sarcastically, “Oh looks like something needs to get beaten down or chucked around.”
+ "Fine, send the redshirt to scout" {You} say.
    ->redshirt
    
=wizard
The wizard clears his throat, “I only have so many spells memorized. I hate to use one up on a patch of dirt”
+ "Fine, send the redshirt to scout" {You} say.
    ->redshirt
    

=redshirt
The redshirted crewman gulps and starts walking forward. He approaches the edge of the circle.
+ He proceeds cautiously[.]<>
    ->c_ground
+ He runs for it[.]<>
    ->c_ground
    
=c_ground
, and turns around with a timid grin as he nears the far edge. The ground suddenly falls away as a massive Arrakis sandworm burst from the ground. It was thought that Arrakis sandworms only lived in the western deserts of the Arrakis Wastelands. It would appear that your party has discovered a new species from the <i>lumbricus</i> genus, phylum Annelida. They must have evolved and adapted to the iron rich sands of Insula Marsupialia.
->worm_response

=worm_response
The party shouts expletives of surprise.
+ You all quickly run back to the ship.
    ->back_to_ship
    
=back_to_ship
The captain meets you as soon as you get aboard.

+ You blurt out the story to the captain.
    ->tell_captain

=tell_captain
- Captain Flint replies somberly, “The last time sandworms were encountered in the Wastelands they rampaged for six weeks and destroyed four towns before they were driven back underground."
+ [NEXT]

- He continues, "I’m no patron of the king, but this is something that Storm Crown needs to know about.”
+ [NEXT]

- He continues even more seriously, “This is not a fight we can win. This battle needs heroes and siege engines.”
The captain hastily writes a note and attaches it to a crow and sends it off toward Storm Crown.
+[START MENU]
    ->StartMenu
+[NEXT]
    ->Ep2
    
->DONE

== Ep2 ==
<h3>{EpisodeTwo}</h3>
+[START MENU]
    ->StartMenu
+[NEXT]
    ->Ep3
    
->DONE

== Ep3 ==
<h3>{EpisodeThree}</h3>
+[START MENU]
    ->StartMenu
+[NEXT]
    ->Ep4
    
->DONE

== Ep4 ==
<h3>{EpisodeFour}</h3>
+[START MENU]
    ->StartMenu
+[NEXT]
    ->Ep5
    
->DONE

== Ep5 ==
<h3>{EpisodeFive}</h3>

+[START MENU]
    ->StartMenu
+[NEXT]
    ->Epilogue
    
->DONE

== Epilogue ==
<h3>{EpilogueTitle}</h3>
->END

-> END