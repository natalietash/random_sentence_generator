
_burritoOrder

_burritoOrder -> _Greeting _Size . _Tortilla . _Meat . _Toppings ;

_Greeting -> Hello _Address
          |  Sup _Address
          |  Hey you! ;

_Address -> Jeb | TacoMan | Justin | Libby ;

_Size -> I want a small | I want a large ;

_Tortilla -> corn tortilla | flour tortilla ;

_Meat -> with asada | with chicken | with Beyond Beef | with no meat ;

_Toppings -> no topping | _SingleTopping | _MultipleToppings ;

_MultipleToppings -> _SingleTopping | _Singletopping, _MultipleToppings ;
                    
_SingleTopping -> rice | beans | lettuce | salsa | cheese | guac ;




