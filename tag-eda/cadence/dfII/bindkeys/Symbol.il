; a-z
hiSetBindKey("Symbol" "<Key>a"           "geSingleSelectPoint()")
hiSetBindKey("Symbol" "Ctrl<Key>a"       "schSelectAllFig()")
hiSetBindKey("Symbol" "Shift<Key>a"      "schSingleSelectBox()")
hiSetBindKey("Symbol" "<Key>c"           "schHiCopy()")
hiSetBindKey("Symbol" "<Key>d"           "geSubSelectPoint()")
hiSetBindKey("Symbol" "Ctrl<Key>d"       "schDeselectAllFig()")
;hiSetBindKey("Symbol" "Shift<Key>d"      "schSubSelectBox()")
hiSetBindKey("Symbol" "Shift<Key>d"      "schHiReturn()")
hiSetBindKey("Symbol" "<Key>f"           "schZoomFit(1.0 0.9)")
hiSetBindKey("Symbol" "Ctrl<Key>f"       "schSetSelectOptions()")
hiSetBindKey("Symbol" "Shift<Key>f"      "hiZoomAbsoluteScale(getCurrentWindow() 0.9)")
hiSetBindKey("Symbol" "<Key>g"           "schHiFindMarker()")
hiSetBindKey("Symbol" "Ctrl<Key>g"       "geHiDeleteMarker()")
hiSetBindKey("Symbol" "Shift<Key>g"      "schHiFindMarker()")
when( isCallable('schGetEnv) && schGetEnv("enableKanjiNotes")
        hiSetBindKey("Symbol" "Shift<Key>k"     "schHiCreateKanjiSymbol()")
)
hiSetBindKey("Symbol" "<Key>l"           "schHiCreateSymbolLabel()")
hiSetBindKey("Symbol" "Shift<Key>l"      "schHiCreateNoteLabel()")
hiSetBindKey("Symbol" "<Key>s"           "schHiSymStretch()")
hiSetBindKey("Symbol" "<Key>m"           "schHiMove()")
hiSetBindKey("Symbol" "<Key>n"           "schHiCreateNoteShape()")
hiSetBindKey("Symbol" "Shift<Key>n"      "schHiCreateNoteLabel()")
hiSetBindKey("Symbol" "<Key>o"           "schHiDisplayOptions()")
hiSetBindKey("Symbol" "Shift<Key>o"      "schHiEditorOptions()")
hiSetBindKey("Symbol" "<Key>p"           "schHiCreateSymbolPin()")
hiSetBindKey("Symbol" "<Key>q EF"        "schHiObjectProperty()")
hiSetBindKey("Symbol" "<Key>q"           "schHiObjectProperty()")
hiSetBindKey("Symbol" "Shift<Key>q"      "schHiCellViewProperty()")
hiSetBindKey("Symbol" "Shift<Key>q EF"   "schHiCellViewProperty()")
hiSetBindKey("Symbol" "<Key>r"           "schHiRotate(t)")
hiSetBindKey("Symbol" "<Key>r EF"        "schSetEnv(\"rotate\" t)")
hiSetBindKey("Symbol" "Shift<Key>r EF"   "schSetEnv(\"sideways\" t)")
hiSetBindKey("Symbol" "Ctrl<Key>r EF"    "schSetEnv(\"upsideDown\" t)")
hiSetBindKey("Symbol" "Ctrl<Key>s"       "_schHiSaveAs()")
hiSetBindKey("Symbol" "Shift<Key>s"      "_schHiSave()")
hiSetBindKey("Symbol" "<Key>t"           "schHiEditText()");
hiSetBindKey("Symbol" "Ctrl<Key>t"       "schHiZoomToSelSet()")
hiSetBindKey("Symbol" "<Key>u"           "hiUndo()")
hiSetBindKey("Symbol" "Shift<Key>u"      "hiRedo()")
hiSetBindKey("Symbol" "<Key>v"           "hiVectorPan()")
hiSetBindKey("Symbol" "Ctrl<Key>v"       "hiFocusToCIW(hiGetCurrentWindow())")
hiSetBindKey("Symbol" "Shift<Key>v"      "_deToggleAssistant(\"World View\")")
;hiSetBindKey("Symbol" "<Key>x"           "schHiVIC()")
hiSetBindKey("Symbol" "<Key>,"           "schHiVICAndSave()")
hiSetBindKey("Symbol" "<Key>z"           "hiZoomRelativeScale(getCurrentWindow() 1.25)")
hiSetBindKey("Symbol" "Shift<Key>z"      "hiZoomRelativeScale(getCurrentWindow() 0.8)")
hiSetBindKey("Symbol" "Ctrl<Key>z"       "hiZoomIn()")
hiSetBindKey("Symbol" "Ctrl Shift<Key>z" "hiNextWinView(hiGetCurrentWindow())")
;hiSetBindKey("Symbol" "Shift<Key>z"      "hiPrevWinView(hiGetCurrentWindow())")

; numerals 0-9
hiSetBindKey("Symbol" "<Key>9" "geEnterAddNetProbe()")

; other characters
hiSetBindKey("Symbol" "<Key>=" "schHiOpenSymbolOrSchematicView(geGetEditCellView() hiGetCurrentWindow())")
hiSetBindKey("Symbol" "<Key>[" "hiZoomRelativeScale(getCurrentWindow() 0.8)")
hiSetBindKey("Symbol" "<Key>]" "hiZoomRelativeScale(getCurrentWindow() 1.25)")
hiSetBindKey("Symbol" "<Key>." "hiToggleMagnifier()")
hiSetBindKey("Symbol" "<Key>#" "hiToggleAnchorMagnifier()")
hiSetBindKey("Symbol" "<Key>'" "hiUpdateMagOptions()")
hiSetBindKey("Symbol" "<Key>/" "case(geGetEditCellView()->mode
                                 (\"a\" schHiChangeEditMode(\"r\"))
                                 (\"r\" schHiChangeEditMode(\"a\"))
                               )")

; mouse buttons
hiSetBindKey("Symbol" "None<Btn1Down>(2) EF" "schMouseApplyOrFinish()")
hiSetBindKey("Symbol" "None<Btn2Down>EF"     "schCmdOption()")
hiSetBindKey("Symbol" "None<Btn3Down> EF"    "schHiMousePopUp()")
hiSetBindKey("Symbol" "None<Btn3Down>"       "schHiMousePopUp()")
hiSetBindKey("Symbol" "Shift<Btn2Down> EF"   "schShiftCmdOption()")

hiSetBindKey("Symbol" "None<Btn4Down>"       "hiZoomInAtMouse()")
hiSetBindKey("Symbol" "None<Btn5Down>"       "hiZoomOutAtMouse()")
hiSetBindKey("Symbol" "Shift<Btn4Down>"      "geScroll(nil \"w\" nil)")
hiSetBindKey("Symbol" "Shift<Btn5Down>"      "geScroll(nil \"e\" nil)")
hiSetBindKey("Symbol" "Ctrl<Btn4Down>"       "geScroll(nil \"n\" nil)")
hiSetBindKey("Symbol" "Ctrl<Btn5Down>"       "geScroll(nil \"s\" nil)")

hiSetBindKey("Symbol" "Ctrl Shift<Btn1Down>" "hiZoomInMagnifier(hiGetCurrentWindow())")
hiSetBindKey("Symbol" "Ctrl Shift<Btn2Down>" "hiZoomOutMagnifier(hiGetCurrentWindow())")
hiSetBindKey("Symbol" "Ctrl Shift<Btn4Down>" "hiScaleMagnifier(1.25)")
hiSetBindKey("Symbol" "Ctrl Shift<Btn5Down>" "hiScaleMagnifier(0.80)")

; drag mouse buttons
hiSetBindKey("Symbol" "<DrawThru1>"      "schDirectEdit(1)")
hiSetBindKey("Symbol" "Ctrl<DrawThru1>"  "schDirectEdit(3)")
hiSetBindKey("Symbol" "Shift<DrawThru1>" "schDirectEdit(2)")

hiSetBindKey("Symbol" "<DrawThru2>"      "hiDynamicPanGrabbing()")
hiSetBindKey("Symbol" "<DrawThru2>EF"    "hiDynamicPanGrabbing()")

; delete/backspace
hiSetBindKey("Symbol" "<Key>BackSpace" "schHiDelete()")
hiSetBindKey("Symbol" "<Key>x"         "schHiDelete()")

; arrow keys
hiSetBindKey("Symbol" "<Key>Down"           "geScroll(nil \"s\" nil)")
hiSetBindKey("Symbol" "<Key>Left"           "geScroll(nil \"w\" nil)")
hiSetBindKey("Symbol" "<Key>Right"          "geScroll(nil \"e\" nil)")
hiSetBindKey("Symbol" "<Key>Up"             "geScroll(nil \"n\" nil)")
hiSetBindKey("Symbol" "Ctrl Shift<Key>Up"   "_schScaleMagnifier(1.25)")
hiSetBindKey("Symbol" "Ctrl Shift<Key>Down" "_schScaleMagnifier(0.80)")

; fn keys
hiSetBindKey("Symbol" "<Key>F6"       "hiRedraw()")
hiSetBindKey("Symbol" "<Key>F11"      "deToggleAssistants()")
hiSetBindKey("Symbol" "Shift<Key>F11" "deToggleAssistants() deToggleToolbars()")
hiSetBindKey("Symbol" "Ctrl<Key>F11"  "deToggleToolbars()")

; Return Key
hiSetBindKey("Symbol" "Return EF"         "schMouseApplyOrFinish()")
