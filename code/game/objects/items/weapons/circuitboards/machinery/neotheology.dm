/obj/item/weapon/circuitboard/absolutism/cloner
	name = T_BOARD("absolutism cloner")
	build_path = /obj/machinery/absolutism/cloner
	board_type = "machine"
	frame_type = FRAME_VERTICAL
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 4)
	req_components = list(
		/obj/item/weapon/stock_parts/scanning_module = 1,
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/stock_parts/manipulator = 3,
		/obj/item/weapon/implant/core_implant/cruciform = 1
	)

/obj/item/weapon/circuitboard/absolutism/reader
	name = T_BOARD("cruciform reader")
	build_path = /obj/machinery/absolutism/reader
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_MAGNET = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/scanning_module = 2,
		/obj/item/weapon/implant/core_implant/cruciform = 1
	)

/obj/item/weapon/circuitboard/absolutism/biocan
	name = T_BOARD("biomass container")
	build_path = /obj/machinery/absolutism/biomass_container
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 3,
		/obj/item/weapon/implant/core_implant/cruciform = 1
	)


//power biogenerator
/obj/item/weapon/circuitboard/absolutism/biogen
	name = T_BOARD("biomatter power generator")
	build_path = /obj/machinery/multistructure/biogenerator_part/generator
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 2,
		/obj/item/weapon/stock_parts/manipulator = 2,
		/obj/item/weapon/implant/core_implant/cruciform = 1
	)


/obj/item/weapon/circuitboard/absolutism/biogen_port
	name = T_BOARD("biomatter power generator port")
	build_path = /obj/machinery/multistructure/biogenerator_part/port
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/stock_parts/manipulator = 3,
		/obj/item/weapon/implant/core_implant/cruciform = 1
	)


/obj/item/weapon/circuitboard/absolutism/biogen_console
	name = T_BOARD("biomatter power generator metrics")
	build_path = /obj/machinery/multistructure/biogenerator_part/console
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/weapon/stock_parts/scanning_module = 3,
		/obj/item/weapon/implant/core_implant/cruciform = 1
	)


//bioreactor
/obj/item/weapon/circuitboard/absolutism/bioreactor_platform
	name = T_BOARD("bioreactor platform")
	build_path = /obj/machinery/multistructure/bioreactor_part/platform
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/scanning_module = 1,
		/obj/item/weapon/stock_parts/matter_bin = 2
	)


/obj/item/weapon/circuitboard/absolutism/bioreactor_unloader
	name = T_BOARD("bioreactor unloader")
	build_path = /obj/machinery/multistructure/bioreactor_part/unloader
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/weapon/stock_parts/capacitor = 1,
		/obj/item/weapon/stock_parts/matter_bin = 2
	)

/obj/item/weapon/circuitboard/absolutism/bioreactor_biotank
	name = T_BOARD("bioreactor biomatter tank")
	build_path = /obj/machinery/multistructure/bioreactor_part/biotank_platform
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/weapon/stock_parts/capacitor = 1,
		/obj/item/weapon/stock_parts/matter_bin = 4,
		/obj/item/stack/cable_coil = 5,
		/obj/item/weapon/stock_parts/manipulator = 2
	)

/obj/item/weapon/circuitboard/absolutism/bioreactor_port
	name = T_BOARD("bioreactor port")
	build_path = /obj/machinery/multistructure/bioreactor_part/bioport
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 2,
		/obj/item/stack/cable_coil = 2,
		/obj/item/weapon/stock_parts/manipulator = 1
	)

/obj/item/weapon/circuitboard/absolutism/bioreactor_metrics
	name = T_BOARD("bioreactor metrics screen")
	build_path = /obj/machinery/multistructure/bioreactor_part/console
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/stack/cable_coil = 4,
		/obj/item/weapon/stock_parts/manipulator = 1,
		/obj/item/weapon/stock_parts/console_screen = 1
	)

/obj/item/weapon/circuitboard/absolutism/bioreactor_loader
	name = T_BOARD("bioreactor loader")
	build_path = /obj/machinery/multistructure/bioreactor_part/loader
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 1,
		/obj/item/weapon/stock_parts/manipulator = 2,
		/obj/item/weapon/stock_parts/micro_laser = 2
	)


//Solidifier
/obj/item/weapon/circuitboard/absolutism/solidifier
	name = T_BOARD("biomatter solidifier")
	build_path = /obj/machinery/biomatter_solidifier
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 2,
		/obj/item/weapon/stock_parts/manipulator = 2,
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/capacitor = 1
	)

/obj/item/weapon/circuitboard/absolutism/bioprinter
	name = T_BOARD("biomatter printer")
	build_path = /obj/machinery/autolathe/bioprinter
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2)
	req_components = list(
		/obj/item/weapon/stock_parts/matter_bin = 3,
		/obj/item/weapon/stock_parts/manipulator = 2,
		/obj/item/weapon/stock_parts/micro_laser = 1,
		/obj/item/weapon/stock_parts/console_screen = 1
	)
