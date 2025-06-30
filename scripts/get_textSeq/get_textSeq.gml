function get_textSeq(_seq){ //GETTING AN TEXT SEQUENCE
	msg = array_create(0, "Sequence "+string(_seq)+" Don't exist")
	switch(_seq) { //CHECKING WHAT TEXT SEQUENCE THAT I WANT TO RETURN
		
		case "flowey_stick":
			addtext("{face,face_flowey10}* Eek!");
			addtext("{face,face_flowey8}* What the... This forest... was always kind of creppy");
			addtext("{face,face_flowey9}* Keep going.&We don't need to stay here any longer.");
		break;
		
		case "sans_intro":
			addtext("{face,face_sans1}* eheheh, can't believe you fell for it.")
			addtext("{face,face_flowey11}* W-What?{w,10}&What do you think you're doing!?")
			addtext("{face,face_sans1}* just having some fun.&c'mon, am i commiting some crime?")
			addtext("{face,face_flowey12}* That 'fun' could've easily killed them!")
			addtext("{face,face_sans1}* i know that.&it's the reason i did it.")
			addtext("{face,face_flowey11}* A- Are you crazy!?{w,10} {face,face_flowey12}It's a kid!")
			addtext("{face,face_sans1}* well, i wouldn't call myself {c_yellow}sane{/c}.")
			addtext("{face,face_flowey13}* ...Uhh...")
			addtext("{face,face_sans1}* my name is sans.&it's 1 letter off.")
			addtext("{face,face_flowey15}* Oh. What a funny joke...")
			addtext("{face,face_sans1}* i'd love to see some ketchup come out of this&kid. whatcha think?")
			addtext("{face,face_flowey11}* No!{w,10} I can't let you kill this human!")
			addtext("{face,face_sans1}* then what will you do to stop me?")
			addtext("{face,face_flowey9}* I'll... Uhhh... Kill... You... Before you kill&them?")
			addtext("{face,face_sans1}* do you think you can kill me?")
			addtext("{face,face_flowey6}* I can a break bone easily,{w,10} {face,face_flowey3}and since you're made out of bones...")
			addtext("{face,face_sans1}* oh really?")
			addtext("{face,face_flowey6}* ...{face,face_flowey8}Yeah.")
			addtext("{face,face_sans1}* heh... i can't compete against that.")
			addtext("{face,face_flowey14}* Oh.&This worked?")
			addtext("{face,face_sans1}* i'm not going to actually kill you. it's too much for good ol' me..")
			addtext("{face,face_sans1}* instead, i'll keep that to my brother..")
			addtext("{face,face_flowey11}* Your... Brother?")
			addtext("{face,face_sans1}* papyrus. leader of the royal guard.")
			addtext("{face,face_sans1}* he really wants the seventh soul or whatever&the books say.")
			addtext("{face,face_sans1}* he's my brother, and he hunts humans like a fanatic.")
			addtext("{face,face_sans1}* he's kinda cool, but yeah, he's probably killing you both.")
			addtext("{face,face_sans1}* and if he doesn't...")
			addtext("{face,face_flowey15}* You don't have to say it.")
			addtext("{face,face_sans1}* aw, i thought it would be a funny joke. {z}anyways,&i can hear him coming.")
			addtext("{face,face_sans1}* his footsteps are very loud.{z}&let's go talk to him.")
			addtext("{face,face_flowey11}* You go talk to him!{w,10} {face,face_flowey12}we don't want a royal guard seeking us.")
			addtext("{face,face_flowey6}* Human, we need to hide..")
			addtext("{face,face_sans1}* hide huh?{w,10}&i think i have the perfect spot for you.")
			addtext("{face,face_flowey4}* Seriously?{w,10}&now you want to help?!")
			addtext("{face,face_sans1}* nah, i just want to push my brother's buttons.")
			addtext("{face,face_sans1}* you need to see when he gets mad,{w,10} it's hilarious.")
		break;
		
		case "sans_intro1":
			addtext("{face,face_sans1}* there, the great lookin' brock.")
			addtext("{face,face_sans1}* yep, that's his name,{w,10} brock.")
			addtext("{face,face_sans1}* it will hide you up nicely.")
			addtext("{face,face_flowey13}* ...")
			addtext("{face,face_sans1}* what?{w,10} you were expecting something more convinient?")
			addtext("{face,face_sans1}* like a conviniently shaped lamp?")
			addtext("{face,face_sans1}* what kind of weirdo would do that?")
			addtext("{face,face_flowey12}* But we-{w,10} ugh,{w,5} whatever!{w,10}&We're out of time.{w,10} Let's hide behind that rock.")
			addtext("{face,face_sans1}* hey, he has a name.{w,10}&it's brock.")
			addtext("{face,face_flowey15}* Yeah, yeah, whatever you say skeleton!")
		break;
		
		case "pap_intro":
			addtext("{face,face_pap}AAAAAAHH SANS!")
			addtext("{face,face_sans1}* whatsup")
			addtext("{face,face_pap}ARE YOU NOT DOING YOUR JOB AGAIN!? ")
			addtext("{face,face_sans1}* me?{w,10} of course i am, i found this brock here on&the ground.")
			addtext("{face,face_sans1}* it's pretty good lookin'.")
			addtext("{face,face_pap}SANS, THIS ROCK WAS ALWAYS THERE!")
			addtext("{face,face_sans1}* really?{w,10} i didn't had {c_yellow}eyes{/c} for it.")
		break;
		
		case "pap_intro-1":
			addtext("{face,face_pap}SANS?{w,10} THAT JOKE WAS HILARIOUS.")
			addtext("{face,face_pap}FOR ABSOLUTELY NOBODY BUT YOU!")
			addtext("{face,face_sans1}* hey, look at the bright side.{z} it's better than zero, right?")
			addtext("{face,face_pap}SIGH,{w,10} WHY MUST SOMEONE AS GREAT AS ME...")
			addtext("{face,face_pap}NEED TO LIVE WITH A SUCKER LIKE YOU!?")
			addtext("{face,face_sans1}* pretty {c_yellow}humerus{/c} today, aren't we?")
		break;
		
		case "pap_intro-2":
			addtext("{face,face_pap}IF YOU CONTINUE SPEAKING,{w,10} I{w,10} {shake}SWEAR{/r}.")
			addtext("{face,face_pap}I AM GOING TO TAPE YOUR MOUTH SHUT!")
			addtext("{face,face_pap}AND IT'S BETTER FOR YOU TO STOP SLACKING.")
			addtext("{face,face_pap}WE NEED TO FIND A HUMAN REMEMBER?!")
			addtext("{face,face_pap}I NEED TO BE THE ONE TO BRING ASGORE THE LAST SOUL.")
			addtext("{face,face_pap}AND THEN, I'LL BE THE MOST GLORIOUS MONSTER!")
			addtext("{face,face_sans1}* isn't that already asgore?")
			addtext("{face,face_pap}YES!{w,10} BUT HAS ASGORE EVER KILLED A HUMAN?!")
			addtext("{face,face_sans1}* i don't know, didn't even see one.")
			addtext("{face,face_sans1}* but if you're so eager to find another one...")
			addtext("{face,face_sans1}* why won't you just give brock to him?")
			addtext("{face,face_sans1}* i'm sure that would be enough.")
			addtext("{face,face_flowey12}* (You little trash bag)")
			addtext("{face,face_sans1}* did you hear something-{>}")
			addtext("{face,face_pap}ENOUGH SANS!{w,10} IF YOU'RE GOING TO KEEP BEING SO USELESS...")
			addtext("{face,face_pap}...THEN I SHOULD'VE FINISHED YOU OFF EARLIER...")
			addtext("{face,face_pap}BUT FOR NOW,{w,10} YOU CAN LIVE.")
			addtext("{face,face_pap}I STILL NEED A MINION TO SEE MY MISHAPS.")
			addtext("{face,face_pap}NOW,{w,10} LET'S GO SANS!{w,10}&LET'S RECALIBRATE MY TRAPS.")
		break;
		
		case "pap_intro-3":
			addtext("{face,face_pap}MWAHAHAHAHAHAHAHA!")
			addtext("{face,face_sans1}* welp. that's a shame.")
			addtext("{face,face_sans1}* this brock was pretty good lookin'.")
		break;
		
		case "pap_intro-4":
			addtext("{face,face_sans1}* oh, you're still there.")
			addtext("{face,face_sans1}* you must've been really scared weren't ya'?")
			addtext("{face,face_sans1}* i know i would.")
			addtext("{face,face_flowey8}* Of course! why wouldn't we?")
			addtext("{face,face_flowey11}* And what was that?! You almost gave us away, have you lost your mind!")
			addtext("{face,face_sans1}* oh yeah, you talk.")
			addtext("{face,face_sans1}* i was talking about brock, but if you're really that desperate.")
			addtext("{face,face_sans1}* i'll make sure to give you all highlights,{w,10} howzaboutit?")
			addtext("{face,face_flowey13}* What?{w,10} {face,face_flowey11}no!{w,10}&{face,face_flowey12}that's totally a bad idea, no chance!")
			addtext("{face,face_flowey11}* We don't need more eyes on us!")
			addtext("{face,face_sans1}* you need to learn how to make decisions, buddy.")
			addtext("{face,face_flowey12}* (Weirdo.)")
		break;
	}
	return msg //RETURNING THE TEXT SEQUENCE
}