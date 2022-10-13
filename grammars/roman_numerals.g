_Numeral ;

_Numeral -> _Thousands | _FiveHundreds | _Hundreds
        | _Fifties | _Tens | _Fives | _Ones ;

_Ones -> I | II | III ;
_AddOnes -> _Ones | ;

_Fives -> IV | V _AddOnes | IX ;
_AddFives -> _Fives | _AddOnes ;

_Tens -> X _AddFives | XX _AddFives | XXX _AddFives ;
_AddTens -> _Tens | _AddFives ;

_Fifties -> XL _AddFives | L _AddTens | XC _AddFives ;
_AddFifties -> _Fifties | _AddTens ;

_Hundreds -> C _AddFifties | CC _AddFifties | CCC _AddFifties ;
_AddHundreds -> _Hundreds | _AddFifties ;

_FiveHundreds -> CD _AddFifties | D _AddHundreds | CM _AddFifties ;
_AddFiveHundreds -> _FiveHundreds | _AddHundreds ;

_Thousands -> M _AddFiveHundreds | MM _AddFiveHundreds | MMM _AddFiveHundreds ;
