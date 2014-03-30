local widget = require('widget')

local back = display.newImage( 'brick_texture118.jpg' )
back.anchorX = 0
back.anchorY = 0

local light = display.newImage('light.png')
light.x = 100
light.y = 100
--light.alpha = 0.5
--light.blendMode = 'xor'
--light:setFillColor( 0.99, 0.99, 0.55, 0.78 )

local function lightMoveUp()
	transition.to( light, {y = 100, time = 3000} )
end

local function lightMoveRight()
	transition.to( light, {x = 100, time = 3000, onComplete = lightMoveUp} )
end

local function lightMoveDown()
	transition.to( light, {y = 600, time = 3000, onComplete = lightMoveRight} )
end

local function lightMoveLeft()
	transition.to( light, {x = 600, time = 3000, onComplete = lightMoveDown} )
end

lightMoveLeft()
timer.performWithDelay( 12000, lightMoveLeft , -1 )


local function lightScaleDown()
	transition.to( light, {xScale = 1.90909, yScale = 1.90909, time = 100, onComplete = lightScaleUp})
end

local function lightScaleUp()
	transition.to( light, {xScale = 2.1, yScale = 2.1, time = 100, onComplete = lightScaleDown})
end

timer.performWithDelay( 200, lightScaleUp, -1 )



local btnBlendNormal = widget.newButton( {fontSize = 36, x = 100, y = 650, onPress = function() light.blendMode = 'normal' end} )
btnBlendNormal:setLabel( 'normal' )

local btnBlendAdd = widget.newButton( {fontSize = 36, x = 100, y = 700, onPress = function() light.blendMode = 'add' end} )
btnBlendAdd:setLabel( 'add' )

local btnBlendMultiply = widget.newButton( {fontSize = 36, x = 100, y = 750, onPress = function() light.blendMode = 'multiply' end} )
btnBlendMultiply:setLabel( 'multiply' )

local btnBlendScreen = widget.newButton( {fontSize = 36, x = 100, y = 800, onPress = function() light.blendMode = 'screen' end} )
btnBlendScreen:setLabel( 'screen' )


--"clear"
local btnBlendClear = widget.newButton( {fontSize = 36, x = 100, y = 850, onPress = function() light.blendMode = 'clear' end} )
btnBlendClear:setLabel( 'clear' )
--"src"
local btnBlendsrc = widget.newButton( {fontSize = 36, x = 100, y = 900, onPress = function() light.blendMode = 'src' end} )
btnBlendsrc:setLabel( 'src' )
--"dst"
local btnBlenddst = widget.newButton( {fontSize = 36, x = 100, y = 950, onPress = function() light.blendMode = 'dst' end} )
btnBlenddst:setLabel( 'dst' )
--"srcOver"
local btnBlendsrcOver = widget.newButton( {fontSize = 36, x = 100, y = 1000, onPress = function() light.blendMode = 'srcOver' end} )
btnBlendsrcOver:setLabel( 'srcOver' )
--"dstOver"
local btnBlenddstOver = widget.newButton( {fontSize = 36, x = 100, y = 1050, onPress = function() light.blendMode = 'dstOver' end} )
btnBlenddstOver:setLabel( 'dstOver' )
--"srcIn"
local btnBlendsrcIn = widget.newButton( {fontSize = 36, x = 100, y = 1100, onPress = function() light.blendMode = 'srcIn' end} )
btnBlendsrcIn:setLabel( 'srcIn' )

--"dstIn"
local btnBlenddstIn = widget.newButton( {fontSize = 36, x = 300, y = 650, onPress = function() light.blendMode = 'dstIn' end} )
btnBlenddstIn:setLabel( 'dstIn' )
--"srcOut"
local btnBlendsrcOut = widget.newButton( {fontSize = 36, x = 300, y = 700, onPress = function() light.blendMode = 'srcOut' end} )
btnBlendsrcOut:setLabel( 'srcOut' )
--"dstOut"
local btnBlenddstOut = widget.newButton( {fontSize = 36, x = 300, y = 750, onPress = function() light.blendMode = 'dstOut' end} )
btnBlenddstOut:setLabel( 'dstOut' )
--"srcAtop"
local btnBlendsrcAtop = widget.newButton( {fontSize = 36, x = 300, y = 800, onPress = function() light.blendMode = 'srcAtop' end} )
btnBlendsrcAtop:setLabel( 'srcAtop' )
--"dstAtop"
local btnBlenddstAtop = widget.newButton( {fontSize = 36, x = 300, y = 850, onPress = function() light.blendMode = 'dstAtop' end} )
btnBlenddstAtop:setLabel( 'dstAtop' )
--"xor"
local btnBlendxor = widget.newButton( {fontSize = 36, x = 300, y = 900, onPress = function() light.blendMode = 'xor' end} )
btnBlendxor:setLabel( 'xor' )