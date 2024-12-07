
%%%%%% PUNTO 1 %%%%%%

% departamento(ambientes, banios)).
% loft(anioConstruido)). 
% casa(metrosCuadrados)

% vive(persona, propiedad).
vive(juan, casa(120)).
vive(nico, departamento(3, 2)). 
vive(julian, loft(2000)). 
vive(vale, departamento(4, 1)).
vive(fer, casa(110)). 

% barrio(persona, nombreBarrio). 
barrio(alf, almagro). 
barrio(juan, almagro). 
barrio(nico, almagro). 
barrio(julian, almagro). 
barrio(vale, flores). 
barrio(fer, flores). 

%%%%%% PUNTO 2 %%%%%%

esCopado(UnBarrio) :- 
    barrio(_, UnBarrio), 
    forall((barrio(UnaPersona, UnBarrio), vive(UnaPersona, UnaPropiedad)), esPropiedadCopada(UnaPropiedad)).

esPropiedadCopada(casa(MetrosCuadrados)) :-
    MetrosCuadrados > 100. 

esPropiedadCopada(departamento(Ambientes, _)) :-
    Ambientes > 3. 

esPropiedadCopada(departamento(_, Banios)) :-
    Banios > 1. 

esPropiedadCopada(loft(AnioConstruido)) :-
    AnioConstruido > 2015.  
