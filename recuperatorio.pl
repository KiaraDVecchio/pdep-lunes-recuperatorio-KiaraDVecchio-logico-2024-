
%%%%%% PUNTO 1 %%%%%%

% departamento(ambientes, banios)).
% loft(anioConstruido)). 
% casa(metrosCuadrados)

% vive(persona, propiedad).
vive(juan, casa(120)).
vive(nico, departamento(3, 2)). 
vive(alf, departamento(3, 1)). 
vive(julian, loft(2000)). 
vive(vale, departamento(4, 1)).
vive(fer, casa(110)). 

% Rocio quiere mudarse, pero todavia no vive alli. Precido como Felipe, que no sabemos donde vive

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
    forall(barrio(UnaPersona, UnBarrio), viveEnPropiedadCopada(UnaPersona)).

viveEnPropiedadCopada(UnaPersona) :-
    vive(UnaPersona, UnaPropiedad),
    esPropiedadCopada(UnaPropiedad). 

esPropiedadCopada(casa(MetrosCuadrados)) :-
    MetrosCuadrados > 100. 

esPropiedadCopada(departamento(Ambientes, _)) :-
    Ambientes > 3. 

esPropiedadCopada(departamento(_, Banios)) :-
    Banios > 1. 

esPropiedadCopada(loft(AnioConstruido)) :-
    AnioConstruido > 2015. 

%%%%%% PUNTO 3 %%%%%%

esCaro(UnBarrio) :-
    barrio(_, UnBarrio), 
    forall(barrio(UnaPersona, UnBarrio), not(viveEnCasaBarata(UnaPersona))).

viveEnCasaBarata(UnaPersona) :-
    vive(UnaPersona, UnaPropiedad),
    esBarata(UnaPropiedad).

esBarata(casa(MetrosCuadrados)) :-
    MetrosCuadrados < 90. 
    
esBarata(departamento(Ambientes, _)) :-
    Ambientes < 3. % es decir, uno o dos ambientes. 
    
esBarata(loft(AnioConstruido)) :-
    AnioConstruido < 2005. 
