-- Copyright © 2013 Corona Labs Inc. All Rights Reserved.
--
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
--    * Redistributions of source code must retain the above copyright
--      notice, this list of conditions and the following disclaimer.
--    * Redistributions in binary form must reproduce the above copyright
--      notice, this list of conditions and the following disclaimer in the
--      documentation and/or other materials provided with the distribution.
--    * Neither the name of the company nor the names of its contributors
--      may be used to endorse or promote products derived from this software
--      without specific prior written permission.
--    * Redistributions in any form whatsoever must retain the following
--      acknowledgment visually in the program (e.g. the credits of the program): 
--      'This product includes software developed by Corona Labs Inc. (http://www.coronalabs.com).'
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
-- ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-- WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL CORONA LABS INC. BE LIABLE FOR ANY
-- DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-- LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-- ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

-----------------------------------------------------------------------------------------
-- theme_android.lua
-----------------------------------------------------------------------------------------
local modname = ...
local theme = {}
package.loaded[modname] = theme
local imageSuffix = display.imageSuffix or ""

local sheetFile = "widget_theme_android.png"
local sheetData = "widget_theme_android_sheet"

-----------------------------------------------------------------------------------------
-- button
-----------------------------------------------------------------------------------------

theme.button = 
{
	sheet = sheetFile,
	data = sheetData,
	
	topLeftFrame = "button_topLeft",
	topLeftOverFrame =  "button_topLeftOver",
	middleLeftFrame = "button_middleLeft",
	middleLeftOverFrame = "button_middleLeftOver",
	bottomLeftFrame = "button_bottomLeft",
	bottomLeftOverFrame = "button_bottomLeftOver",
	
	topMiddleFrame = "button_topMiddle",
	topMiddleOverFrame = "button_topMiddleOver",
	middleFrame = "button_middle",
	middleOverFrame = "button_middleOver",
	bottomMiddleFrame = "button_bottomMiddle",
	bottomMiddleOverFrame = "button_bottomMiddleOver",
	
	topRightFrame = "button_topRight",
	topRightOverFrame = "button_topRightOver",
	middleRightFrame = "button_middleRight",
	middleRightOverFrame = "button_middleRightOver",
	bottomRightFrame = "button_bottomRight",
	bottomRightOverFrame = "button_bottomRightOver",
	
	width = 180, 
	height = 50,
	font = native.systemFontBold,
	fontSize = 20,
	labelColor = 
	{ 
		default = { 0, 0, 0 },
		over = { 0, 0, 0 },
	},
	emboss = true,
}


-----------------------------------------------------------------------------------------
-- slider
-----------------------------------------------------------------------------------------

theme.slider = 
{
	sheet = sheetFile,
    data = sheetData,

	leftFrame = "slider_leftFrame",
	rightFrame = "slider_rightFrame",
	middleFrame = "silder_middleFrame",
	fillFrame = "slider_fill",
	
	topFrame ="slider_topFrameVertical",
	bottomFrame = "slider_bottomFrameVertical",
	middleVerticalFrame = "silder_middleFrameVertical",
	fillVerticalFrame = "slider_fillVertical",
	
	frameWidth = 10,
	frameHeight = 10,
	handleFrame = "slider_handle",
	handleWidth = 32, 
	handleHeight = 32,
}

-----------------------------------------------------------------------------------------
-- pickerWheel
-----------------------------------------------------------------------------------------

theme.pickerWheel = 
{
	sheet = sheetFile,
    data = sheetData,
	backgroundFrame = "picker_bg",
	backgroundFrameWidth = 1,
	backgroundFrameHeight = 222,
	overlayFrame = "picker_overlay",
	overlayFrameWidth = 320,
	overlayFrameHeight = 222,
	seperatorFrame = "picker_separator",
	seperatorFrameWidth = 2,
	seperatorFrameHeight = 8,
	maskFile = "widget_theme_pickerWheel_mask.png",
}

-----------------------------------------------------------------------------------------
-- scrollBar
-----------------------------------------------------------------------------------------

theme.scrollBar = 
{
	sheet = sheetFile,
    data = sheetData,
	topFrame = "scrollBar_top",
	middleFrame = "scrollBar_middle",
	bottomFrame = "scrollBar_bottom",
	width = 5,
	height = 5,
}

-----------------------------------------------------------------------------------------
-- tabBar
-----------------------------------------------------------------------------------------

theme.tabBar = 
{
	sheet = sheetFile,
	data = sheetData,
	backgroundFrame = "tabBar_background",
	backgroundFrameWidth = 100,
	backgroundFrameHeight = 52,
	tabSelectedLeftFrame = "tabBar_tabSelectedLeft",
	tabSelectedRightFrame = "tabBar_tabSelectedRight",
	tabSelectedMiddleFrame = "tabBar_tabSelectedMiddle",
	tabSelectedFrameWidth = 20,
	tabSelectedFrameHeight = 52,
}

-----------------------------------------------------------------------------------------
-- spinner
-----------------------------------------------------------------------------------------

theme.spinner = 
{
	sheet = sheetFile,
	data = sheetData,
	startFrame = "spinner_spinner",
	width = 40,
	height = 40,
	incrementEvery = 50,
	deltaAngle = 30,
}

-----------------------------------------------------------------------------------------
-- switch
-----------------------------------------------------------------------------------------

theme.switch = 
{
	-- Default (on/off switch)
	sheet = sheetFile,
	data = sheetData,
	backgroundFrame = "switch_background",
	backgroundWidth = 165,
	backgroundHeight = 31,
	overlayFrame = "switch_overlay",
	overlayWidth = 83,
	overlayHeight = 31,
	handleDefaultFrame = "switch_handle",
	handleOverFrame = "switch_handleOver",
	mask = "widget_theme_onOff_mask.png",
	
	radio =
	{
		sheet = sheetFile,
		data = sheetData,
		width = 33,
		height = 34,
		frameOff = "switch_radioButtonDefault",
		frameOn = "switch_radioButtonSelected",
	},
	checkbox = 
	{
		sheet = sheetFile,
		data = sheetData,
		width = 33,
		height = 33,
		frameOff = "switch_checkboxDefault",
		frameOn = "switch_checkboxSelected",
	},
}

-----------------------------------------------------------------------------------------
-- stepper
-----------------------------------------------------------------------------------------

theme.stepper = 
{
	sheet = sheetFile,
	data = sheetData,
	defaultFrame = "stepper_nonActive",
	noMinusFrame = "stepper_noMinus",
	noPlusFrame = "stepper_noPlus",
	minusActiveFrame = "stepper_minusActive",
	plusActiveFrame = "stepper_plusActive",
	width = 102,
	height = 38,
}

-----------------------------------------------------------------------------------------
-- progressView
-----------------------------------------------------------------------------------------

theme.progressView = 
{
	sheet = sheetFile,
	data = sheetData,
	fillXOffset = 4.5,
	fillYOffset = 4,
	fillOuterWidth = 12,
	fillOuterHeight = 18,
	fillWidth = 8, 
	fillHeight = 10,
	
	fillOuterLeftFrame = "progressView_leftFillBorder",
	fillOuterMiddleFrame = "progressView_middleFillBorder",
	fillOuterRightFrame = "progressView_rightFillBorder",
	
	fillInnerLeftFrame = "progressView_leftFill",
	fillInnerMiddleFrame = "progressView_middleFill",
	fillInnerRightFrame = "progressView_rightFill",
}

-----------------------------------------------------------------------------------------
-- segmentedControl
-----------------------------------------------------------------------------------------

theme.segmentedControl = 
{
	sheet = sheetFile,
	data = sheetData,
	width = 12,
	height = 29,
	leftSegmentFrame = "segmentedControl_left",
	leftSegmentSelectedFrame = "segmentedControl_leftOn",
	rightSegmentFrame = "segmentedControl_right",
	rightSegmentSelectedFrame = "segmentedControl_rightOn",
	middleSegmentFrame = "segmentedControl_middle",
	middleSegmentSelectedFrame = "segmentedControl_middleOn",
	dividerFrame = "segmentedControl_divider",
}

-----------------------------------------------------------------------------------------
-- searchField
-----------------------------------------------------------------------------------------

theme.searchField = 
{
    sheet = sheetFile,
    data = sheetData,
    leftFrame = "searchField_leftEdge",
	rightFrame = "searchField_rightEdge",
	middleFrame = "searchField_middle",
	magnifyingGlassFrame = "searchField_magnifyingGlass",
    cancelFrame = "searchField_remove",
    edgeWidth = 17.5,
    edgeHeight = 30,
	magnifyingGlassFrameWidth = 16,
	magnifyingGlassFrameHeight = 17,
    cancelFrameWidth = 19,
    cancelFrameHeight = 19,
	textFieldWidth = 145,
	textFieldHeight = 20,
}

return theme
