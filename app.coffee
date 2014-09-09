# This imports all the layers for "ScreendockFramer1" into screendockframer1Layers
lyr = Framer.Importer.load "imported/ScreendockFramer1"

# Import and name all layers from Sketch
about = lyr.About
share = lyr.Share
stats = lyr.Stats
nav = lyr.Nav
sel = lyr.Select
babout = lyr.Babout
bshare = lyr.Bshare
bstats = lyr.Bstats

about.opacity = 1;
share.opacity = 0;
stats.opacity = 0;
share.x = 1000
stats.x = 1000







# Define a set of states with names (the original state is 'default')
sel.states.add
	second:
		x:494
	third:
		x:600	
about.states.add
	second:
		opacity:0
		x:-230
	third: 
		opacity:0
		x:-230	
share.states.add
	second:
		opacity: 1
		x:382
	third:
		x:-230
		opacity: 0
stats.states.add
	second:
		opacity:0
		x:1000
	third:
		opacity:1
		x:390
	extra:
		x:1000

sel.states.animationOptions =
	curve: "ease-in"
	time: 0.30
about.states.animationOptions =
	curve: "ease-in"
	time: 0.30
share.states.animationOptions =
	curve: "ease-in"
	time: 0.30
stats.states.animationOptions =
	curve: "ease-in"
	time: 0.30

# On a click, go to the next state
babout.on Events.Click, ->
# 	if(about.states.current == "third")
# 		stats.states.switchInstant("extra")
# 		console.log("Extra")
# 	else
	about.states.switch("default")
	share.states.switch("default")
	stats.states.switch("default")
	sel.states.switch("default")
		
bshare.on Events.Click, ->
	about.states.switch("second")
	share.states.switch("second")
	stats.states.switch("second")
	sel.states.switch("second")
bstats.on Events.Click, ->
	about.states.switch("third")
	share.states.switch("third")
	stats.states.switch("third")
	sel.states.switch("third")