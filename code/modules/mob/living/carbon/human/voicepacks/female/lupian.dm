/datum/voicepack/female/lupian/get_sound(soundin, modifiers)
	var/used
	switch(modifiers)
		if("old")
			used = getfold(soundin)
		if("young")
			used = getfyoung(soundin)
		if("silenced")
			used = getfsilenced(soundin)
	if(!used)
		switch(soundin)
			if("howl")
				used = pick('sound/vo/male/lupian/howl.ogg','sound/vo/male/lupian/howl 2.ogg')
			if("growl")
				used = pick('sound/vo/male/lupian/growl.ogg','sound/vo/male/lupian/growl 2.ogg')
			if("pant")
				used = pick('sound/vo/male/lupian/pant.ogg')
	if(!used)
		used = ..(soundin)
	return used
