--Displaying shapes 
--Radin.W
--Tuesday feb 26 2019-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
display.setDefault("background", 204/255, 0/255, 204/255)

--display parallelogram
local verticesParallelogram = {0,-200, 200,-200, 0,100, -200,100}
local myParallelogram = display.newPolygon (250, 350, verticesParallelogram)
myParallelogram:setFillColor (102/255, 0/255, 204/255)
myParallelogram:setStrokeColor(0, 1, 0)
myParallelogram.strokeWidth = 10
textObject = display.newText("Parallelogram", 200, 550, nil, 50 )

--display trapazoid
local verticesTrapazoid = {-150,-175, 100,-175, 150,0, -200,0}
local myTrapazoid = display.newPolygon (800,400, verticesTrapazoid)
myTrapazoid:setFillColor (255/255, 0/255, 0/255)
myTrapazoid:setStrokeColor(0, 0, 1)
myTrapazoid.strokeWidth = 10
textObject = display.newText("Trapazoid", 800, 550, nil, 50 )

--display octagon
local verticesOctagon = {-125,-250, 0,-250, 50,-175, 50,-125, 0,-50, -125,-50, -150,-125, -150,-175}
local myOctagon = display.newPolygon (512,368, verticesOctagon)
myOctagon:setFillColor (127/255, 0/255, 255/255)
--set color of border 
myOctagon:setStrokeColor(0, 0, 0)
myOctagon.strokeWidth = 10
textObject = display.newText("Octagon", 500, 550, nil, 50 )