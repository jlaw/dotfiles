; legRpDelta : used below inside key bindings for Numeric Key Pad
legRpDelta = 0.5

hiSetBindKeys("Layout" list(

;***************************************************************************
; Standard Keys
;***************************************************************************

list("<Key>a"             "leHiQuickAlign()")
list("Shift<Key>a"        "geSelectArea()")
list("Ctrl<Key>a"         "geSelectAllFig()")
list("Ctrl Shift<Key>a"   "leHiAddWireVia(hiGetCurrentWindow() \"down\")")

list("<Key>b"             "leReturnToLevel()")
list("Shift<Key>d"        "leReturn()")
list("Ctrl<Key>b"         "leBalloonToggleOnOff()")

list("<Key>c"             "leHiCopy()")
list("Shift<Key>c"        "leHiChop()")

;list("<Key>d"             "geSubSelectPoint()")
;list("Shift<Key>d"        "geSubSelectBox()")
;list("Ctrl<Key>d"         "geDeselectAllFig()")
list("Ctrl Shift<Key>d"   "leHiP2P()")

list("<Key>e"             "leHiEditDisplayOptions()")
list("Shift<Key>e"        "leHiEditEditorOptions()")
list("Ctrl<Key>e"         "leToggleDrdMode()")
list("Ctrl Shift<Key>e"   "leHiAddWireVia(hiGetCurrentWindow() \"targetLayers\")")

list("<Key>f"             "hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
list("Shift<Key>f"        "hiGetCurrentWindow()->stopLevel = dbGetMaxHierDepth()-1")
list("Ctrl<Key>f"         "leSetStopLevelToEditLevel(hiGetCurrentWindow())")

list("<Key>g"             "leToggleGravity()")
list("Ctrl<Key>g"         "geZoomToGrid(hiGetCurrentWindow())")
list("Shift<Key>g"        "leHiCreateGuardRing()")
list("Ctrl Shift<Key>g"   "weGatherBusWires(hiGetCurrentWindow())")

list("<Key>h"             "leHiRepeatCopy()")
list("Ctrl Shift<Key>h"	  "drdCompactSelSet('left)")

list("<Key>i"             "leHiCreateInst()")
list("Ctrl<Key>i"         "leBalloonCycleThru()")
list("Shift<Key>i"        "leHiGuidedRoutingReverseEnvelope(hiGetCurrentWindow())")
list("<Key>]"        	  "leConvertIBToDSIB()")

list("<Key>j"             "geSelObjectsPartiallySelected()")
list("Ctrl<Key>j"         "leHiFlip()")
list("Ctrl Shift<Key>j"	  "drdCompactSelSet('right)")

list("<Key>k"             "leHiCreateMeasurement()")
list("Shift<Key>k"        "leHiClearMeasurement()")
list("Ctrl Shift<Key>k"   "leHiClearMeasurementInHier()")
list("Ctrl<Key>k"         "leToggleKeepFirstName()")

list("<Key>l"             "leHiCreateLabel(hiGetCurrentWindow() leGetEnv(\"labelMode\"))")
list("Ctrl<Key>l EF"      "weCWHoldWidth()")

list("<Key>m"             "leHiMove()")
list("Shift<Key>m"        "leHiMerge()")

list("<Key>n"             "leCycleSnapModes()")
list("Shift<Key>n"        "leGetCoordinateForm()")
list("Ctrl<Key>n"         "leSetFormSnapMode(\"L90XFirst\")")
list("Ctrl Shift<Key>n"	  "drdCompactSelSet('bottom)")

list("<Key>o"             "leHiCreateVia()")
list("Shift<Key>o"        "leHiRotate()")
list("Ctrl<Key>o"         "geSelectViaPile()")

list("<Key>p"             "leHiCreateWire()")
list("Shift<Key>p"        "leHiCreatePolygon()")
list("Ctrl<Key>p"         "leHiCreatePin()")

list("<Key>q"             "leHiEditProp()")
list("Shift<Key>q"        "leEditDesignProperties()")
list("Ctrl Shift<Key>q"   "leHiAddWireVia(hiGetCurrentWindow() \"up\")")

list("<Key>r"             "leHiCreateRect()")
list("Shift<Key>r"        "leHiReShape()")
list("Ctrl<Key>r"         "hiRedraw()")
;list("Ctrl Shift<Key>r"  "drdSetupFilters()") ;; please reserve

list("<Key>s"             "leHiStretch()")
list("Shift<Key>s"        "leHiSearch()")
list("Ctrl<Key>s"         "leHiSplit()")
list("Ctrl Shift<Key>s"   "leHiCreateStrandedWire()")

list("<Key>t"             "leHiLayerTap()")
list("Shift<Key>t"        "leHiTree()")
list("Ctrl<Key>t"         "leZoomToSelSet()")
list("Ctrl Shift<Key>t"	  "drdCompactSelSet('target)")

list("<Key>u"             "hiUndo()")
list("Shift<Key>u"        "hiRedo()")
list("Ctrl Shift<Key>u"	  "drdCompactSelSet('top)")

list("<Key>v"             "leHiAttach()")
list("Shift<Key>v"        "deToggleAssistantVisibility(\"World View\")")
list("Ctrl<Key>v"         "hiFocusToCIW(hiGetCurrentWindow())")
list("Ctrl Shift<Key>v EF" "leFinishWire()")

list("<Key>w"             "hiPrevWinView(hiGetCurrentWindow())")
list("Shift<Key>w"        "hiNextWinView(hiGetCurrentWindow())")
list("Ctrl<Key>w"         "leCloseWindow()")
list("Ctrl Shift<Key>w"   "leHiCreateWire()")

list("Ctrl<Key>d"         "leHiEditInPlace()")
list("<Key>d"             "leHiDescend(hiGetCurrentWindow() \"read\")")
list("Ctrl<Key>x"         "leEIPZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
list("Ctrl Shift<Key>x"   "leHiCreateBus()")

list("<Key>y"             "leHiYank()")
list("Shift<Key>y"        "leHiPaste()")
list("Ctrl<Key>y"         "geCycleSelectNext()")

list("Ctrl<Key>z"         "hiZoomIn()")
list("Shift<Key>z"        "hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
list("<Key>z"             "hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
list("Ctrl Shift<Key>z"   "leWECycleControlWire()")
list("<DrawThru2>"        "hiDynamicPanGrabbing()")

list("<Key>2"             "leFinishTrunk()")
list("<Key>3"             "_iaSelectAreaAndRoute()")

;***************************************************************************
; Special Keys
;***************************************************************************

list("<Key>Escape EF"     "cancelEnterFun()")
list("<Key>Delete EF"     "leHiDelete()"    )
list("<Key>x"             "leHiDelete()")
list("<Key>Tab"           "hiPan()")
list("<Key>Tab EF"      "leSetFocusToEditableFieldsInStatusToolbar(hiGetCurrentWindow())")
list("<Key>F3"            "leHiSaveACopy(hiGetCurrentWindow())")
list("<Key>F3 EF"         "hiToggleEnterForm()")
list("<Key>,"             "geSave()")
list("<Key>F5"            "deFileOpen()")
list("Shift<Key>F5"       "leFullSelectFigOfSelSet()")
list("<Key>F6"            "leToggleMaintainConnections()")
list("<Key>F7"            "leHiEditDRDRuleOptions()")
list("<Key>F9"            "geToggleFilterSize()")
list("<Key>F11"           "deToggleAssistants()")
list("Ctrl<Key>F11"       "deToggleToolbars()")
list("Shift<Key>F11"      "deToggleToolbars() deToggleAssistants()")
list("<Key>BackSpace"     "deletePoint()")
list("<Key>` EF"	  "drdToggleSmartSnapMode()")
list("Shift<Key>` EF"	  "drdToggleSmartSnapModeForDiscreteSpacing()")
list("<Key>1 EF"	  "drdEnablePixelThreshold(!drdIsPixelThresholdEnabled())")

;***************************************************************************
; Numeric Key Pad (Window Panning Functions)
;***************************************************************************

list("<Key>R7"            "geScroll(nil \"nw\"    nil)")
list("<Key>Up"            "geScroll(nil \"n\"    nil)")
list("<Key>R9"            "geScroll(nil \"ne\"    nil)")
list("<Key>Left"          "geScroll(nil \"w\"    nil)")
list("<Key>R11"           "geScroll(nil \"\"    nil)")
list("<Key>Right"         "geScroll(nil \"e\"    nil)")
list("<Key>R13"           "geScroll(nil \"sw\"    nil)")
list("<Key>Down"          "geScroll(nil \"s\"    nil)")
list("<Key>R15"           "geScroll(nil \"se\"    nil)")

list("<Key>KP_Enter"      "mouseAddPt()")
list("<Key>KP_Add"        "leHiSetRefPoint()")
list("<Key>KP_Subtract"   "leSetRefPointInactive(geGetEditCellView())")

list("<Key>KP_Equal"      "legRpDelta = 0.5")
list("<Key>KP_Divide"     "drdAddTarget()")
list("<Key>KP_Divide EF"  "drdAddTarget()")
list("<Key>KP_Multiply"   "drdRemoveTarget()")
list("<Key>KP_Multiply EF" "drdRemoveTarget()")

list("<Key>R4"            "legRpDelta = 0.5")
list("<Key>R5"            "legRpDelta = 1.0")
list("<Key>R6"            "legRpDelta = 2.0")

list("Shift<Key>R7"       "leMoveCursor(-legRpDelta  legRpDelta)")
list("Shift<Key>Up"       "leMoveCursor(          0  legRpDelta)")
list("Shift<Key>R9"       "leMoveCursor( legRpDelta  legRpDelta)")
list("Shift<Key>Left"     "leMoveCursor(-legRpDelta           0)")
list("Shift<Key>R11"      "leMoveCursorToRefPoint()")
list("Shift<Key>Right"    "leMoveCursor( legRpDelta           0)")
list("Shift<Key>R13"      "leMoveCursor(-legRpDelta -legRpDelta)")
list("Shift<Key>Down"     "leMoveCursor(0           -legRpDelta)")
list("Shift<Key>R15"      "leMoveCursor( legRpDelta -legRpDelta)")

list("Ctrl<Key>R7"        "geScroll(nil \"nw\"    t)")
list("Ctrl<Key>Up"        "geScroll(nil \"n\"    t)")
list("Ctrl<Key>R9"        "geScroll(nil \"ne\"    t)")
list("Ctrl<Key>Left"      "geScroll(nil \"w\"    t)")
list("Ctrl<Key>R11"       "geScroll(nil \"\"    t)")
list("Ctrl<Key>Right"     "geScroll(nil \"e\"    t)")
list("Ctrl<Key>R13"       "geScroll(nil \"sw\"    t)")
list("Ctrl<Key>Down"      "geScroll(nil \"s\"    t)")
list("Ctrl<Key>R15"       "geScroll(nil \"se\"    t)")

list("<Key>space"         "leHiAddWireVia(hiGetCurrentWindow())")
list("Ctrl<Key>space"     "(leWECycleSnap)")
list("Ctrl Shift<Key>space" 
                          "(leWENoSnap)")
list("<Key>space EF"      "leSpaceBarFunc(hiGetCurrentWindow() t)")
list("Shift<Key>space EF" "leSpaceBarFunc(hiGetCurrentWindow() t t)")
list("Ctrl<Key>space EF"  "leSpaceBarFunc(hiGetCurrentWindow() \"cancel\")")
list("Ctrl Shift <Key>space EF"
                          "leSpaceBarFunc(hiGetCurrentWindow() \"ctrlShift\")")
list("<Key>."               "leToggleMagnifier()")
list("<Key>#"               "hiToggleAnchorMagnifier()")
list("<Key>'"               "hiUpdateMagOptions()")
list("Ctrl Shift<Btn1Down>" "hiZoomInMagnifier(hiGetCurrentWindow())")
list("Ctrl Shift<Btn2Down>" "hiZoomOutMagnifier(hiGetCurrentWindow())")
list("Ctrl Shift<Btn4Down> EF" "weScaleMagnifierOrIncreaseWidth()")
list("Ctrl Shift<Btn5Down> EF" "weScaleMagnifierOrDecreaseWidth()")
list("Ctrl<Btn4Down> EF" "weScrollOrCycleUpWireViaAlignment()")
list("Ctrl<Btn5Down> EF" "weScrollOrCycleDownWireViaAlignment()")
list("Ctrl Shift<Key>Up"    "hiScaleMagnifier(1.25)")
list("Ctrl Shift<Key>Down"  "hiScaleMagnifier(0.80)")
list("<Key>+" "leIncrementStopLevelByOne(hiGetCurrentWindow())")
list("<Key>-" "leDecrementStopLevelByOne(hiGetCurrentWindow())")
list("<Key>/" "case(geGetEditCellView()->mode
                (\"a\" geChangeEditMode(\"r\"))
                (\"r\" geChangeEditMode(\"a\"))
              )")

  )
)

