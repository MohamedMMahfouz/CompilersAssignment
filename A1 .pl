s(sentence(X,Y)) -->
    noun_phrase(X), verb_phrase(Y).
 
noun_phrase(noun_phrase(X,Y)) -->
     (det_adj(X), noun(Y)) ; ( det_adj(X), noun_prep(Y) ) ; ( det_adj(X) , adverb_noun(Y) ) ; 
     ( determiner(X), adverb_noun(Y) );( adjective(X) ,noun_prep(Y) ) ; (determiner(X) , noun(Y) ) ;
     ( adjective(X) , noun(Y) ) ; ( determiner(X), noun_prep(Y) ).
 
det_adj((X,Y)) -->
    ( determiner(X), adjective(Y) ); ( determiner(X), adjectives(Y) ).

adjectives(X) -->  adjective(X).
adjectives((X,Y)) -->
    ( adjective(X) , adjectives(Y) ).

noun_prep((X,Y)) -->
    noun(X), prep_phrase(Y).

adverb_noun((X,Y)) -->
    noun(X) , adverb_adverb(Y).
adverb_adverb(X) --> adverb(X).
adverb_adverb((X,Y)) --> 
    (adverb(X), adverb_adverb(Y)).
prep_phrase((X,Y)) -->
    (preposition(X) , noun_phrase(Y) ) ;( preposition(X) , verb_phrase(Y) ) ; (preposition(X) , noun(Y) ).
verb_phrase(verb_phrase(X)) --> verb(X).
verb_phrase(verb_phrase(X,Y)) -->
    ( verb_prep(X), noun_phrase(Y) ) ; ( verb_prep(X), noun_phrase_verb_phrase(Y) ) ;(( verb(X), noun_phrase_verb_phrase(Y) )) ;( verb(X), two_noun_phrase(Y) ); ( verb(X), noun_phrase(Y) ) ; (pronoun(X) , verb_phrase(Y)).

verb_prep((X,Y)) -->
    (verb(X), preposition(Y)) ; (verb(X) , prep_Verb(Y)).

prep_Verb((X,Y)) -->
    preposition(X) , verb_phrase(Y). 

noun_phrase_verb_phrase((X,Y)) -->
    noun_phrase(X) , verb_phrase(Y).

two_noun_phrase((X,Y)) -->
    noun_phrase(X) , noun_phrase(Y).
% determiners
determiner(determiner(the)) --> [the].
determiner(determiner(a)) --> [a].
determiner(determiner(an)) --> [an].
determiner(determiner(every)) --> [every].
determiner(determiner(some)) --> [some].
determiner(determiner(that)) --> [that].
determiner(determiner(many)) --> [many].
determiner(determiner(these)) --> [these].
determiner(determiner(those)) --> [those].
determiner(determiner(all)) --> [all].

 
%  nouns
noun(noun(boy)) --> [boy].
noun(noun(man)) --> [man].
noun(noun(box)) --> [box].
noun(noun(room)) --> [room].
noun(noun(school)) --> [school].
noun(noun(woman)) --> [woman].
noun(noun(envelope)) --> [envelope].
noun(noun(building)) --> [building].
noun(noun(tree)) --> [tree].
noun(noun(girl)) --> [girl].
noun(noun(students)) --> [students].
noun(noun(student)) --> [student].
noun(noun(professors)) --> [professors].
noun(noun(lecturers)) --> [lecturers].
noun(noun(scientists)) --> [scientists].
noun(noun(researchers)) --> [researchers].
noun(noun(kid)) --> [kid].
noun(noun(table)) --> [table].
noun(noun(person)) --> [person].
noun(noun(phone)) --> [phone].
noun(noun(shed)) --> [shed].


%verbs
verb(verb(hated)) --> [hated].
verb(verb(worked)) --> [worked].
verb(verb(pushed)) --> [pushed].
verb(verb(stored)) --> [stored].
verb(verb(gave)) --> [gave].
verb(verb(shaded)) --> [shaded].
verb(verb(climbed)) --> [climbed].
verb(verb(watched)) --> [watched].
verb(verb(admired)) --> [admired].
verb(verb(appreciated)) --> [appreciated].
verb(verb(scared)) --> [scared].
verb(verb(played)) --> [played].
verb(verb(greeted)) --> [greeted].
verb(verb(opened)) --> [opened].
verb(verb(wrote)) --> [wrote].
verb(verb(called)) --> [called].
verb(verb(talked)) --> [talked].
verb(verb(used)) --> [used].
verb(verb(thanked)) --> [thanked].
verb(verb(hit)) --> [hit].
verb(verb(put)) --> [put].
verb(verb(ran)) --> [ran].
verb(verb(listened)) --> [listened].



%adjectives
adjective(adjective(young)) --> [young].
adjective(adjective(big)) --> [big].
adjective(adjective(large)) --> [large].
adjective(adjective(empty)) --> [empty].
adjective(adjective(old)) --> [old].
adjective(adjective(poor)) --> [poor].
adjective(adjective(white)) --> [white].
adjective(adjective(small)) --> [small].
adjective(adjective(tiny)) --> [tiny].
adjective(adjective(huge)) --> [huge].
adjective(adjective(rich)) --> [rich].
adjective(adjective(full)) --> [full].
adjective(adjective(black)) --> [black].
adjective(adjective(blue)) --> [blue].
adjective(adjective(angry)) --> [angry].
adjective(adjective(dry)) --> [dry].
adjective(adjective(hard)) --> [hard].
adjective(adjective(great)) --> [great].
adjective(adjective(excellent)) --> [excellent].
adjective(adjective(sad)) --> [sad].
adjective(adjective(happy)) --> [happy].
adjective(adjective(brilliant)) --> [brilliant].
adjective(adjective(talented)) --> [talented].
adjective(adjective(birght)) --> [bright].


%adverbs
adverb(adverb(quickly)) --> [quickly].
adverb(adverb(secretly)) --> [secretly].
adverb(adverb(quitly)) --> [quitly].
adverb(adverb(quickly)) --> [quickly].
adverb(adverb(very)) --> [very].
adverb(adverb(too)) --> [too].
adverb(adverb(loudly)) --> [loudly].
adverb(adverb(impatiently)) --> [impatiently].
adverb(adverb(seriously)) --> [seriously].
adverb(adverb(badly)) --> [badly].
adverb(adverb(loudly)) --> [loudly].
adverb(adverb(slightly)) --> [slightly].


%prepositions
preposition(preposition(in)) --> [in].
preposition(preposition(and)) --> [and].
preposition(preposition(for)) --> [for].
preposition(preposition(after)) --> [after].
preposition(preposition(behind)) --> [behind].
preposition(preposition(on)) --> [on].
preposition(preposition(at)) --> [at].
preposition(preposition(off)) --> [off].
preposition(preposition(over)) --> [over].
preposition(preposition(in)) --> [in].
preposition(preposition(under)) --> [under].
preposition(preposition(near)) --> [near].
preposition(preposition(above)) --> [above].
preposition(preposition(while)) --> [while].


pronoun(pronoun(who)) --> [who].
pronoun(pronoun(whom)) --> [whom].
pronoun(pronoun(which)) --> [which].

