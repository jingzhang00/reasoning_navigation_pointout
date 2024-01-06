:- module(instance_utils,
    [
		getClassPath/2,
		get_class/2,
		get_subclass/2,
		get_property/3
    ]).

:- use_module(library('semweb/rdfs')).
:- use_module(library('semweb/rdf_db')).

:- rdf_load('/home/user/exchange/ssy236_project/rearrange_ws/src/rearrange/owl/objects_ontology.rdf').

getClassPath(Class, Class_path):-
    ((concat_atom(List, '#', Class), length(List, Length), Length > 1) ->
        last(List, Class_path);
        (TempClass = 'http://www.chalmers.se/ontologies/objects_ontology.owl#',
        atom_concat(TempClass, Class, Class_path)
        )
    ).


get_class(Class, ParentClass) :-
    getClassPath(Class, ClassPath),
    rdf(ClassPath, rdfs:subClassOf, ParentClassPath),
    getClassPath(ParentClassPath, ParentClass).


get_subclass(Class, SubClass) :-
    getClassPath(Class, ClassPath),
    rdf(SubClassPath, rdfs:subClassOf, ClassPath),
    getClassPath(SubClassPath, SubClass).



get_property(Class, Property, Range) :-
    getClassPath(Class, ClassPath),
    getClassPath(Property, PropertyPath),
    rdf(PropertyPath, rdfs:domain, ClassPath),
    rdf(PropertyPath, rdfs:range, RangePath),
    getClassPath(RangePath, Range).


