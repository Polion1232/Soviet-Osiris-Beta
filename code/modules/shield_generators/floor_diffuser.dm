/obj/machinery/shield_diffuser
	name = "shield diffuser"
	desc = "A small underfloor device specifically designed to disrupt energy barriers."
//	description_info = "This device disrupts shields on directly adjacent tiles (in a + shaped pattern). They are commonly installed around exterior airlocks to prevent shields from blocking EVA access."
	icon = 'icons/obj/machines/shielding.dmi'
	icon_state = "fdiffuser_on"

	//By setting these values to zero, shield diffusers will not process. They dont need to process
	use_power = 0
	idle_power_usage = 0
	active_power_usage = 0

	anchored = 1
	density = 0
	level = BELOW_PLATING_LEVEL
	var/alarm = 0
	var/enabled = 1
	var/list/diffused_turfs = list()

//Updates the turfs we're affecting, called when moved, placed, or destroyed
/obj/machinery/shield_diffuser/proc/update_turfs()
	//Remove our diffusal from the turfs we affected
	for (var/turf/T in diffused_turfs)
		T.diffused--

	//Empty our list
	diffused_turfs = list()

	if (enabled && !alarm && istype(loc, /turf))
		diffuse(loc)
		for (var/d in GLOB.cardinal)
			diffuse(get_step(src, d))
	update_shield_generators()

/obj/machinery/shield_diffuser/proc/diffuse(var/turf/T)
	if (!T)
		return

	if (!(T in diffused_turfs))
		diffused_turfs.Add(T)
		T.diffused++

/obj/machinery/shield_diffuser/Process()
	if(alarm)
		alarm--
		if(alarm <= 0)
			alarm = 0
			update_turfs()
			update_icon()
			return PROCESS_KILL
		return

/obj/machinery/shield_diffuser/Initialize()
	update_turfs()
	. = ..()

/obj/machinery/shield_diffuser/Move(NewLoc, Dir = 0, step_x = 0, step_y = 0, var/glide_size_override = 0)
	. = ..()
	update_turfs()

/obj/machinery/shield_diffuser/Destroy()
	enabled = FALSE
	update_turfs()
	return ..()

/obj/machinery/shield_diffuser/attackby(obj/item/O as obj, mob/user as mob)
	if(default_deconstruction(O, user))
		return
	if(default_part_replacement(O, user))
		return

/obj/machinery/shield_diffuser/update_icon()
	if(alarm)
		icon_state = "fdiffuser_emergency"
		return
	if((stat & (NOPOWER | BROKEN)) || !enabled)
		icon_state = "fdiffuser_off"
	else
		icon_state = "fdiffuser_on"

/obj/machinery/shield_diffuser/attack_hand()
	if(alarm)
		to_chat(usr, "You press an override button on \the [src], re-enabling it.")
		alarm = 0
		update_icon()
		return
	enabled = !enabled
	update_turfs()
	update_icon()
	to_chat(usr, "You turn \the [src] [enabled ? "on" : "off"].")

/obj/machinery/shield_diffuser/proc/meteor_alarm(var/duration)
	if(!duration)
		return
	alarm = round(max(alarm, duration))
	update_icon()

/obj/machinery/shield_diffuser/examine(var/mob/user)
	. = ..()
	to_chat(user, "It is [enabled ? "enabled" : "disabled"].")
	if(alarm)
		to_chat(user, "A red LED labeled \"Proximity Alarm\" is blinking on the control panel.")

/obj/machinery/shield_diffuser/ex_act(severity)
	return