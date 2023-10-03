#Requires AutoHotkey v2.0
#SingleInstance Ignore
; Run as Admin
; https://www.autohotkey.com/docs/v2/lib/Run.htm#RunAs
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!`S)")) {
    try {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }
    ExitApp
}
A_MenuMaskKey := "vkFF"  ; vkFF is no mapping.

#Include LCID.ahk
LANG := LCID[A_Language]  ; Get the name of the system's default language.
; Tray
TrayMenu_GenshinClicker := "Genshin Auto Clicker"
TrayMenu_Help := "Help"
TrayMenu_HelpMsg := "Shortcuts`n`nF10`tToggle`nF12`tReload`nAlt`tHold to suspend"
TrayMenu_Enabler := "Enable/Disable (F10)"
TrayMenu_SkipClickOption := "Manual Dialogue Response"
TrayMenu_ToolTip := "Show ToolTip"
TrayMenu_Reload := "Reload (F12)"
TrayMenu_Exit := "E&xit"
if RegExMatch(LANG, "^Chinese") {
    TrayMenu_GenshinClicker := "原神自动连点"
    TrayMenu_Help := "帮助"
    TrayMenu_HelpMsg := "快捷键`n`nF10`t开关`nF12`t重启脚本`nAlt`t长按暂停脚本"
    TrayMenu_Enabler := "开关 (F10)"
    TrayMenu_SkipClickOption := "手动回复对话"
    TrayMenu_ToolTip := "显示提示"
    TrayMenu_Reload := "重启脚本 (F12)"
    TrayMenu_Exit := "退出"
}
A_TrayMenu.Delete
A_TrayMenu.Add(TrayMenu_GenshinClicker, (*) => {})
A_TrayMenu.Disable(TrayMenu_GenshinClicker)
A_TrayMenu.Add(TrayMenu_Help, (*) => MsgBox(TrayMenu_HelpMsg))
A_TrayMenu.Add
A_TrayMenu.Add(TrayMenu_Enabler, ToggleClickDialogue)
A_TrayMenu.Disable(TrayMenu_Enabler)
A_TrayMenu.Add(TrayMenu_SkipClickOption, ToggleClickOption)
A_TrayMenu.Add(TrayMenu_ToolTip, ToggleToolTip)
A_TrayMenu.Add
A_TrayMenu.Add(TrayMenu_Reload, (*) => Reload())
A_TrayMenu.Add(TrayMenu_Exit, (*) => ExitApp())

; Config
Config_SkipClickOption_Enabled := false
if Config_SkipClickOption_Enabled
    A_TrayMenu.Check(TrayMenu_SkipClickOption)
Config_ToolTip_Enabled := false
if Config_ToolTip_Enabled
    A_TrayMenu.Check(TrayMenu_ToolTip)

; Genshin WinTitle
GenshinTitles := ["YuanShen.exe", "GenshinImpact.exe"]
for T in GenshinTitles
    GroupAdd "Genshin", "ahk_exe" T
GenshinTitle := "ahk_group Genshin"
WinWait(GenshinTitle)
WinGetClientPos(, , &W, &H, GenshinTitle)
A_TrayMenu.Enable(TrayMenu_Enabler)

; Interact
SendGenshin(K) {
    if not WinActive(GenshinTitle)
        return
    Send(K)
}

ClickGenShin(X, Y) {
    if not WinActive(GenshinTitle)
        return
    MouseGetPos(&XX, &YY)
    MouseClick(, X, Y)
    Sleep 10
    MouseMove(XX, YY)
}

; ToolTip
MyToolTip(Params*) {
    if Config_ToolTip_Enabled and WinActive(GenshinTitle)
        return ToolTip(Params*)
}

ToggleToolTip(ItemName := TrayMenu_ToolTip, ItemPos?, MyMenu := A_TrayMenu) {
    ToolTip ; Clear
    global Config_ToolTip_Enabled := !Config_ToolTip_Enabled
    if Config_ToolTip_Enabled
        MyMenu.Check(ItemName)
    else
        MyMenu.Uncheck(ItemName)
}

; Scale
ScaleX := (X, S := Scale) => (X + 0.5) * S - 0.5
ScaleXRight1280 := (X) => W - 1 - ScaleX(1279 - X)
ScaleYBottom720 := (Y) => H - 1 - ScaleX(719 - Y)

UpdateWH() {
    global W, H
    WinGetClientPos(, , &WW, &HH, GenshinTitle)
    if WW != W or HH != H
        Reload
    W := WW, H := HH
    global Scale := Min(W / 1280, H / 720)
    global IsNotWideScreen := W < 2 * H
}

; Detect
DetectPixels(L, &OutX, &OutY) {
    if not WinActive(GenshinTitle)
        return false
    Ret := true
    for IT in L {
        ; X Y ColorID DiffX DIffY DiffC
        X := Round(IT[1]), Y := Round(IT[2]), ColorID := IT[3], DiffX := Ceil(IT[4]), DiffY := Ceil(IT[5]), DiffC := IT[6]
        Ret := Ret and PixelSearch(&OutX, &OutY, X - DiffX, Y - DiffY, X + DiffX, Y + DiffY, ColorID, DiffC)
    }
    if Ret
        MyToolTip "!", OutX + 1, OutY + 1
    return Ret
}

DetectClick_L(Profile := 1) {  ; <>
    DiffY := Scale * 5
    C := "0XFFBF01"
    Y := ScaleYBottom720(IsNotWideScreen ? 698 : 688)
    if Profile = 2
        Y := ScaleYBottom720(IsNotWideScreen ? 685 : 688)
    L := [
        [W / 2, Y, C, 0, DiffY, 8],
        [W / 2 - Scale * 2, Y, C, 0, DiffY, 8],
        [W / 2 + Scale * 2, Y, C, 0, DiffY, 8],
    ]
    return L
}

DetectClick(&OutX, &OutY) {  ; <>
    static L := DetectClick_L(1)
    return DetectPixels(L, &OutX, &OutY)
}

DetectClick2(&OutX, &OutY) {  ; <>
    static L := DetectClick_L(2)
    return DetectPixels(L, &OutX, &OutY)
}

DetectPlay_L() {  ; >
    C := "0X3B4354"
    D := IsNotWideScreen ? 0 : 96
    L := [
        [ScaleX(47 + D), ScaleX(30), C, 0, 0, 8],
        [ScaleX(50 + D), ScaleX(32), C, 0, 0, 8],
        [ScaleX(47 + D), ScaleX(35), C, 0, 0, 8],
    ]
    return L
}

DetectStop_L() {  ; ||
    C1 := "0X3B4354", C2 := "0XECE5D8"
    D := IsNotWideScreen ? 0 : 96
    L := [
        [ScaleX(44 + D), ScaleX(32), C1, 0, 0, 8],
        [ScaleX(47 + D), ScaleX(32), C2, 0, 0, 2],
        [ScaleX(51 + D), ScaleX(32), C1, 0, 0, 8],
    ]
    return L
}

DetectPlay(&OutX, &OutY) {  ; ||
    static L1 := DetectPlay_L()
    static L2 := DetectStop_L()
    return DetectPixels(L1, &OutX, &OutY) or DetectPixels(L2, &OutX, &OutY)
}

DetectOption_L() {  ; ...
    Y := IsNotWideScreen ? 535 : 525
    Y := H - ScaleX(720 - Y)
    D := IsNotWideScreen ? 0 : 92
    DiffX := Scale * 1
    L := [
        [ScaleXRight1280(860 - D), Y, "0x5f676f", DiffX, DiffX, 32],
        [ScaleXRight1280(863 - D), Y, "0XFFFFFF", DiffX, DiffX, 2],
        [ScaleXRight1280(866 - D), Y, "0x606870", DiffX, DiffX, 32],
        [ScaleXRight1280(869 - D), Y, "0xffffff", DiffX, DiffX, 2],
        [ScaleXRight1280(872 - D), Y, "0x606971", DiffX, DiffX, 32],
    ]
    return L
}

DetectOption(&OutX, &OutY) {  ; ...
    static L := DetectOption_L()
    return DetectPixels(L, &OutX, &OutY)
}


; Main Looper
ToggleClickOption(ItemName := TrayMenu_SkipClickOption, ItemPos?, MyMenu := A_TrayMenu) {
    global Config_SkipClickOption_Enabled := !Config_SkipClickOption_Enabled
    if Config_SkipClickOption_Enabled {
        MyMenu.Check(ItemName)
    } else {
        MyMenu.Uncheck(ItemName)
    }
}

ClickDialogue() {
    ToolTip
    if not WinActive(GenshinTitle) or GetKeyState("Alt")
        return
    UpdateWH
    if DetectClick(&OutX, &OutY) {
        if DetectPlay(&OutX, &OutY)
            SendGenshin("{Space}")
        else
            ClickGenShin(OutX, OutY)
        return
    }
    if not Config_SkipClickOption_Enabled and DetectOption(&OutX, &OutY) {
        ClickGenShin(OutX, OutY)
        return
    }
    if DetectClick2(&OutX, &OutY) {
        ClickGenShin(OutX, OutY)
        return
    }
    MyToolTip "?", 0, 0
}

ToggleClickDialogue(ItemName := TrayMenu_Enabler, ItemPos?, MyMenu := A_TrayMenu) {
    static Toggle := 0
    SetTimer ClickDialogue, Toggle := !Toggle ? 200 : 0
    if Toggle {
        MyMenu.Check(ItemName)
    } else {
        MyMenu.Uncheck(ItemName)
    }
    ToolTip
}

; Shortcuts
#MaxThreadsPerHotkey 2
~F10:: ToggleClickDialogue
F12:: Reload

; Start
ToggleClickDialogue