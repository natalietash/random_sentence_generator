_Directions

_Directions -> _Where _Want _When _How ;
_Where -> _Greeting _CurrentLoc ;
_Greeting -> What's up _Audience,
           | Howdy _Audience,
           | Greetings _Audience, ;
_Audience -> Gamers
           | Pirates
           | Students
           | Wizards ;
_CurrentLoc -> I'm currently on _OnPlaces.
             | I'm currently at _AtPlaces.
             | I'm currently in _InPlaces. ;
_OnPlaces -> Mars ,
           | Broadway
           | top of the world
           | a rocket headed to deep space ;
_AtPlaces -> your mom's house
           | the bottom of the ocean
           | the edge of the observable universe
           | the Taj Mahal ;
_InPlaces -> a locked dungeon
           | a cage below the White house
           | the ceiling above you
           | your head ;

_Want -> _Importance _NewLoc ;
_Importance -> I would like to return
             | I want to return
             | I need to return
             | I absolutely have to return ;
_NewLoc -> home.
         | back to school.
         | back to your moms house ;
_When -> Times ticking, I only have _Time ;
_Time -> 20 days.
       | 30 minutes.
       | 68.99 years. ;
_How -> How should I get home? I was thinking _Method ;
_Method -> plane...
         | car...
         | boat...
         | rocket...
         | teleporting... ;
