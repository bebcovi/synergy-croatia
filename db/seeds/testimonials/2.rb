# encoding: utf-8

Testimonial.create!(
  author: "Jelena Radošević",
  content_hr: <<-CONTENT.strip_heredoc,
    "DE ČEŠKIBUS"

    Osnovni Synergy Trening “Unique & United” jest za mene uistinu divno iskustvo.

    Upoznala sam sjajne mlade ljude iz Češke, Mađarske, Bugarske, Rumunjske i Turske koji su me oduševili svojom aktivnošću, poletom, iskrenošću, podrškom, hrabrošću te životnom energijom i potakli me da i ja budem aktivnija.

    Sam trening naveo me da razmišljam o svojoj ulozi u društvu i utjecaju na druge.

    Istaknuo je činjenicu da svatko od nas ima neku supermoć, te da zajedno možemo napraviti stvari iznad svih očekivanja.

    Također, definiranjem određenih koraka pojedinih psiholoških i socioloških procesa uobičajna zbrka u mojoj glavi postala je malko više strukturirana. Vidim stvari,događaje ponešto jasnije, pa mi je lakše baratati s njima. :) Upoznala sam se s određenim psihološkim alatima koje mogu koristiti kad mi zatrebaju. Uz sve to, trening jača samopouzdanje i izuzetno je zabavan.

    Motivira ljude da iskoriste svoj potencijal i uživaju u svemu što im život pruža. Hvala Syncro. :)
  CONTENT
  content_en: <<-CONTENT.strip_heredoc,
    "DE ČEŠKIBUS"

    Basic Synergy Training “Unique & United” was really a remarkable experience for me. I met wonderful young people from Czech Republic, Hungary, Bulgaria, Romania and Turkey which thrilled me with their activeness, sincerity, support, courage and life energy and inspired me to be more active.

    The training itself had me thinking about my role in society and about my influence on others. It showed me that every one of us has a superpower, and that together we can create things above all expectations. Also, defining certain steps of some psychological and sociological processes, the usual conundrum in my head became somewhat more structured. I see things and events little more clearly so it’s easier to handle them. :) I came to know some psychological tools that I can use when needed.  Besides all this, the trainings boosts up self-confidence and it is extremely fun. It motivates people to use their potential and enjoy what life offers. Thank you Syncro. :)
  CONTENT
  project: Project.find_by_name_hr("Unique & United"),
)
