
VAR attribute = ""
VAR trait = ""
VAR weapon = ""
VAR tool = ""
VAR spell = ""
VAR heated = false
VAR zapped = false

-> attributeChoice

=== attributeChoice ===
In a vast land of monsters and kingdoms, you are an adventurer known for having great
    * strength
        ~ attribute = "strength"
        -> traitChoice
    * intelligence
        ~ attribute = "intelligence"
        -> traitChoice
    * agility
        ~ attribute = "agility"
        -> traitChoice
    * wit
        ~ attribute = "wit"
        -> traitChoice
        
=== traitChoice ===
A less known trait you have is your
    * greed
        ~ trait = "greed"
        -> weaponChoice
    * anger
        ~ trait = "anger"
        -> weaponChoice
    * cowardliness
        ~ trait = "fear"
        -> weaponChoice
    * stubborness
        ~ trait = "stubborness"
        -> weaponChoice
        
=== weaponChoice ===
You choose to fight with 
    * a sword and sheild
        ~ weapon = "sword"
        -> toolChoice
    * a bow and arrows
        ~ weapon = "bow"
        -> toolChoice
    * a pair of daggers
        ~ weapon = "daggers"
        -> toolChoice
    * a war hammer
        ~ weapon = "hammer"
        -> toolChoice
        
=== toolChoice ===
You always have one of these on you 
    * a set of lockpicks
        ~ tool = "lockpick"
        -> spellChoice
    * a spyglass
        ~ tool = "spyglass"
        -> spellChoice
    * a coil of rope
        ~ tool = "rope"
        -> spellChoice
    * a sack of gunpowder
        ~ tool = "gunpowder"
        -> spellChoice
        
=== spellChoice ===
You have one spell scroll. The spell it casts is
    * magic missle
        ~ spell = "missle"
        -> entrance
    * fire ball
        ~ spell = "fire"
        -> entrance
    * ice wind
        ~ spell = "ice"
        -> entrance
    * lightning bolt
        ~ spell = "lightning"
        -> entrance
        
=== entrance ===
You have heard of a dugeon close to the town you're staying in. Many believe that within its walls are plenty of monsters to slay and treasure to claim. But when you ask around about it, you learn that those who have already gone have returned with no loot, scares, or bloodstains, and they never tell of what they eoncountered. While this has led to doubts of glory to be found within, you are still determined to go, and set off to explore the dugeon.

You approach the duegoen's entrance, which takes the form of the mouth of a cave.
Do you go in?
    *Yes
        You steel yourself for a challenge and walk into the cave.
        -> hallway
    *No
        For some reason, you decide to turn back. You can almost hear the disappointment in the air. Or is that a faint voice. Aw well, not staying to find out anyway.
        -> END
        
=== hallway ===
You walk down the the long, straight cavern, lit by torches on the walls. As you walk, you hear a deep voice out of nowhere.

???: Welcome traveller. Been a while since my last visitor. Hope your the talkive type, it makes goes on here much more enjoyable.
    * Who goes there?!
        {attribute == "agility"} While shouting this, you do a spinning jump, landing facing behind you. While your were spinning, you saw no enimies.
        ???: Huh. Startled you, did I. HA HA HA. Calm down. Constant scares get boring.
        * *What's going on? Where's that voice coming from?
            ???: Where's my voice going from? Does it sound so cool you want to see my face! HA HA HA. But if you really want know, the voice is coming, from me!From the walls! The floor! The ceiling! FOR I AM THE DUNGEON!
            -> realization
         * *Seriously! Where are you? I will attack.
            ???: Go ahead. I don't care. I'm a dungeon. Your can't hurt me.
            -> realization
    * Where is that voice coming from?
        ???: It was me. And do not bother looking for my face. Your already staring at it, and you cannot look away, no matter where you turn.
        * * How can I already see you? All I see are walls.
        ???: Exactly. I am the walls, or more accuratly, the walls are a part of me. For I am the dugeon. Just getting it out of the way.
        -> realization
        * * Ok, deep, intimadating disembodied voice from nowhere. This dugeon is already not what I expected.
        ???: Thanks. Its hard for a dugeon to be many things, so it sounds cool to be unpredictable. Oh yeah, I'm the dungeon. The voice you heard is mine, the dungeon's.
        -> realization
    * {attribute == "wit"} A voice from nowhere? Worst way to taunt adventurers ever!
        ???: Hey, thats just rude! And I have no other way of talking, so deal with it, jerk!
        * * And why exactly would you have no other way of talking?
        ???: I uh. Dang, I was hoping to shock you, but now you've killed the vibe. The truth is, I'm the dengeon itself.
        -> realization
        * * Really. I suppose you were born with such a deep voice to. HA HA.
        ???: That's not funny, and its even more rude. This talking dungeon does not like your jokes.
        -> realization
    * Draw your weapon
        ???: Made you jump, did I.
            * * attack
            You attack randomly around you, striking the walls a few times.
            ???: HA HA HA. To think you actually hit me a few times. They didn't hurt though. Dungeons can't feel pain.
            -> realization
            * * Show yourself!
            ???: But your already looking at me. I'm all around you, watching and likely judging as you move past my walls. As long as you traverse through me, you cannot escape me, for I am the dungeon.
            -> realization
            * * Hiding with a voice? How cowardly.
            ???: But I'm not hiding. I'm the dungeon! Your staring at me in every direction you look. I'm not a coward! Wait did i ruin the surprise? Dang it!
            -> realization
    
=== realization ===
You continue down the cave hall, the deep voice, which you realize appearently belongs to the dungeon itself, keeps talking, though it appears to have gotten more casual.

The Dungeon: Yes, I'm sure your suprised, but my voice your hearing belongs to the dungeon. I'm the dungeon. Yes, I'm a talking dungeon. Please, don't laugh.
    * This is weird. It doesn't make any sense, how does a dungeon talk?
        The Dungeon: Oh, I've been this way from the begining. I've been hear for as long as this mountain has stood. There's really nothing to explain, I'm a talking dungeon, all there is to it.
            * * What, there's gotta be more to it.
            The Dungeon: Really now. You want there to be an explanation that badly. You could go crazy looking for answers. But I won't stop you if you do look.
                * * * I will find an answer, I'll look for it right now.
                {attribute == "intelligence"} After searching very carefully, you determine that no source of the dungeon's life can be found, so you give up and move one.  The dugeon: Told you wouldn't find anything.
                {attribute != "intelligence"} You search for anything that could point to a source of the voice, but you never find anything. It takes you possibly days to finally give up and move on. The Dungeon: Took you long enough. And I can see some off your hair turned white. Your brain must be in a lot of pain
                -> Wall
                * * * Fine, I'll take your word for it.
                The Dungeon: Smart choice, there are better things to discuss anyway.
                -> Wall
            * * Aw who cares, just tell me where the loot is.
            The Dungeon: Sorry, but there's no treasure within my caverns. But I'm sure we still have plenty to dicuss.
            -> Wall
    {attribute == "intelligence"} * A talking dungeon is impossible. There has to be some kind of trick, like voice throwing, or voice based illusion magic, or possibly undead possesion?
        The Dungeon: No, theres nothing like that about me. I'm just a talking dungeon. But you seem to be struggling to accept this. Do you just have a need for explainations?
            * * Don't play dumb with me. There is a reason for this, I'm certain. And if you won't tell me I will find it.
            The Dungeon: I can't really stop you. But you may end going down quite the rabbit hole if you do pursue this. Good luck.
            Do you search for a reason?
                * * * Yes
                After searching very carefully, you determine that no source of the dungeon's life can be found, so you give up and move one.  The dugeon: Told you wouldn't find anything.
                -> Wall
                * * * no
                The Dungeon: Smart choice, there are better things to discuss anyway.
                -> Wall
            * * And your not curious at all about where you came from, or why your stuck like this?
            The Dungeon: Nah, I'm cool with being a talking dungeon. Not really thinking about the why I am makes life a lot easier.
            -> Wall
            * * Nothing comes from nothing. So have to have come from somewhere.
            The Dungeon: Nice thought. but I honestly don't care. I'm cool to simply exist.
            -> Wall
    * I've heard of all kinds of inhumanoid monsters, but a talking dungeon is not one of them.
        The Dungeon: Hey, I'm not a monster! And being called one is very insulting! Anyway, your not going to find any in my halls. I'm all you got for company in here.
            {trait == "stubborness"}* * A talking dungeon deffinently counts as a monster. Your probably the head monster I have to defeat. 
            The Dungeon: Now your just being dumb. I'm a dungeon, I can't feel pain. You seriously going to fight me?
                * * * Yes
                Well, I guess I can't stop you. Hit me with your best shot.
                -> attack
                * * * no
                Managed to calm done, huh. Maybe your not such a bullhead.
                -> Wall
            {trait == "fear"}* * You are so a monster. You'll probably eat at any second. I-I will fight!!
            The Dungeon: I'm a dungeon. How am I supposed to eat. This display of cowardice isn't even entertaining. Ugh! If your gonna attack, quit shivering and strike already.
            -> attack
            * * Ok, OK, I'm sorry. Let's just forget I said that.
            The Dungeon: Sure. At least you can avoid subcumbing to parnoia. Move along now.
            -> Wall
    * A talking dungeon. Sounds like a dull life. You actually happy with it?
        The Dungeon: Yeah, it can be pretty boring. Not much happens unless someone comes in, and most who do are adventurers who get outrageously angry when they learn that there's no treasure in hear, there's just me, who they then direct their anger at.
            {trait == "greed"}* * What do you mean no treasure. Why even call yourself a dungeon if you got no loot.
            The Dungeon: Its not my fault I contain no gold. And I honestly don't like being called a dungeon, it makes me sound depressing. So can we please move on from talk about treasure?
            -> Wall
            {attribute == "agility"}* * Would it lighten the bordem if I jumped around.
            The Dungeon: Eh, give it a shot if you want to.
            -> Wall
            You hop and leap around the hall as you progress. The dungeon's mood doesn't really seem to get better.
            {attribute == "wit"}* * I guess I could tell a joke instead.
            You tell one of your best jokes.
            The Dungeon: HA HA HA HA HA HA HA HA HA HA HA HA!!!
            This goes on for a While.
            -> Wall
            * * Well, I'm glad I'm not you.
            The Dungeon: And I can't really blame you. The most advance thing i've ever done is psycho analyze some of the people to come in here.
            -> Wall
            
=== attack ===
You prepare to fight the dungeon itself. How do you plan to attack?
* Draw your weapon and strike.
    {weapon == "sword"} You unsheath your sword and strike at the walls of the dungeon. Some sparks fly with the strikes, but all you ultimately do is break your sword.
        The Dungeon: HA HA HA HA. Of course that didn't do anything! I'm made of rock. I can't feel pain! Just give up and move on.
        Throwing the leftover hilt to ground, you grumble as you continue.
        ~ weapon = "sheild"
        -> Wall
    {weapon == "bow"} You knock your arrows into your bow and fire at the walls of the dungeon. Some sparks fly with the hits, but all you ultimately do is empty your quiver.
        The Dungeon: HA HA HA HA. Of course that didn't do anything! I'm made of rock. I can't feel pain! Just give up and move on.
        Picking up your arrows as you walk, you grumble as you continue.
        -> Wall
    {weapon == "daggers"} You pull out your daggers and strike at the walls of the dungeon. Unforturnatly, the blades shatter as you make your first strikes.
        The Dungeon: HA HA HA HA. Who the heck sold you those peices of junk? Were trying to prove your worth by using faulty gear, or did you just pay cheap? Either way, next time buy quality gear. 
        Throwing the leftover hilst to ground, you grumble as you continue.
        ~ weapon = "broken"
        -> Wall
     {weapon == "hammer"} You hoist your hammer and strike at the walls of the dungeon. You manage to smash some considerable chunks of rock from the walls.
        The Dungeon: So you actually did some damage. Not that it hurt, I can't feel pain. But you really should stop. The biggest thing your gonna cause is a cave-in, which would probably kill you.
        Realiziing that the dungeon is telling the truth, you decide to move forward.
        -> Wall    
* Use your spell scroll.
    {spell == "missile"} You quickly read your spell scroll and launch 3 magic missles toward the dungeon walls. They blast some chuncks of rocks out of the walls, but no real structural damage in done.
        The Dungeon: Nice hit, but did you seriously waste a powerful spell scroll on rocks? Honestly, that could've been useful anywhere else but in my caverns. 
        You grumble as you move on, trying to ignore the Dungeon's mockery.
        ~ spell = "used"
    -> Wall
    {spell == "fire"} You quickly read your spell scroll and launch a fire ball the dungeon walls. It bursts against the walls and the flames spread outward, not even scaring the wall but setting you pants on fire. You do crazy movements trying to put out the flames
        The Dungeon: HA HA HA HA HA. You do a good Hot Pants Dance. HA HA HA HA.
        You finally manage to put out the fire. You walk deeper into the dungeon as it laughs, humilated and with really short pants.
        ~ spell = "used"
    -> Wall
    {spell == "ice"} You quickly read your spell scroll and a powerful gust of ice magic blows against the dungeon walls. Ice builds up along the walls and the air gets colder, enough to make you shiver.
        The Dungeon: Well you certaintly made things cooler in here, not the I can feel it. Honestly that spell was kind of weak, anyway. . . Why you shivering so much? Can't take the cold?
        Desparate to get away from the cold, you move forward through the dungeon.
        ~ spell = "used"
    -> Wall
    {spell == "lightning"} You quickly read your spell scroll and launch a lightning bolt at the dungeon wals. They blast hits its target, but doesn't do anything.
        The Dungeon: I'm not sure how smart you are, but heres a bit of science for you: rocks can't feel zaps. Not like I can feel any kind of pain anyway. Don't beat yourself up over it.
        Despite the words from the Dungeon, you feel kind of stupid as you move forward.
        ~ spell = "used"
    -> Wall
* {tool == "gunpowder"} Set off you gunpowder.
    You place your sack of gunpowder by the wall, light a fuse, and rush away. The blast goes off, rumbling the whole dungeon. You check the sight when the rumbing stops, but all you see is a large but shallow gap in the rocks.
    The Dundeon: That WAS LOUD. Not it hurt or anything. You've achived a big hole in my wall, but did you really get anything out of that. Go ahead and seach the rubble. I promise you won't find anything.
    You look through the new hole, but you find nothing but rocks. You sigh and move on, deeper in the dungeon.
    ~ spell = "used"
    -> Wall
* Punch the dungeon.
    {attribute == "strenght"} You take fight stance and throw a few punches at the dungeon walls. You manage to make some cracks in the wall.
    The Dungeon: Ok, I'll admit it. Its pretty impressive that you were able to do damage at all. Congragulations. Still, it will take you years to cause a cave-in, so you best move on.
    You throw more punches until you get tired, then you continue through the dungeon.
    -> Wall
      {attribute != "strenght"} You take fight stance and throw a punch at the dungeon walls. You break your hand on the rock, fall to your knees and scream in pain.
    The Dungeon: OOOOO. That looks like it hurt. But what else were you expecting, punching a stone wall. My advise, get out of here and get you hand looked at.
    Clutching your wrist, you run out of the dungeon and head back to town, hoping to get help from a healer. The gonna be an embarressing story to tell.
    -> END
            
=== Wall ===
After a long time of walking, you reach a dead end which takes the form a a metal wall. There is some space above the wall, and you see some light
The Dungeon: You've come to my end. Congrats, you've done all there is to do here. Hope you had fun. I know I might have, with a conversation like we had.
* Turn back and leave the dungeon.
    The Dungeon: So your heading out, eh. And the same way you came. Sorry that this place wasn't more the a really long hallway with a dead end, I know its not as exciting compared to other places. Or should I not be sorry, I honestly can't tell if your disappointed. Either way its been an interesting time, and if you learned anything, well good for you. Your are welcome come back sometime, though nobodies ever come yet, so I doubt you will. After all, I'm just a talking dungeon.
-> END
* Try to find a way past the wall.
    The Dungeon: You going to find away to get past the wall. Are conviced somethings behind it? Or do you simply refuse to let anything get in your way? Well, whatever your reason, I suppose its your decision. So I guess I'll say, hit it with your best shot.
-> GetPast

=== GetPast ===
Your sights are set on getting around or through this metal wall. What's your approach
*{weapon == "sword"} Use your sword to hack at the rocks at the edge of the wall.
    You spend about an hour hacking at the rocks. You do manage to knock some rocks loose, but you ultimately do little
    -> GetPast
*{weapon == "daggers"} 
    {heated == true} You take out your daggers and jab them into the heated metal of the wall. Being careful not to touch the metal with your flesh, you pull yourself up, then jab one dagger above the other and pull yourself to that one, you repeat the process until you reach the top of the wall, which you then climb over and land of the other side.
    The Dungeon: Very creative. A dangerous tatic with lots of risk, but creative, I'll give it that much. Do you take pride in finding unusual solutions?
    The other side of the wall is revealed to be short tunnel, about a yard long, that leads to an opening back outside. You begin to walk through, out of the dungeon.
    -> Finish
    {heated == false} You take out your daggers and jab them at the metal wall. They shatter on impact.
    The Dungeon: I honestly do not know what you were trying to do there. In fact, I'm not going to even try to figure out what you were thinking.
    ~ weapon = "broken"
    -> GetPast
*{weapon == "hammer"} 
    {heated == true} You hoist your hammer and begin repeatedly slam the heated metal of the wall. It takes a few hours, but you manage to pound the wall into a shape you climb over, but you still have to wait for the metal to cool before you try that.
    The Dungeon: Well that took a long time. And a lot of effort. And now a lot of patience, as its gonna be night by the time its safe to climb. Are yet your doing it. Are you just not afraid of doing things the hard way?
    Once the metal is cool, you climb to the other side of the wall. You discover its a short tunnel, about a yard long, that leads to an opening back outside. You begin to walk through, out of the dungeon.
    -> Finish
    {heated == false} You hoist your hammer and begin repeatedly slam it against wall. After hours of pounding, you make pretty much no progress and finally give up on this tatic.
    The Dungeon: Well, you kept up with that longer than I expected, but at last you see sense. I get that your persistent, so I guess you gonna try something else.
    -> GetPast
* Use your spell scroll.
    {spell == "missile"} You quickly read your spell scroll and launch 3 magic missles toward the wall. They hit the wall dead on, but they do no real damage.
        The Dungeon: Well, that's disappointing, for you. Seems that spell is better for blasting monsters than me. I assume your gonna try something else.
    -> GetPast
    {spell == "fire"} You quickly read your spell scroll and launch a fire ball the wall. It bursts against the wall and when the flames clear, the wall is no red hot.
        The Dungeon: Well, the wall is certainly hotter, but useless you got something else planned, I'd say your still stuck.
        ~ heated = true
    -> GetPast
    {spell == "ice"} You quickly read your spell scroll and a powerful gust of ice magic blows against wall. Ice builds up along the wall and the air gets colder, enough to make you shiver, but no damage is done.
        The Dungeon: Well you certaintly made things cooler in here, not the I can feel it. Honestly, you've only made the challenge harder.
    -> GetPast
    {spell == "lightning"} You quickly read your spell scroll and launch a lightning bolt at the dungeon wall. They blast hits its target, sending electricity coursing through the wall. You can see the sparks, running up and down the wall, but otherwise, nothing has changed.
        The Dungeon: Well, that was flashy, and kind of still is. Just don't touch the wall or you are toast. Aw, if only I could smell.
        ~ zapped = true
    -> GetPast
* Examine the wall for weak spots.
    You get up close to the wall and look over it carefully. After over an hour of staring, you find what appears to be a tiny key hole.
    {tool == "lockpick"} You take out your lockpick and spend some time messing with the key hole. After a number of clicks, you seem to have unlocked it. The wall then falls over revealing a short tunnel, about a yard long, that leads to an opening back outside.
    The Dungeon: Well, you worked that one out after a fair bit of effort. Although it is underhanded tatics in some circles.
    You walk through the small remainder of the tunnel and out of the dungeon.
    -> Finish
    staring, you find what appears to be a tiny key hole.
    {tool != "lockpick"} You have no key or any way of using the key hole, so your gonna have to find another way around the wall.
    The Dungeon: Well, at least your smart enough to actually find that key hole. Now you have to decide if your going to tell anyone.
    -> GetPast
* {tool == "gunpowder"} Set off you gunpowder.
    {heated == true} You place your sack of gunpowder by the wall, light a fuse, and rush away. The blast goes off, rumbling the whole dungeon. You check the sight when the rumbing stops, and see that the red hot metal wall has a giant hole in it.
    The Dundeon: That WAS LOUD. Not it hurt or anything. And you made a huge hole in the wall, more than enough to get to the other side. Hope you like what you find over there.
    You step through the hole to the other side of the wall, and find a short tunnel, about a yard long, that leads to an opening back outside. You  walk through, out of the dungeon.
    -> Finish
    {heated == false} You place your sack of gunpowder by the wall, light a fuse, and rush away. The blast goes off, rumbling the whole dungeon. You check the sight when the rumbing stops, and find the wall scarred with burn marks, but no solid damage.
    The Dundeon: That WAS LOUD. Not it hurt or anything. And the boom didn't even do anything. It be a crying shame if I didn't find it funny. HA HA HA HA!
    -> GetPast
* {tool == "rope"} Throw rope over the wall.
    {attribute == "intelligence"}You tie a heavy rock to one end of the rope and throw the weighted end over the wall. With one end anchored on the other side, you are able to scale the wall and climb over.
    The Dundeon: A smart and reasourceful solution that somehow no previous has ever thought of before. I wonder if that says more about them or you.
    Landing on the other side, you find a short tunnel, about a yard long, that leads to an opening back outside. You walk through, out of the dungeon.
    -> Finish
    {attribute != "intelligence"}You throw one end of your rope over the wall, and attempt to scale the wall and climb over. Your wight pulls the rope back over and you fall and land on your butt.
    The Dundeon: Well, that was stupid. Did you simply not know that using rope in this manner requires more than just throw it.
    You slam the rope on the ground and begin thinking of another solution.
    -> GetPast
* Punch the wall.
    {attribute == "strenght"} You wind up your arm and throw a big punch at the wall. You manage to make a bit of a dent. Encouraged, you throw some more punchs, but they only make dents and don't really get the wall out of the way
    The Dungeon: Well, your clearly strong enough to do some damage, but anyone could tell you this was never gonna work like you hoped. You gonna try something 
    -> GetPast
      {attribute != "strenght"}You wind up your arm and throw a big punch at the wall. You hear a loud crack the many bones in your hand. You fall to your knees and scream in pain.
    The Dungeon: OOOOO. That sounded painful!! Seriously, what made you think pucnhing metal was a good idea. Best go to a healer, your gonna be in bed for a long time.
    Trying to hold your arm in a non-painful position, you flee the way you came and head back to town, hoping to get help from a healer. Your also thinking of how to tell this story in a way that doesn't make you a lauching stock.
    -> END
* Parkour over the wall.
    {attribute == "agility"} You take a few steps back and run toward wall. You leap into the air, jump between the sides of the cavern, and dive through the space above the wall. You land to a roll and stand up. On the other side of the wall is a short tunnel, about a yard long, that leads to an opening back outside. You begin to walk through, out of the dungeon.
    The Dungeon: Nice jump. I admit you have good skills.
    -> Finish
      {attribute != "agility"} You take a few steps back, then run toward wall and leap into the air. You end up slaming to the wall face first.
      The Dungeon: HA HA HA HA HA! Its just the slap stick rutines they kids. Its too good. HA HA HA HA!
      You stand back up and reconsider your options
    -> GetPast
* Give up.
    Seeing no way of getting past the wall, you decide to walk back to the entrance of the dungeon.
    The Dungeon: So chosen to throw in the towel and allow the wall to beat you. Hope the failed attempts don't get you too down. And besides, your free to come back and take another stab at getting past it, as bringing more destructive tools. I suppose if you learned anything from this experience, its be prepared. But, what do I really know. I'm just a talking dungeon.
-> END

=== Finish ===
The Dungeon: Huh. You actually got past the wall. Your actually the first to pull this off. Anyone else who gets to that point ends up turning around. You just don't give up do you? Or You can always tell when you have options. Either way, I have no other physical challenges for you, but your always welcome to come back and chat. I'd like say I've provided enough intrigue to keep you coming, but what do I know. I'm just a talking dungeon.
-> END


//{yourVariable:
//    This is written if yourVariable is true.
//  - else:
//    Otherwise this is written.
//}



