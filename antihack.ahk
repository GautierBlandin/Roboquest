#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

toggle := false

f::v

#If (toggle)  ; Only remap keys if toggle is true
w::s
s::w
a::d
d::a
#If

5::  ; Using number 5 as the toggle key
    toggle := !toggle
return

4::
Loop 3  ; This loop will execute the inner code 3 times
{
    Send, a
    Sleep, 10  ; Delay between keystrokes to ensure they are recognized but still very fast
    Send, s
    Sleep, 10
    Send, d
    Sleep, 10
    Send, w
    Sleep, 10
}
return