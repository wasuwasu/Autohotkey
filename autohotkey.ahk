/*
* AutoHotKey Config
* AutoHotKey Version 1.1.30.00
* -------------------------------------
* 無変換キーに割り当て済みのキー
*     q w e r
*       a s d f
*         z x c v
*-------------------------------------
* キー          | ラベル
* スペース      | Space
* タブ          | Tab
* エンター      | Enter (Return)
* エスケープ    | Escape (Esc)
* バックスペース| Backspace (BS)
* デリート      | Delete (Del)
* インサート    | Insert (Ins)
* ホーム        | Home
* エンド        | End
* ページアップ  | PgUp
* ページダウン  | PgDn
* 上            | Up
* 下            | Down
* 左            | Left
* 右            | Right
* ScrollLock    | ScrollLock
* CapsLock      | CapsLock
* NumLock       | NumLock
* 変換          | sc079
* 無変換        | sc07B
* ひらがなカナ  | sc070
* 半角/全角     | sc029
* 英数※3       | sc03a
*------------------------------------
*
*------------------------------------
*修飾キー (Modifier key)
* キーラベル    | 文字表記のラベル
* Shift         | +
* Ctrl          | ^
* Alt           | !
* Win           | #
*------------------------------------
*/


sc07B & w::Send,{Blind}{Up}
sc07B & s:: Send, {Blind}{Down}
sc07B & a:: Send, {Blind}{Left}
sc07B & d:: Send, {Blind}{Right}
sc07B & q:: Send, {Blind}{Home}
sc07B & e:: Send, {Blind}{End}
sc07B & r:: Send, {Blind}{PgUp}
sc07B & t:: Send, ^+{F1}
sc07B & f:: Send, {Blind}{PgDn}
sc07B & z:: Send, {Backspace}
sc07B & k::
    Send, +#{Left}
    Send, #{Up}
    Send, #{Up}
    Return
sc07B & l::
    Send, +#{Right}
    Send, #{Up}
    Send, #{Up}
    Return
sc07B & v::
	Flag += 1	;
	If Flag = 1
    {
		 Send, {AppsKey}
		Return
	}
	If Flag = 2
    {
		Send, {Esc}
        Flag =
		Return
	}
sc07B & c::
	Flag += 1	;
	If Flag = 1
    {
		Send, !^{Space}
		Return
	}
	If Flag = 2
    {
		Send, +^{F11}
        Flag =
		Return
	}
sc07B & x:: Send, +^{F12}
sc079 & i:: Send,{Blind}{BS}
sc079 & o:: Send,{Blind}{Delete}
sc079 & P:: Send,{Blind}{Enter}

+e::
if (WinActive("ahk_exe HmFilerClassic.exe")){
	 Send,{AppsKey}{l}
	return
}else {
	return
}

+r::
if (WinActive("ahk_exe HmFilerClassic.exe")){
	 Send,{AppsKey}{t}
	return
}else {
	return
}
