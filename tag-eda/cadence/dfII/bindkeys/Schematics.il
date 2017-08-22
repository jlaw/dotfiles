; a-z
hiSetBindKey("Schematics" "<Key>a"               "geSingleSelectPoint()")
hiSetBindKey("Schematics" "Shift<Key>a"          "schSingleSelectBox()")
hiSetBindKey("Schematics" "Ctrl<Key>a"           "schSelectAllFig()")
hiSetBindKey("Schematics" "Ctrl Shift<Key>a"     "geSelectByLine()")

hiSetBindKey("Schematics" "<Key>b"               "schHiCreateBlockInst()")
hiSetBindKey("Schematics" "Shift<Key>b"          "annPinCurrentInfoBalloon(hiGetCurrentWindow())")
hiSetBindKey("Schematics" "Ctrl<Key>b"           "annToggleInfoBalloonVisibilityStatus()")

hiSetBindKey("Schematics" "<Key>c"               "schHiCopy()")

;hiSetBindKey("Schematics" "<Key>d"               "geSubSelectPoint()")
;hiSetBindKey("Schematics" "Shift<Key>d"          "schSubSelectBox()")
hiSetBindKey("Schematics" "Ctrl<Key>d"           "schDeselectAllFig()")

hiSetBindKey("Schematics" "<Key>d"               "schHiDescendRead()")
hiSetBindKey("Schematics" "Shift<Key>e"          "schHiDescendEdit()")
hiSetBindKey("Schematics" "Shift<Key>d"          "schHiReturn()")
hiSetBindKey("Schematics" "Shift<Key>T"          "schHiTree()")

hiSetBindKey("Schematics" "<Key>f"               "schZoomFit(1.0 0.9)")
hiSetBindKey("Schematics" "Shift<Key>f"          "hiZoomAbsoluteScale(getCurrentWindow() 0.9)")
hiSetBindKey("Schematics" "Ctrl<Key>f"           "schSetSelectOptions()")

hiSetBindKey("Schematics" "<Key>g"               "schHiFindMarker()")
hiSetBindKey("Schematics" "Shift<Key>g"          "schHiFindMarker()")
hiSetBindKey("Schematics" "Ctrl<Key>g"           "geHiDeleteMarker()")

hiSetBindKey("Schematics" "<Key>h"               "schHiHiliteLabel(\"wire\" \"on\")")
hiSetBindKey("Schematics" "Shift<Key>h"          "schHiHiliteLabel(\"wire\" \"off\")")

hiSetBindKey("Schematics" "<Key>i"               "schHiCreateInst()")

when( isCallable('schGetEnv) && schGetEnv("enableKanjiNotes")
   hiSetBindKey("Schematics" "Shift<Key>k"        "schHiCreateKanjiSymbol()")
)

hiSetBindKey("Schematics" "<Key>l"               "schHiCreateWireLabel()")
hiSetBindKey("Schematics" "Shift<Key>l"          "schHiCreateNoteLabel()")

hiSetBindKey("Schematics" "<Key>s"               "schHiStretch()")
hiSetBindKey("Schematics" "<Key>m"               "schHiMove()")

hiSetBindKey("Schematics" "<Key>n"               "schHiCreateNoteShape()")
hiSetBindKey("Schematics" "Shift<Key>n"          "schHiCreateNoteLabel()")

hiSetBindKey("Schematics" "<Key>o"               "schHiDisplayOptions()")
hiSetBindKey("Schematics" "Shift<Key>o"          "schHiEditorOptions()")

hiSetBindKey("Schematics" "<Key>p"               "schHiCreatePin()")

hiSetBindKey("Schematics" "<Key>q"               "schHiObjectProperty()")
hiSetBindKey("Schematics" "Shift<Key>q"          "schHiCellViewProperty()")
hiSetBindKey("Schematics" "<Key>q EF"            "schHiObjectProperty()")
hiSetBindKey("Schematics" "Shift<Key>q EF"       "schHiCellViewProperty()")

hiSetBindKey("Schematics" "<Key>r"               "schHiRotate(t)")
hiSetBindKey("Schematics" "<Key>r EF"            "schSetEnv(\"rotate\" t)")
hiSetBindKey("Schematics" "Shift<Key>r EF"       "schSetEnv(\"sideways\" t)")
hiSetBindKey("Schematics" "Ctrl<Key>r EF"        "schSetEnv(\"upsideDown\" t)")

hiSetBindKey("Schematics" "Shift<Key>s"          "_schHiSave()")
hiSetBindKey("Schematics" "Ctrl<Key>s"           "_schHiSaveAs()")
hiSetBindKey("Schematics" "<Key>s EF"            "schSnapToConn()")

hiSetBindKey("Schematics" "<Key>t"             "schHiEditText()")
hiSetBindKey("Schematics" "Ctrl<Key>t"           "schHiZoomToSelSet()")

hiSetBindKey("Schematics" "<Key>u"               "hiUndo()")
hiSetBindKey("Schematics" "Shift<Key>u"          "hiRedo()")

hiSetBindKey("Schematics" "<Key>v"               "hiVectorPan()")
hiSetBindKey("Schematics" "Shift<Key>v"          "_deToggleAssistant(\"World View\")")
hiSetBindKey("Schematics" "Ctrl<Key>v"           "hiFocusToCIW(hiGetCurrentWindow())")

hiSetBindKey("Schematics" "<Key>w"               "schHiCreateWire(0.0)")
hiSetBindKey("Schematics" "Shift<Key>w"          "schHiCreateWire(schGetEnv(\"defWideWireWidth\"))")
hiSetBindKey("Schematics" "<Key>space"           "schHiCreateWireStubs()")

;hiSetBindKey("Schematics" "<Key>x"               "schHiCheck(\"run\")")
hiSetBindKey("Schematics" "<Key>,"               "schHiCheckAndSave()")

hiSetBindKey("Schematics" "<Key>z"               "hiZoomRelativeScale(getCurrentWindow() 1.25)")
hiSetBindKey("Schematics" "Shift<Key>z"          "hiZoomRelativeScale(getCurrentWindow() 0.8)")
hiSetBindKey("Schematics" "Ctrl<Key>z"           "hiZoomIn()")
hiSetBindKey("Schematics" "Ctrl Shift<Key>z"     "hiNextWinView(hiGetCurrentWindow())")

; numerals 0-9
hiSetBindKey("Schematics" "<Key>5"               "schHiRouteFlightLine()")
hiSetBindKey("Schematics" "<Key>8"               "schHiHiliteLabel(\"instance\" \"on\")")
hiSetBindKey("Schematics" "Shift<Key>8"          "schHiHiliteLabel(\"instance\" \"off\")")
hiSetBindKey("Schematics" "<Key>9"               "geEnterAddNetProbe()")

; other characters
hiSetBindKey("Schematics" "<Key>="               "schHiOpenSymbolOrSchematicView(geGetEditCellView() hiGetCurrentWindow())")
hiSetBindKey("Schematics" "<Key>["               "hiZoomRelativeScale(getCurrentWindow() 0.8)")
hiSetBindKey("Schematics" "<Key>]"               "hiZoomRelativeScale(getCurrentWindow() 1.25)")
hiSetBindKey("Schematics" "<Key>."               "hiToggleMagnifier()")
hiSetBindKey("Schematics" "<Key>#"               "hiToggleAnchorMagnifier()")
hiSetBindKey("Schematics" "<Key>'"               "hiUpdateMagOptions()")
hiSetBindKey("Schematics" "<Key>/"               "case(geGetEditCellView()->mode
                                                   (\"a\" schHiChangeEditMode(\"r\"))
                                                   (\"r\" schHiChangeEditMode(\"a\"))
                                                 )")

; mouse buttons
hiSetBindKey("Schematics" "None<Btn1Down>"       "schSingleSelectPt()")
hiSetBindKey("Schematics" "Shift<Btn1Down>"      "schAddSelectPt()")
hiSetBindKey("Schematics" "None<Btn1Down>(2) EF" "schMouseApplyOrFinish()")
hiSetBindKey("Schematics" "Shift<Btn1Down>(2)"   "schExtendSelectPt()")

hiSetBindKey("Schematics" "None<Btn2Down> EF"    "schCmdOption()")
hiSetBindKey("Schematics" "Shift<Btn2Down> EF"   "schShiftCmdOption()")

hiSetBindKey("Schematics" "None<Btn3Down>"       "schHiMousePopUp()")
hiSetBindKey("Schematics" "None<Btn3Down> EF"    "schHiMousePopUp()")

hiSetBindKey("Schematics" "None<Btn4Down>"       "hiZoomInAtMouse()")
hiSetBindKey("Schematics" "None<Btn5Down>"       "hiZoomOutAtMouse()")
hiSetBindKey("Schematics" "Shift<Btn4Down>"      "geScroll(nil \"w\" nil)")
hiSetBindKey("Schematics" "Shift<Btn5Down>"      "geScroll(nil \"e\" nil)")
hiSetBindKey("Schematics" "Ctrl<Btn4Down>"       "geScroll(nil \"n\" nil)")
hiSetBindKey("Schematics" "Ctrl<Btn5Down>"       "geScroll(nil \"s\" nil)")

hiSetBindKey("Schematics" "Ctrl Shift<Btn1Down>" "hiZoomInMagnifier(hiGetCurrentWindow())")
hiSetBindKey("Schematics" "Ctrl Shift<Btn2Down>" "hiZoomOutMagnifier(hiGetCurrentWindow())")
hiSetBindKey("Schematics" "Ctrl Shift<Btn4Down>" "_schScaleMagnifier(1.25)")
hiSetBindKey("Schematics" "Ctrl Shift<Btn5Down>" "_schScaleMagnifier(0.80)")

; drag mouse buttons
hiSetBindKey("Schematics" "<DrawThru1>"          "schDirectEdit(1)")
hiSetBindKey("Schematics" "Shift<DrawThru1>"     "schDirectEdit(2)")
hiSetBindKey("Schematics" "Ctrl<DrawThru1>"      "schDirectEdit(3)")

hiSetBindKey("Schematics" "<DrawThru2>"          "hiDynamicPanGrabbing()")
hiSetBindKey("Schematics" "<DrawThru2>EF"        "hiDynamicPanGrabbing()")

; delete/backspace
hiSetBindKey("Schematics" "<Key>BackSpace"       "schHiDelete()")
hiSetBindKey("Schematics" "<Key>x"               "schHiDelete()")
hiSetBindKey("Schematics" "Shift<Key>Delete"     "schHiIgnore()")

; arrow keys
hiSetBindKey("Schematics" "<Key>Down"            "geScroll(nil \"s\" nil)")
hiSetBindKey("Schematics" "<Key>Left"            "geScroll(nil \"w\" nil)")
hiSetBindKey("Schematics" "<Key>Right"           "geScroll(nil \"e\" nil)")
hiSetBindKey("Schematics" "<Key>Up"              "geScroll(nil \"n\" nil)")
hiSetBindKey("Schematics" "Ctrl Shift<Key>Up"    "hiScaleMagnifier(1.25)")
hiSetBindKey("Schematics" "Ctrl Shift<Key>Down"  "hiScaleMagnifier(0.80)")

; fn keys
hiSetBindKey("Schematics" "<Key>F6"              "hiRedraw()")

hiSetBindKey("Schematics" "<Key>F11"             "deToggleAssistants()")
hiSetBindKey("Schematics" "Shift<Key>F11"        "deToggleAssistants() deToggleToolbars()")
hiSetBindKey("Schematics" "Ctrl<Key>F11"         "deToggleToolbars()")

; Return Key
hiSetBindKey("Schematics" "Return EF"         "schMouseApplyOrFinish()")

when( isCallable('schHDLReturn)
        ; General bindkeys (prefix "Read HDL").
        ;
        hiSetBindKey("Read HDL" "Ctrl<Key>s"    "hiSaveAsViewfile()")
        hiSetBindKey("Read HDL" "Shift<Key>d"    "schHDLReturn()")
)
