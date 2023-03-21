package main	

import ui "../../ui-odin/code/ui"

App :: struct {
	path: ui.String,
}

app : App

main :: proc() {
	ui.init(
		init = panels,
		loop = frame,
		title = "app",
		width = 1280,
		height = 720,
	)
}

panels :: proc() {
	ui.create_panel(nil, .Y, .DYNAMIC, panel, 1.0)
}

frame :: proc() {
	
}

panel :: proc() {
	ui.begin()

	ui.axis(.Y)
	ui.size(.PCT_PARENT, 1, .TEXT, 1)
	ui.just(.CENTER)
	ui.label("APP")

	ui.end()
}