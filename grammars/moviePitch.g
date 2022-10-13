_start

_start -> _Greeting _Introduction _Pitch _Convince _Cost ;

_Greeting -> I can't believe I'm here pitching my movie to _Streaming ;

_Streaming -> Netflix | Amazon | Paramount+ | HBO MAX | DISNEY + ;

_Introduction -> My movie will be a _Genre _Plot ;

_Genre -> action | crime | thriller | horror | Science Fiction | Fantasy
        | noir | adventure | non fiction | documentary | western | comedy
        | drama | mystery | coming of age | slice of life ;

_Actors -> Tom Cruise | Amy Adams | Jake Gyllenhaal
        | J.K Simmons | Ryan Reynolds | Idris Elba
        | Zazie Beetz | Tom Hardy | Steven Yeun ;

_Plot -> The story will follow our main protaganist played by _Actors where they will
        _CharacterArc that takes place in _location . The main antagonist of this movie
        will be _Antagonist ;

_Budget -> The movie will approximately cost _Cost ;

_Cost -> under 100,000 | between 100,000-500,000 | between 1 million - 10 million
        | just under 100 million ;

_Convince -> Think of this movie as _Recurse ;

_Recurse -> _Movies meets _Recurse2 ;

_Recurse2 -> _Movies meets _Recurse | _Movies ;


_location -> Middle Earth | Dystopian city | Desert | WW1 | WW2
            | The Human Conscience | England | America | Haunted House
            | North Pole | Space | Kingdom ;

_CharacterArc -> turn villain to hero | learn what it's like to walk in someone's else's shoes
                | learn how to deal with grief | go through a journey of self discovery
                | discover the true meaning of love with a character played by _Actors ;

_Antagonist -> The Devil | A clone of themselves from the future
                | _AntagonistPlayedBy ;

_AntagonistPlayedBy -> _Actors that will _CharacterArc | a cgi _being voiced by _Actors that will _CharacterArc ;

_being -> Sofa | minotaur | dinosaur | ghost | _animal ;

_animal -> duck | dog | cat | fish ;

_Movies -> Citizen Kane| Old Boy | Parasite | The Godfather | The Lord of the Rings
        | Maltese Falcon | Se7en | Lawrence of Arabia | La La Land | The Conjuring
        | The Truman Show | Get Out | Toy Story | Shawshank Redemption | The Shining
        | Dead Poet Society | Cinderella | Max Max | NightCrawler | Dunkirk
        | Saving Private Ryan | Halloween | X | Jaws | Back to the Future
        | GoodFellas | Taxi Driver | Groundhog Day | Casablanca | Star Wars
        | Matrix | Gone with the Wind | Night of the Living Dead | The Grand Budapest Hotel
        | Evil Dead 2 | Her | The Notebook | Call Me by your Name | Brokeback Mountain
        | The Power of Dog | Tombstone | Superbad | We're the Millers | Ace Ventura
        | Wedding Crashers | Sound of Metal ;
