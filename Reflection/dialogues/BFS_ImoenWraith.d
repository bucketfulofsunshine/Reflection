// I have gazed long into this dialogue file. Enough that the dialogue file also gazed back into me...

// 2024.10.03 
// Edit & expand before Ebon Spur release. Whenever that is. Remember to change to CHAIN so Sarevok can have multiple interjections.
// Not that Sarevok has earned sibling bonding rights. But he's not here for warm & fuzzy feelings. Only to scoff and to judge. 
// If he's Chaotic Good already he may be a little jealous as a treat. 

APPEND IMOEN25J

IF WEIGHT #-2 ~Global("BFSImoenGorionWraith","GLOBAL",1)~ THEN BFSGOR01
SAY ~Hey, <CHARNAME>, that wasn't exactly easy to endure. How are you doing?~
++ ~How do you think, Imoen?~ + BFSImoenSarcasm
++ ~That wasn't Gorion...but it doesn’t make his words sting any less.~ + BFSImoenKnow
++ ~Forget about me. How are you holding up?~ + BFSImoenReverse
++ ~I never cared for the old man and I don't plan to start now.~ + BFSImoenNotCare
END

IF ~~ BFSImoenNotCare
SAY ~Sometimes I wonder why I even bother with you. I hope that one day you'll stop pushing everyone away.~
IF ~~ EXIT
END

IF ~~ BFSImoenSarcasm
SAY ~Using sarcasm to mask the pain, huh? I know that trick. You can't fool me, little <PRO_BROTHERSISTER>.~
IF ~~ + BFSImoenCatchall
END

IF ~~ BFSImoenKnow
SAY ~I get it, little <PRO_BROTHERSISTER>. Even if it wasn't really him... the words still cut deep.~
IF ~~ + BFSImoenCatchall
END

IF ~~ BFSImoenReverse
SAY ~Me? I'm... getting by. But knowing it wasn’t truly him doesn’t make it any easier to shake off, does it?~
IF ~~ + BFSImoenCatchall
END

// CLASS TALK SPLIT STARTS - RIP BUCKET
IF ~~ BFSImoenCatchall
SAY ~You know that Gorion loved you - loved both of us - right? Even if he wasn't always the best at expressing it.~
IF ~Class(Player1,DRUID_ALL)~ + BFSImoenDruid
IF ~Class(Player1,RANGER_ALL)~ + BFSImoenRanger
IF ~Class(Player1,SORCERER)~ + BFSImoenSorcerer
IF ~Class(Player1, MAGE_ALL)~ + BFSImoenMageOther
IF ~Class(Player1,BARD_ALL)~ + BFSImoenBard
IF ~Class(Player1,THIEF_ALL)~ + BFSImoenThiefOther
IF ~Class(Player1,SHAMAN)~ + BFSImoenShaman
IF ~Class(Player1,CLERIC_ALL)~ + BFSImoenClericOther
IF ~Kit(Player1,BLACKGUARD)~ + BFSImoenBlackguard
IF ~Class(Player1,PALADIN)_ALL)~ + BFSImoenPaladin 
IF ~Class(Player1,MONK)~ + BFSImoenMonk
IF ~Class(Player1,FIGHTER_ALL)~ + BFSImoenFighterOther
END

// Druid
IF ~~ BFSImoenDruid
SAY ~Remember how, while you wandered around Candlekeep, Gorion would stop and ask you to identify some herb he found? Heh! It was like he expected you to know every plant in Faerûn by heart.~
++ ~...ending only after an hour long discussion on the properties of Mugwort.~ + BFSImoenDruid1
++ ~(laugh) Don't remind me!~ + BFSImoenDruid1
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenDruid1
SAY ~Whoa! I felt a yawn coming on just from hearing you say that...~
IF ~~ + BFSImoenDruid3
END

IF ~~ BFSImoenDruid2
SAY ~Hey, you managed to get the old sage out of the library and into the gardens. Even if you both were covered in dirt afterwards.~
IF ~~ + BFSImoenDruid3
END

IF ~~ BFSImoenDruid3
SAY ~Gorion was so proud when you could answer all of his questions.~
= ~I never got the hang of those herb names but I enjoyed listening to you.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Ranger
IF ~~ BFSImoenRanger
SAY ~Remember how he'd assist Hull with your archery drills, even though he was hopeless with a bow himself? The day you finally split an arrow on the target... You could see the joy in Gorion's eyes.~
= ~He cheered louder than anyone when you made that shot. It didn't matter that archery wasn't his strength. He saw your potential as a ranger.~
++ ~It's true. I'm a natural with the bow.~ + BFSImoenRanger2
++ ~Overlooking the times when my mark wildly missed.~ + BFSImoenRanger3
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenRanger2
SAY ~You're also a natural at inflating your own ego. Hey, don't be angry, I call 'em as I see 'em.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenRanger3
SAY ~Now, if you were to hit Ulraunt instead, I'm sure nobody would have complained. Much.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Sorcerer
IF ~~ BFSImoenSorcerer
SAY ~Remember how he'd sit with you, spellbook in his lap, and you'd practice minor cantrips together? He couldn't mimic your natural spark for magic - but he still fussed until you pronounced every word right.~
= ~I didn't get what you two were on about but I still watched. That's why I started studying magic too. To honor Gorion... and to strengthen my bond with you.~
= ~D'ya think Gorion would let me flip through his spellbook if he could see me now?~
++ ~Imoen, of course he would!~ + BFSImoenMage1
++ ~He'd be more worried about you stealing his spellbook and running off.~ + BFSImoenMage2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenMage1
SAY ~Thanks, <CHARNAME>, I appreciate that. Though, back in Candlekeep, I may well have run off with his spellbook instead. Those sages took themselves way too seriously.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenMage2
SAY ~And he may have been right to. Heh! I like to believe I've matured since then. But hopefully not *too* much.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Mage
IF ~~ BFSImoenMageOther
SAY ~Remember how he'd sit next to you, spellbook in his lap, and you'd practice minor cantrips together? Sometimes he even asked you to scribe a copy from his spellbook.~
= ~I didn't get what you two were on about but I still watched. That's why I started studying magic too. To honor Gorion... and to strengthen my bond with you.~
= ~D'ya think Gorion would let me flip through his spellbook if he could see me now?~
++ ~Imoen, of course he would!~ + BFSImoenMage1
++ ~He'd be more worried about you stealing his spellbook and running off.~ + BFSImoenMage2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

// Bard
IF ~~ BFSImoenBard
SAY ~Remember how he'd ask you to regale him with stories while he was busy scribing scrolls? Or when he convinced ol' Puffguts to let you perform at the Inn?~
= ~I think Gorion secretly enjoyed your stories more than focusing on his own studies sometimes. I know I certainly did.~
++ ~He wanted me to find my own voice even within the quiet corners of Candlekeep.~ + BFSImoenBard1
++ ~Some didn't take too kindly to my stories. Something about silence being sacred within the library.~ + BFSImoenBard2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenBard1
SAY ~And those corners could get very, *very* quiet.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenBard2
SAY ~Pfft! Just you wait. Someday you'll write a story, maybe about our adventures, that they'll beg to have a copy of.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Thief
IF ~~ BFSImoenThiefOther
SAY ~Remember how he had to talk Ulraunt down after they caught us stealing food from the kitchens? Again!~
= ~He had this way of smoothing things over. Ulraunt never quite knew how to handle Gorion's calmness.~
++ ~The warm honeyed buns were worth it!~ + BFSImoenThief1
++ ~I distinctly remember *you* dragging me into that mess. I had my sights set on larger spoils.~ + BFSImoenThief2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenThief1
SAY ~Mmm, yes! We had the stickiest of fingers afterwards. Both from the honey...and from the thievery.~
= ~Hey, <CHARNAME>, I want you to know, you are the best partner-in-crime I could have asked for.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenThief2
SAY ~Well you can definitely be a spoilsport about some things.~
= ~Hey, <CHARNAME>, I want you to know...You are the best partner-in-crime I could have asked for.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// And here is where I lose all sense of tone because I've been at this too long...
// Which means the reread + rewrite starts in earnest here. Once I can stomach looking at this file again. 
// Shaman
IF ~~ BFSImoenShaman
SAY ~Remember how Gorion would watch from a distance while you communed with the spirits? He always seemed so fascinated...but a little uncertain too.~
= ~I once snatched a book from his room about Rashemi shamanic practices. He left notes tucked throughout. Not that reading them made your talents any easier to understand.~
++ ~You both tried, in your own way, and I heard your voices as clearly as the others.~ + BFSImoenShaman1
++ ~I think the spirits unnerved him more than he wanted to admit.~ + BFSImoenShaman2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenShaman1
SAY ~I can't speak with the spirits like you do, <CHARNAME>, but I never doubted your talents. Not for a moment.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenShaman2
SAY ~But he still remained even when he didn't understand. That says a lot about him, about how much he cared, doesn't it?~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Cleric
IF ~~ BFSImoenClericOther
SAY ~Remember how Gorion would sit quietly beside you while you recited your prayers? He never interrupted. He just watched and...waited.~
= ~For my part...I think he was relieved when my beliefs leaned closer towards Tymora than say, uh, Mask.~
++ ~He knew the influence the divine would hold over our lives.~ + BFSImoenCleric1
++ ~I'm not so sure he approved of my choice of deity.~ + BFSImoenCleric2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenCleric1
SAY ~He sure did, didn’t he? Would've been nice of him to inform us about it. Though...given how everything's turned out. Maybe's it's a blessing that we didn't know sooner. That we had those carefree years to shape us beforehand.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenCleric2
SAY ~Maybe not but he trusted you to walk your own path.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Blackguard ( N A S T Y ) 
IF ~~ BFSImoenBlackguard
SAY ~Remember how he would assist Hull with your weapon drills even though he was hopeless with a sword himself? The day you finally landed a hit...~
= ~I think he was trying to hide his smile behind the edge of his sleeve. But he couldn't fool me!~
++ ~There was a time when I sought his approval even though we walked different paths.~ + BFSImoenBlackguard1 
++ ~He was cautious. Always watching. Judging. I don’t think he ever fully trusted my choices.~ + BFSImoenBlackguard2 
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenBlackguard1
SAY ~He knew the influence Bhaal's blood would exert...and he wanted us to make our own choices. Even if he sometimes disagreed with them.~
IF ~~ + BFSImoenWrapThisUpPlz
END
 
IF ~~ BFSImoenBlackguard2
SAY ~His caution came from a place of care and not mistrust.~
= ~He knew the influence Bhaal's blood would exert...and he wanted us to make our own choices. Even if he sometimes disagreed with them.~
IF ~~ + BFSImoenWrapThisUpPlz
END 

// Your friend, Pal-a-din and your Pal, Friend-a-din. 
IF ~~ BFSImoenPaladin
SAY ~Remember how he'd read stories about noble knights and their quest for justice? He wanted us to exist free from the burden of Bhaal's blood.~
= ~It's funny how his lips would quirk into a smile whenever you vowed to defend the weak. Ulraunt may have been afraid us...but, even as a child, you were intent to prove him wrong, huh?~
++ ~Gorion carried a similar burden. A vow to protect us from what we might become. I wish I knew of his sacrifices earlier...~ + BFSImoenPaladin1
++ ~Yet the spectre accused us of needless bloodshed. Was its assumptions wrong?~ + BFSImoenPaladin2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenPaladin1
SAY ~I guess he did in his own stubborn way. Gorion's choice to save us, to raise us, was one he bore with little complaint. At least if Phlydia's ramblings meant anything...~
= ~She'd hammer on about you being a child of destiny. And how she hoped you'd be a positive influence on me. At least when she stuck her nose out of her books. We *really* walked into that one.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenPaladin2
SAY ~Perhaps not entirely. But I *know* you, <CHARNAME>, and you are the opposite of a monster. There are days I think you can shake off Bhaal's influence through sheer will and kindness alone.~
= ~That...thing. That wasn't Gorion. I can't speak for him...but I know he'd be proud of you. Of what you've become. Don't you give those accusations another second of thought!~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Monk, not happy with this, but moving on... 
// Decent concept, sloppy execution 
IF ~~ BFSImoenMonk
SAY ~Remember how he would assist Hull with your training even though he was hopeless at mimicking your movements? His brow would furrow...as though he could *will* himself to improve.~
= ~At first, I thought he might scold us. You remember how he could be, right? There's a reason why I stuck around Old Puffguts Winthrop myself. But Gorion's scolding always came from a place of care.~
++ ~He couldn't match my physical prowess, but Gorion aimed to improve my mental discipline and strength. I will always be grateful for that.~ + BFSImoenMonk1
++ ~Watching him flail around was certainly an experience.~ + BFSImoenMonk2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenMonk1
SAY ~There you go again. Being all sensible. You're allowed to chuckle at his clumsiness. The fact that he made the attempt, despite how awkward he could be, was what mattered.~
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenMonk2
SAY ~You'll have to teach me your ways someday. I have the aptitude for it. And I'd rather not stumble into the same trap Gorion did.~
= ~But the fact that he made the attempt, even if he looked foolish doing it, was what mattered.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// Fighter, ditto, I'm just cannibalizing earlier dialogues for easy points
IF ~~ BFSImoenFighterOther
SAY ~Remember how he'd assist Hull with your drills even though he was hopeless with a sword himself? The day you finally landed a hit...~
= ~He cheered louder than anyone else. Then told Hull you could finally move on from a wooden sword to something with a sharp edge.~
++ ~I was bugging him to let me fight with a real weapon for months!~ + BFSImoenFighter1
++ ~Ulraunt wasn't too pleased with that prospect.~ + BFSImoenFighter2
++ ~You hold fonder memories of him than I do.~ + BFSImoenNotFond
END

IF ~~ BFSImoenFighter1
SAY ~I definitely remember you pouting when he said no! He had the overprotective father instinct down already.~ 
IF ~~ + BFSImoenWrapThisUpPlz
END

IF ~~ BFSImoenFighter2
SAY ~He was just worried that you could finally beat him up. Trust me.~
IF ~~ + BFSImoenWrapThisUpPlz
END

// CLASS SPLIT ENDS, I see the light of day... 
IF ~~ BFSImoenWrapThisUpPlz
SAY ~We've come a long way since then. Sharpened our old skills, picked up a few new ones. Made both friends and enemies.~
~I like to believe Winthrop would be proud of me too.~
++ ~Are you fishing for compliments?~ + BFSImoenFishing
++ ~Are you trying to have a sibling bonding moment?~ + BFSImoenBonding
++ ~Now you're just stalling for time. We can't avoid the Temple forever.~ + BFSImoenWraithEnd2
END

IF ~~ BFSImoenFishing
SAY ~Maaaybe. They certainly wouldn't hurt. Something warm and comforting to chase the words of the spectre away for good.~
IF ~~ + BFSImoenWraithEnd
END

IF ~~ BFSImoenBonding
SAY ~Is it working? ...And what do you mean *trying*? I'll have you know I'm one of the best siblings. Second only to you because you rescued me from Spellhold. Then pulled me back into a semblance of myself.~
= ~I haven't earned chance to rescue you yet. But give me time. We'll get there and then I will. Rescue you, that is.~ 
IF ~~ + BFSImoenWraithEnd
END

IF ~~ BFSImoenWraithEnd2
SAY ~You take the lead, <CHARNAME>, I've got your back.~
IF ~~ DO ~SetGlobal("BFSImoenGorionWraith","GLOBAL",2)~ EXIT
END

IF ~~ BFSImoenWraithEnd
SAY ~...But we can't avoid the inevitable forever. Creepy as this Temple is.~
= ~You take the lead, <CHARNAME>, I've got your back.~
IF ~~ DO ~SetGlobal("BFSImoenGorionWraith","GLOBAL",2)~ EXIT
END

IF ~~ BFSImoenNotFond
SAY ~Then there's nothing more to say. Other than...I'm glad you're here, <CHARNAME>, you're the best sibling I could have asked for.~
IF ~~ + BFSImoenWraithEnd
END

END // FOR APPEND