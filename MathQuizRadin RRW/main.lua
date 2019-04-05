-- Title: Math Quiz
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays 3 hearts that when the total seconds reach 
--0 you loose one life until you die or you could win some but eventually game over.


--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 0/255, 0/255, 0/255)

----------------------------------------------------------------------
-- LOCAL VARIABLES
----------------------------------------------------------------------

--create local variables
local questionObject
local correctObject
local incorrectObject

local NumericField

local randomNumber1
local randomNumber2


local userAnswer
local correctAnswer

local totalSeconds = 10
local secondsLeft =  10
local gameover

local clockText
local countDownTimer
local score = 0
local lives = 4
local heart1
local heart2
local heart3
local heart4
----------------------------------------------------------------------
-- OBJECT CREATION (IMAGES, NUMERIC TEXT FIELD, TEXT)
----------------------------------------------------------------------

heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 5 / 8
heart1.y = display.contentHeight * 1 / 7


heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 7 / 8
heart2.y = display.contentHeight * 1 / 7

heart3 = display.newImageRect("Images/heart.png" , 100, 100)
heart3.x = display.contentWidth * 6 / 8
heart3.y = display.contentHeight * 1 / 7

heart4 = display.newImageRect("Images/heart.png" , 100, 100)
heart4.x = display.contentWidth * 4 / 8
heart4.y = display.contentHeight * 1 / 7

-- display a question and sets the coulor
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)

correctObject = display.newText( "Correct!", display.contentWidth/4, display.contentHeight/3, nil, 60)
correctObject.isVisible = false

incorrectObject = display.newText("incorrect!", display.contentWidth/2, 550, nil,160)
incorrectObject.isVisible = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

clockText =  display.newText( "", display.contentWidth/6, display.contentHeight/6, nil, 50)

----------------------------------------------------------------------
-- LOCAL FUNCTIONS
----------------------------------------------------------------------

local function UpdateTime()

	--decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- display the number of seconds left in the clock object
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0) then
    	-- reset the number of Seconds left 
    	secondsLeft = totalSeconds
    	lives = lives -1
    end


    if (lives == 4) then
    	heart4.isVisible = false
    elseif (lives == 3) then
        heart1.isVisible = false
    elseif (lives == 2) then
        heart3.isVisible = false
    elseif (lives == 1) then
        heart2.isVisible = false
    elseif (lives == 0) then
end end
  

-- function that calls the timer
local function StartTimer()
	-- create a countdown timer that loops infinitely
	countDownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
end

local function AskQuestion()
	-- generate 2 random numbers numbers between a max. and a min. number
	randomNumber1 = math.random(2, 12)
	randomNumber2 = math.random(2, 12)
    correctAnswer = randomNumber1 + randomNumber2
    correctAnswer = randomNumber2 * randomNumber2 
 
    -- create question in text object
    questionObject.text = randomNumber1 .. " + " .. randomNumber1
    questionObject.text = randomNumber2 .. " * " .. randomNumber2
  
end

  local function HideCorrect()

    correctObject.isVisible = false
    AskQuestion()
end

local function Hideincorrect()
    incorrectObject.isVisible = false
    AskQuestion()

end

local function NumericFieldListener(event)    

   -- User begins editing "numericField"
    if ( event.phase == "began") then

    	--clear text field
    	event.target.text = ""

    elseif event.phase == "submitted" then

      -- when the answer is submitted (enter key is pressed) set user input to user's answer
       userAnswer = tonumber(event.target.text)

        -- if the users answer and the correct answer are the same
         if (userAnswer == correctAnswer)  then
         	correctObject.isVisible = true
         	timer.performWithDelay(2000, HideCorrect)
        else           
            incorrectObject.isVisible = true
            timer.performWithDelay(2000, Hideincorrect)
        end
    end
end
    
   
----------------------------------------------------------------------
-- EVENT LISTENERS
---------------------------------------------------------------------

 

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

----------------------------------------------------------------------
-- FUNCTION CALLS
---------------------------------------------------------------------


-- call the function to ask the question
AskQuestion()
StartTimer()
