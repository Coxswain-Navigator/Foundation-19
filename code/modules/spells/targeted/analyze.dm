/datum/spell/targeted/analyze
	name = "Analyze"
	desc = "Using your wizardly powers, you can detect the inner destructions of a persons body."

	feedback = "AZ"
	school = "illusion"
	charge_max = 100
	spell_flags = INCLUDEUSER|SELECTABLE
	range = 2
	invocation_type = INVOKE_WHISPER
	invocation = "Fu Yi Fim"
	compatible_mobs = list(/mob/living/carbon/human)
	hud_state = "analyze"

/datum/spell/targeted/analyze/cast(list/targets, mob/user)
	for(var/a in targets)
		var/mob/living/carbon/human/H = a
		new /obj/effect/temp_visual/temporary(get_turf(a),5, 'icons/effects/effects.dmi', "repel_missiles")
		to_chat(user,medical_scan_results(H,1))
