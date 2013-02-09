# encoding: utf-8

Testimonial.create!(
  author: "Vanja Varga",
  content_hr: <<-CONTENT.strip_heredoc,
    Ne sjećam se točno kada sam prvi put saznala za Synergy, ali se sjećam da mi se odmah uistinu svidjelo. Jednotjedni Coaching trening u manjem mjestu Ommen, Nizozemska.

    Imala sam pozitivan osjećaj i visoka očekivanja... i bilo mi je drago kada sam shvatila da je osjećaj bio dobar te da je cjelokupno iskustvo nadmašilo moja očekivanja.

    Razina gostoprimstva je bila sličnija onoj kada posjećujem prijatelje. Stvarali su ju ljudi, treneri te opća filozofija Synergy Grupe.

    Neformalni dio je ukazivao na njihovu posvećenost koja je, ako usporedim sa sličnim ikustvima, uistinu rijetko na toj razini iskrenosti. Ljepota na dalje je bilo prenošenje te posvećenosti na formalni dio, sam trening gdje se uistinu pazilo da ju svi sudionici osjećaju.

    Posljedično, svi su se osjećali ugodno, a to je omogućilo djeljenje i iskrenost -- bitan faktor koji je pridonijeo cjelokupnj kvaliteti treninga.

    Sadržaj i teorija su bili sažeti, jednostavni, specifični i vrlo praktični. Koncepti su prezentirani taman koliko je dovoljno da se zahvati poanta, a zatim vježbani do razine potpunog razumijevanja i ovladavanj pojedinom tehnikom.

    Daljnja divna stvar je bila razmjena iskustva s dugim sudionicima. S obzirom na kontekst, bila je intenzivna. Osjećaj ugodnosti i otvorenosti za otvoriti se i uključiti cijelog sebe te prihvatiti drugog bili su prisutni od samog početka. Raznolikost naših pozadina -- geografski, kulturalno, obrazovno, profesionalno te osobno – bila je bogata. To je bilo super!

    Ljudi sa svih strana koji rade mnogo zanimlljivih stvari i tako su razičitih osobnosti -- bili su tamo s istim ciljem -- narasti kao osoba, poboljšati sebe i pomoći drugima da učine isto.
  CONTENT
  content_en: <<-CONTENT.strip_heredoc,
    I don’t exactly remember when I first heard of Synergy, but I remember I liked it immediately. One-week coaching training in a small town of Ommen, Netherlands.

    I had a good feeling and lots of expectations… and I was glad to realize it was right and that my expectations were surpassed. The level of hospitality was more like the one I had when visiting friends, and it was created by the people, the trainers and the general idea of Synergy Group.

    Non-formal part showed their dedication, which, compared to similar experiences, is rarely on that level of sincerity. The beauty was that it was transferred to the formal part, the training, where everyone could see it.

    It made the group feel comfortable, which made all the sincerity and sharing possible – an important factor in the overall quality of the training.

    The content and theory were short, simple, and very practical. The concepts were laid out just so one can grasp the idea, and then we practiced until we fully understood and mastered a technique.

    The next thing was the exchange of experiences with other participants, which was quite intensive. The feeling of openness and inclusion was there from the beginning. The Diversity of our backgrounds -- geographically, culturally, educationally, professionally and personally was immensely rich. It was great!

    People from all sides doing such diverse things and with different personalities – were there with the same goal -- to grow as a person, develop and help others do the same.
  CONTENT
  project: Category.find_by_name_en("Practicing Coaching training").projects.first,
)
