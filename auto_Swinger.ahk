

;; Swing variables in Miliseconds:
SwingDelay := 80
RandomFactor := 50

;; Fishing Pole Variables:
FishingDelay := 400

;; Eating Fine Variables;
FoodPosition := 4 ;; {Location on hotbar}
EatingTime := 1700

;; Keybind Map:
;;
;; Q, Z, R Keys are available: 
;;
;; Q --> instant Use --> 

Shift & q::
    If RepeatKey
    {
        Use(3)
    }
    Else 
        SendInput Q
Return

Shift & r::
    If RepeatKey
    {
        Use(4)
    }
    Else 
        SendInput R
Return

;; Toggle Attack Mode
Shift & MButton::
    RepeatKey := !RepeatKey
    If RepeatKey
        SetTimer, Swing, %SwingDelay%
    Else
        SetTimer, Swing, Off
Return

;; Swing Function
Swing:
    Random,n,0,%RandomFactor%
    sleep n
    SendInput, {Lbutton}
Return

;; Fishing Function
Fish(CastPosition,FishingDelay){
    SendInput %CastPosition%
    SendInput {RButton}
    sleep %FishingDelay%
    SendInput 1
}

;; Eating Function
Eats(FoodPosition,EatingTime){
    SendInput %FoodPosition%
    SendInput {RButton Down}
    Sleep %EatingTime%
    SendInput {RButton Up}
    Sleep 100
    SendInput 1

}

;; One Click Use Functino
Use(HotBar){
    SendInput %HotBar%
    SendInput {RButton}
    sleep 100
    SendInput 1
}