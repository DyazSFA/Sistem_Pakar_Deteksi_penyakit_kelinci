pertanyaan('apakah kelinci tampak kurus?', kurus).
pertanyaan('apakah kelinci sering menggaruk dubur?', garuk).
pertanyaan('apakah kotoran kelinci tidak keluar normal?', kotoran).
pertanyaan('apakah kotoran berwarna hijau gelap?', gelap).
pertanyaan('apakah lendir bergantung pada dubur?', lendir).
pertanyaan('apakah nafsu makan kelinci berkurang?', nafsu).
pertanyaan('apakah kelinci selalu haus?', haus).
pertanyaan('apakah suhu kelinci panas?', panas).
pertanyaan('apakah kelinci mengeluarkan lendir dari hidung?', flu).


pengamatan:-
    pertanyaan(Tanya,Observasi),
    write(Tanya),nl,
    read(Jawaban),
    Jawaban=y,
    assert(observation(Observasi)),
    fail.

pengamatan.
aturan(1,a):-
    observation(kurus),
    not(observation(garuk)),
    observation(kotoran),
    observation(gelap),
    observation(lendir),
    not(observation(nafsu)),
    not(observation(haus)),
    not(observation(panas)),
    not(observation(flu)).

aturan(2,b):-
    observation(kurus),
    not(observation(garuk)),
    not(observation(kotoran)),
    not(observation(gelap)),
    not(observation(lendir)),
    observation(nafsu),
    not(observation(haus)),
    observation(panas),
    not(observation(flu)).


aturan(3,c):-
    not(observation(kurus)),
    not(observation(garuk)),
    observation(kotoran),
    not(observation(gelap)),
    not(observation(lendir)),
    observation(nafsu),
    not(observation(haus)),
    not(observation(panas)),
    not(observation(flu)).

aturan(4,d):-
    observation(kurus),
    not(observation(garuk)),
    observation(kotoran),
    not(observation(gelap)),
    observation(lendir),
    observation(nafsu),
    observation(haus),
    not(observation(panas)),
    not(observation(flu)).

aturan(5,e):-
    not(observation(kurus)),
    observation(garuk),
    not(observation(kotoran)),
    not(observation(gelap)),
    not(observation(lendir)),
    observation(nafsu),
    not(observation(haus)),
    not(observation(panas)),
    not(observation(flu)).

aturan(6,f):-
    not(observation(kurus)),
    not(observation(garuk)),
    not(observation(kotoran)),
    not(observation(gelap)),
    not(observation(lendir)),
    observation(nafsu),
    not(observation(haus)),
    observation(panas),
    observation(flu).

jawaban(a,'Entritis Kompleks').
jawaban(b,'Young De Syndrome').
jawaban(c,'Sembelit').
jawaban(d,'Radang Paru').
jawaban(e,'Cacingan').
jawaban(f,'Pilek').

main:-
    init,
    pengamatan,
    aturan(Nomor,Alasan),
    jawaban(Alasan,Jawab),
    nl,write('==================================='),nl,
    write('Jenis Penyakit Adalah : '(Jawab)),nl,
    write('==================================='),nl,
    retractall(observation(_)).
main:-
    nl,write('MAAF JAWABAN YANG ANDA TIDAK SESUAI DENGAN DAFTAR PENYAKIT KAMI'),nl,
    retractall(observation(_)).
init:-
    write('==========================================='),nl,
    write(' PROGRAM KLASIFIKASI PENYAKIT PADA KELINCI '),nl,
    write('==========================================='),nl,nl,
    write('Jawablah pertanyaan ini dengan "y" atau "t" '),nl,nl,nl.




