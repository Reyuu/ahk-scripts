^h::
    Reload

^w::
    SendInput {w down}
    running := True
    while (running){
        if (GetKeyState("Escape", "P") == 1){
            running := False
            Break
        }
        Sleep, 20
        SendInput {w down}
    }
    SendInput {w up}