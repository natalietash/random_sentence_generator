_Weather

_Weather -> Hello, today is a _DayDescriptor _DayOfWeek at a _Temp \b.  There's a _Possibility chance of _Condition \b, so be sure to _Activity \b! ;

_DayDescriptor -> dreary | calm | beautiful | ominous | standard | nice ;

_DayOfWeek -> Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday ;

_Temp -> _TempDescriptor _Num _DegMeasure | _TempDescriptor\b, _Temp ;

_TempDescriptor -> scalding | hot | warm | cool | chilly | freezing ;

_Num -> _Digit | _Digit _Num ;

_Digit -> 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ;

_DegMeasure -> °C | °F | K ;

_Possibility -> slight | 50% | certain | ambiguous | secret ;

_Condition -> rain | hail | fog | thunderstorms | REDACTED ;

_Activity -> stay inside | run for cover | enjoy some time outside | avoid anyone with umbrellas ;
