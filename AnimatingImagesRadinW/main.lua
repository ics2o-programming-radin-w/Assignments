-- Title: TouchAndDrag
-- Name: Radin.W
-- Course: ICS2O/3C-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
-- Animating Images
-- Your code here
--global variables
--scroll speed = 3
display.setStatusBar(display.HiddenStatusBar)

local backgroundImage = display.newImageRect("Images/space.png", 2048,1536)


local archer = display.newImageRect("Images/Archer.png", 200,300)
 archer.x = 200 
 archer.y = display.contentHeight/2

 local manic = display.newImageRect("Images/Manic_2.png", 192,256)

 manic.x = 500
 manic.y = 400
 
 local BartSimpsonPhoto = display.newImageRect("Images/BartSimpsonPhoto.png", 125,150)
 BartSimpsonPhoto.x = 800
 BartSimpsonPhoto.y = 400