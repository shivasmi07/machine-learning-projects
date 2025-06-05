:- use_module(library(aleph)).
:- aleph.

:- aleph_set(i,10).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,10000).
:- aleph_set(evalfn, compression).
:- aleph_set(noise, 1).
:- aleph_set(minpos, 1).


% Mode declarations

:- modeh(1, more_than_50k(+person)).
:- modeb(*, age(+person, #atom)).
:- modeb(*, workclass(+person, #atom)).
:- modeb(*, education(+person, #atom)).
:- modeb(*, marital_status(+person, #atom)).
:- modeb(*, occupation(+person, #atom)).
:- modeb(*, relationship(+person, #atom)).
:- modeb(*, race(+person, #atom)).
:- modeb(*, sex(+person, #atom)).
:- modeb(*, hours_per_week(+person, #atom)).
:- modeb(*, native_country(+person, #atom)).

% Determinations

:- determination(more_than_50k/1, true).
:- determination(more_than_50k/1, age/2).
:- determination(more_than_50k/1, workclass/2).
:- determination(more_than_50k/1, education/2).
:- determination(more_than_50k/1, marital_status/2).
:- determination(more_than_50k/1, occupation/2).
:- determination(more_than_50k/1, relationship/2).
:- determination(more_than_50k/1, race/2).
:- determination(more_than_50k/1, sex/2).
:- determination(more_than_50k/1, hours_per_week/2).
:- determination(more_than_50k/1, native_country/2).

% Background knowledge

age(p1, middle). workclass(p1, private). education(p1, assoc_voc). marital_status(p1, married_civ_spouse).
occupation(p1, sales). relationship(p1, husband). race(p1, white). sex(p1, male). hours_per_week(p1, medium). native_country(p1, unknown).

age(p2, middle). workclass(p2, private). education(p2, hs_grad). marital_status(p2, married_civ_spouse).
occupation(p2, craft_repair). relationship(p2, husband). race(p2, white). sex(p2, male). hours_per_week(p2, medium). native_country(p2, unknown).

age(p3, middle). workclass(p3, private). education(p3, bachelors). marital_status(p3, married_civ_spouse).
occupation(p3, exec_managerial). relationship(p3, husband). race(p3, white). sex(p3, male). hours_per_week(p3, medium). native_country(p3, unknown).

age(p4, middle). workclass(p4, self_emp_inc). education(p4, some_college). marital_status(p4, married_civ_spouse).
occupation(p4, exec_managerial). relationship(p4, husband). race(p4, white). sex(p4, male). hours_per_week(p4, medium). native_country(p4, unknown).

age(p5, senior). workclass(p5, self_emp_not_inc). education(p5, prof_school). marital_status(p5, married_civ_spouse).
occupation(p5, prof_specialty). relationship(p5, husband). race(p5, white). sex(p5, male). hours_per_week(p5, medium). native_country(p5, unknown).

age(p6, middle). workclass(p6, state_gov). education(p6, bachelors). marital_status(p6, married_civ_spouse).
occupation(p6, adm_clerical). relationship(p6, wife). race(p6, white). sex(p6, female). hours_per_week(p6, low). native_country(p6, unknown).

age(p7, young). workclass(p7, private). education(p7, some_college). marital_status(p7, married_civ_spouse).
occupation(p7, handlers_cleaners). relationship(p7, husband). race(p7, white). sex(p7, male). hours_per_week(p7, medium). native_country(p7, unknown).

age(p8, middle). workclass(p8, self_emp_not_inc). education(p8, masters). marital_status(p8, married_civ_spouse).
occupation(p8, farming_fishing). relationship(p8, husband). race(p8, white). sex(p8, male). hours_per_week(p8, medium). native_country(p8, unknown).

age(p9, senior). workclass(p9, private). education(p9, masters). marital_status(p9, married_civ_spouse).
occupation(p9, prof_specialty). relationship(p9, husband). race(p9, white). sex(p9, male). hours_per_week(p9, medium). native_country(p9, unknown).

age(p10, middle). workclass(p10, private). education(p10, assoc_acdm). marital_status(p10, married_civ_spouse).
occupation(p10, exec_managerial). relationship(p10, husband). race(p10, white). sex(p10, male). hours_per_week(p10, medium). native_country(p10, unknown).

age(p11, middle). workclass(p11, private). education(p11, hs_grad). marital_status(p11, married_civ_spouse).
occupation(p11, transport_moving). relationship(p11, husband). race(p11, white). sex(p11, male). hours_per_week(p11, medium). native_country(p11, europe).

age(p12, middle). workclass(p12, private). education(p12, hs_grad). marital_status(p12, married_civ_spouse).
occupation(p12, craft_repair). relationship(p12, husband). race(p12, white). sex(p12, male). hours_per_week(p12, medium). native_country(p12, unknown).

age(p13, middle). workclass(p13, state_gov). education(p13, prof_school). marital_status(p13, married_civ_spouse).
occupation(p13, exec_managerial). relationship(p13, husband). race(p13, white). sex(p13, male). hours_per_week(p13, high). native_country(p13, unknown).

age(p14, senior). workclass(p14, self_emp_not_inc). education(p14, hs_grad). marital_status(p14, widowed).
occupation(p14, exec_managerial). relationship(p14, not_in_family). race(p14, white). sex(p14, female). hours_per_week(p14, high). native_country(p14, unknown).

age(p15, middle). workclass(p15, federal_gov). education(p15, bachelors). marital_status(p15, divorced).
occupation(p15, exec_managerial). relationship(p15, not_in_family). race(p15, white). sex(p15, male). hours_per_week(p15, medium). native_country(p15, unknown).

age(p16, middle). workclass(p16, state_gov). education(p16, bachelors). marital_status(p16, married_civ_spouse).
occupation(p16, prof_specialty). relationship(p16, husband). race(p16, white). sex(p16, male). hours_per_week(p16, medium). native_country(p16, unknown).

age(p17, middle). workclass(p17, private). education(p17, masters). marital_status(p17, married_civ_spouse).
occupation(p17, exec_managerial). relationship(p17, husband). race(p17, white). sex(p17, male). hours_per_week(p17, high). native_country(p17, unknown).

age(p18, middle). workclass(p18, federal_gov). education(p18, bachelors). marital_status(p18, married_civ_spouse).
occupation(p18, prof_specialty). relationship(p18, husband). race(p18, white). sex(p18, male). hours_per_week(p18, medium). native_country(p18, unknown).

age(p19, middle). workclass(p19, local_gov). education(p19, some_college). marital_status(p19, married_civ_spouse).
occupation(p19, protective_serv). relationship(p19, husband). race(p19, white). sex(p19, male). hours_per_week(p19, medium). native_country(p19, unknown).

age(p20, young). workclass(p20, self_emp_not_inc). education(p20, some_college). marital_status(p20, married_civ_spouse).
occupation(p20, craft_repair). relationship(p20, husband). race(p20, white). sex(p20, male). hours_per_week(p20, medium). native_country(p20, unknown).

age(p21, middle). workclass(p21, private). education(p21, bachelors). marital_status(p21, never_married).
occupation(p21, exec_managerial). relationship(p21, not_in_family). race(p21, white). sex(p21, female). hours_per_week(p21, medium). native_country(p21, unknown).

age(p22, middle). workclass(p22, private). education(p22, hs_grad). marital_status(p22, married_civ_spouse).
occupation(p22, transport_moving). relationship(p22, husband). race(p22, white). sex(p22, male). hours_per_week(p22, medium). native_country(p22, unknown).

age(p23, middle). workclass(p23, private). education(p23, '10th'). marital_status(p23, married_civ_spouse).
occupation(p23, handlers_cleaners). relationship(p23, husband). race(p23, white). sex(p23, male). hours_per_week(p23, medium). native_country(p23, unknown).

age(p24, middle). workclass(p24, private). education(p24, hs_grad). marital_status(p24, married_civ_spouse).
occupation(p24, exec_managerial). relationship(p24, husband). race(p24, white). sex(p24, male). hours_per_week(p24, high). native_country(p24, unknown).

age(p25, senior). workclass(p25, private). education(p25, bachelors). marital_status(p25, married_civ_spouse).
occupation(p25, sales). relationship(p25, husband). race(p25, white). sex(p25, male). hours_per_week(p25, medium). native_country(p25, unknown).

age(p26, senior). workclass(p26, unknown). education(p26, '11th'). marital_status(p26, married_civ_spouse).
occupation(p26, unknown). relationship(p26, husband). race(p26, white). sex(p26, male). hours_per_week(p26, low). native_country(p26, unknown).

age(p27, young). workclass(p27, private). education(p27, some_college). marital_status(p27, married_civ_spouse).
occupation(p27, prof_specialty). relationship(p27, husband). race(p27, white). sex(p27, male). hours_per_week(p27, medium). native_country(p27, unknown).

age(p28, young). workclass(p28, private). education(p28, hs_grad). marital_status(p28, never_married).
occupation(p28, sales). relationship(p28, unmarried). race(p28, white). sex(p28, female). hours_per_week(p28, medium). native_country(p28, unknown).

age(p29, young). workclass(p29, private). education(p29, some_college). marital_status(p29, never_married).
occupation(p29, adm_clerical). relationship(p29, not_in_family). race(p29, white). sex(p29, male). hours_per_week(p29, medium). native_country(p29, unknown).

age(p30, young). workclass(p30, private). education(p30, hs_grad). marital_status(p30, never_married).
occupation(p30, other_service). relationship(p30, own_child). race(p30, white). sex(p30, female). hours_per_week(p30, medium). native_country(p30, unknown).

age(p31, young). workclass(p31, private). education(p31, hs_grad). marital_status(p31, never_married).
occupation(p31, craft_repair). relationship(p31, own_child). race(p31, white). sex(p31, male). hours_per_week(p31, low). native_country(p31, unknown).

age(p32, middle). workclass(p32, private). education(p32, bachelors). marital_status(p32, separated).
occupation(p32, exec_managerial). relationship(p32, not_in_family). race(p32, white). sex(p32, female). hours_per_week(p32, high). native_country(p32, unknown).

age(p33, senior). workclass(p33, private). education(p33, some_college). marital_status(p33, divorced).
occupation(p33, sales). relationship(p33, not_in_family). race(p33, white). sex(p33, female). hours_per_week(p33, medium). native_country(p33, unknown).

age(p34, middle). workclass(p34, private). education(p34, hs_grad). marital_status(p34, divorced).
occupation(p34, adm_clerical). relationship(p34, unmarried). race(p34, white). sex(p34, female). hours_per_week(p34, medium). native_country(p34, unknown).

age(p35, middle). workclass(p35, private). education(p35, assoc_voc). marital_status(p35, divorced).
occupation(p35, exec_managerial). relationship(p35, own_child). race(p35, amer_indian_eskimo). sex(p35, female). hours_per_week(p35, medium). native_country(p35, unknown).

age(p36, middle). workclass(p36, private). education(p36, assoc_voc). marital_status(p36, divorced).
occupation(p36, handlers_cleaners). relationship(p36, not_in_family). race(p36, white). sex(p36, female). hours_per_week(p36, medium). native_country(p36, unknown).

age(p37, middle). workclass(p37, private). education(p37, '11th'). marital_status(p37, divorced).
occupation(p37, machine_op_inspct). relationship(p37, unmarried). race(p37, black). sex(p37, female). hours_per_week(p37, medium). native_country(p37, unknown).

age(p38, middle). workclass(p38, private). education(p38, assoc_voc). marital_status(p38, married_civ_spouse).
occupation(p38, tech_support). relationship(p38, husband). race(p38, white). sex(p38, male). hours_per_week(p38, medium). native_country(p38, unknown).

age(p39, middle). workclass(p39, private). education(p39, '10th'). marital_status(p39, married_civ_spouse).
occupation(p39, other_service). relationship(p39, husband). race(p39, white). sex(p39, male). hours_per_week(p39, medium). native_country(p39, unknown).

age(p40, middle). workclass(p40, private). education(p40, hs_grad). marital_status(p40, widowed).
occupation(p40, machine_op_inspct). relationship(p40, not_in_family). race(p40, white). sex(p40, female). hours_per_week(p40, low). native_country(p40, unknown).

age(p41, middle). workclass(p41, private). education(p41, hs_grad). marital_status(p41, married_civ_spouse).
occupation(p41, transport_moving). relationship(p41, husband). race(p41, white). sex(p41, male). hours_per_week(p41, medium). native_country(p41, unknown).

age(p42, middle). workclass(p42, private). education(p42, hs_grad). marital_status(p42, divorced).
occupation(p42, exec_managerial). relationship(p42, not_in_family). race(p42, white). sex(p42, female). hours_per_week(p42, medium). native_country(p42, unknown).

age(p43, young). workclass(p43, private). education(p43, hs_grad). marital_status(p43, divorced).
occupation(p43, adm_clerical). relationship(p43, own_child). race(p43, black). sex(p43, female). hours_per_week(p43, medium). native_country(p43, unknown).

age(p44, middle). workclass(p44, private). education(p44, '5th_6th'). marital_status(p44, never_married).
occupation(p44, machine_op_inspct). relationship(p44, unmarried). race(p44, white). sex(p44, female). hours_per_week(p44, medium). native_country(p44, unknown).

age(p45, middle). workclass(p45, private). education(p45, bachelors). marital_status(p45, never_married).
occupation(p45, exec_managerial). relationship(p45, unmarried). race(p45, black). sex(p45, female). hours_per_week(p45, medium). native_country(p45, unknown).

age(p46, young). workclass(p46, private). education(p46, assoc_acdm). marital_status(p46, never_married).
occupation(p46, adm_clerical). relationship(p46, not_in_family). race(p46, white). sex(p46, female). hours_per_week(p46, low). native_country(p46, unknown).

age(p47, young). workclass(p47, private). education(p47, hs_grad). marital_status(p47, married_spouse_absent).
occupation(p47, farming_fishing). relationship(p47, own_child). race(p47, white). sex(p47, female). hours_per_week(p47, medium). native_country(p47, latin_america).

age(p48, young). workclass(p48, private). education(p48, some_college). marital_status(p48, never_married).
occupation(p48, craft_repair). relationship(p48, unmarried). race(p48, white). sex(p48, male). hours_per_week(p48, medium). native_country(p48, unknown).

age(p49, middle). workclass(p49, private). education(p49, hs_grad). marital_status(p49, married_civ_spouse).
occupation(p49, adm_clerical). relationship(p49, husband). race(p49, white). sex(p49, male). hours_per_week(p49, medium). native_country(p49, unknown).

age(p50, young). workclass(p50, private). education(p50, '11th'). marital_status(p50, never_married).
occupation(p50, machine_op_inspct). relationship(p50, other_relative). race(p50, white). sex(p50, male). hours_per_week(p50, medium). native_country(p50, unknown).

:- begin_in_pos.
more_than_50k(p1).
more_than_50k(p2).
more_than_50k(p3).
more_than_50k(p4).
more_than_50k(p5).
more_than_50k(p6).
more_than_50k(p7).
more_than_50k(p8).
more_than_50k(p9).
more_than_50k(p10).
more_than_50k(p11).
more_than_50k(p12).
more_than_50k(p13).
more_than_50k(p14).
more_than_50k(p15).
more_than_50k(p16).
more_than_50k(p17).
more_than_50k(p18).
more_than_50k(p19).
more_than_50k(p20).
more_than_50k(p21).
more_than_50k(p22).
more_than_50k(p23).
more_than_50k(p24).
more_than_50k(p25).
:- end_in_pos.

:- begin_in_neg.
more_than_50k(p26).
more_than_50k(p27).
more_than_50k(p28).
more_than_50k(p29).
more_than_50k(p30).
more_than_50k(p31).
more_than_50k(p32).
more_than_50k(p33).
more_than_50k(p34).
more_than_50k(p35).
more_than_50k(p36).
more_than_50k(p37).
more_than_50k(p38).
more_than_50k(p39).
more_than_50k(p40).
more_than_50k(p41).
more_than_50k(p42).
more_than_50k(p43).
more_than_50k(p44).
more_than_50k(p45).
more_than_50k(p46).
more_than_50k(p47).
more_than_50k(p48).
more_than_50k(p49).
more_than_50k(p50).
:- end_in_neg.

