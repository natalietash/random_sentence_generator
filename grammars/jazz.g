_JAZZ

_JAZZ -> _MEASURE + _MEASURE + _MEASURE + _MEASURE ;

_MEASURE -> _NOTE + _NOTE + _NOTE + _NOTE ;

_NOTE -> _1NOTE ;
_1NOTE -> _2NOTE + _2NOTE | _1PITCH | _1REST ;
_2NOTE -> _4NOTE + _4NOTE | _2PITCH | _2REST ;
_4NOTE -> _8NOTE + _8NOTE | _4PITCH | _4REST ;
_8NOTE -> _8PITCH | _8REST ;

_1PITCH -> 1c | 1d | 1e | 1f | 1g | 1a | 1Bb | 1c2 ;
_2PITCH -> 2c | 2d | 2e | 2f | 2g | 2a | 2Bb | 2c2 ;
_4PITCH -> 4c | 4d | 4e | 4f | 4g | 4a | 4Bb | 4c2 ;
_8PITCH -> 8c | 8d | 8e | 8f | 8g | 8a | 8Bb | 8c2 ;

_1REST -> 1r ;
_2REST -> 2r ;
_4REST -> 4r ;
_8REST -> 8r ;
