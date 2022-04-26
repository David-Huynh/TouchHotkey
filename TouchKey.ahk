#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileInstall, ./closeButton.png, ./closeButton.png 

SysGet, PriMon, Monitor

Gui, New, +LastFound +AlwaysOnTop +ToolWindow -Caption +E0x08000000, TouchHotkey
Gui, Color, Black

Gui, Add, Picture,x180 y5 w15 h15 gExitButton, ./closeButton.png ;Exit Button
;;;;Start of All Text buttons
Gui, Font, s20 Bold
Gui, Add, Text, BackgroundTrans x10 y60 w100 h30 c535353 gSave, SAVE
Gui, Add, Text, BackgroundTrans x110 y60 w100 h30 c535353 gNew, NEW


Gui, Font, s35 Bold
Gui, Add, Text, BackgroundTrans x9 y175 w200 h45 c535353 gColor, COLOR

Gui, Font, s20 Bold
Gui, Add, Text, BackgroundTrans x10 y305 w100 h30 c535353 gLayer, Layer
Gui, Add, Text, BackgroundTrans x110 y305 w100 h30 c535353 gMask, Mask
Gui, Add, Text, BackgroundTrans x10 y360 w100 h30 c535353 gZoom, Zoom
Gui, Add, Text, BackgroundTrans x110 y360 w100 h45 c535353 gBrushSize, Size

Gui, Font, s30 Bold
Gui, Add, Text, BackgroundTrans x10 y415 w200 h45 c535353 gCurves, CURVES

Gui, Font, s20 Bold
Gui, Add, Text, BackgroundTrans x10 y480 w100 h30 c535353 gUndo, Undo
Gui, Add, Text, BackgroundTrans x110 y480 w100 h30 c535353 gRedo, Redo
Gui, Add, Text, BackgroundTrans x10 y515 w100 h30 c535353 gBrush, Brush
Gui, Add, Text, BackgroundTrans x110 y515 w100 h30 c535353 gEraser, Erase

Gui, Font, s35 Bold
Gui, Add, Text, BackgroundTrans x25 y570 w200 h45 c535353 gShift, SHIFT

Gui, Font, s20 Bold
Gui, Add, Text, BackgroundTrans x10 y630 w100 h30 c535353 gCtrl, CTRL
Gui, Add, Text, BackgroundTrans x120 y630 w100 h30 c535353 gAlt, ALT

Gui, Font, s35 Bold
Gui, Add, Text, BackgroundTrans x10 y670 w200 h45 c535353 gSpace, SPACE

Gui, Font, s20 Bold
Gui, Add, Text, BackgroundTrans x10 y745 w100 h30 c535353 gCopy, Copy
Gui, Add, Text, BackgroundTrans x110 y745 w100 h30 c535353 gPaste, Paste
Gui, Add, Text, BackgroundTrans x10 y775 w90 h30 c535353 gEscape, ESC
Gui, Add, Text, BackgroundTrans x110 y775 w100 h30 c535353 gDelete, Delete
;;;; End of all Text Buttons
Gui, Show, w200 h%PriMonBottom% x0 y0 NoActivate
Return

Escape:
Send {Esc}
Return

Delete:
Send {Delete}
Return

Save:
Send ^{s}
Return

New:
Send ^{n}
Return

ExitButton:
ExitApp
Return

Ctrl:
Send {Ctrl}
Return

Alt:
Send {Alt}
Return

Shift:
Send {Shift}
Return

Space:
Send {Space}
Return

Brush:
Send {B}
Return

Eraser:
Send {E}
Return

BrushSize:
Send !{RButton}
Return

Zoom:
Send ^{Space}
Return

Color:
Send !+{RButton}
Return

Curves:
Send ^{m}

Layer:
Send ^+{n}
Return

Mask:
Send ^!{g}
Return

Copy:
Send ^{c}
Return

Paste:
Send ^{v}
Return

Undo:
Send ^{z}
Return

Redo:
Send ^{y}
Return