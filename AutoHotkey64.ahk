#Requires AutoHotkey v2.0

; Remap Ctrl-Tab to Alt-Tab
<^Tab::AltTab
<^j::AltTab
<!j::AltTab
<^h::~

CycleSameWindow() {
  OldClass := WinGetClass("A")
  ActiveProcessName := WinGetProcessName("A")
  WinClassCount := WinGetCount("ahk_exe" ActiveProcessName)
  IF WinClassCount = 1
      Return
  loop 2 {
    WinMoveBottom("A")
    WinActivate("ahk_exe" ActiveProcessName)
    NewClass := WinGetClass("A")
    if (OldClass != "CabinetWClass" or NewClass = "CabinetWClass")
      break
  }
}

<^g::CycleSameWindow

HotIfWinNotActive "ahk_exe chrome.exe"
Hotkey "^l", SendTab
HotIfWinNotActive

SendTab(HotkeyName)
{
    SendInput("{Tab}")
}
