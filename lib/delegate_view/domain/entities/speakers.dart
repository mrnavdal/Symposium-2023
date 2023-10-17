class Speaker {
  final String name;
  final String description;
  final String imagePath;

  Speaker(
      {required this.name, required this.description, required this.imagePath});
}

Speaker getSpeakerByName(String name) =>
    speakers.firstWhere((speaker) => speaker.name == name);

final speakers = _speakers
    .map((speaker) => Speaker(
        name: speaker["name"],
        description: speaker["description"],
        imagePath: speaker["imagePath"]))
    .toList();

final List<Map<String, dynamic>> _speakers = [
  {
    "name": "Marta Říhová",
    "description":
        "Seznamte se s Martou. Podnikatelkou, která proplouvá světem náboru IT už přes celých 10 let. V HR ušla spletitou cestu od dob oslovování kandidátů vesnickým rozhlasem až po éru AI. Jako IT headhunter působila v renomovaných společnostech SAP Signavio nebo MANN+HUMMEL. Její vášeň pro propojování talentů s duší firem ji zavedla k založení Limetee, v kterém přináší do řemesla recruitmentu společně s jejími chlapci svěží vítr. Ví, že nábor nestačí dělat jen kvalitně, ale taky více “juicy”. Staví na synergii IT backgroundu a osobitého přísutpu k náboru.V IT recruitmentu začíná tam, kde ostatní s hledáním končí a je tak vyhledáváným recruiterem na ty nejtěžší pozice.\n\n",
    "imagePath": "lib/assets/images/speakers/rihova.jpg"
  },
  {
    "name": "Libor Hoření",
    "description":
        "Libor Hoření založil v 17 letech největší český web o vaření - toprecepty.cz, je navíc spolumajitelem mobilní aplikace Nesnězeno a spoluzakladatel platformy Donio.cz. Dále provozuje kavárnu, kde platba probíhá formou dobrých skutků. Aktivně podporuje začínající podnikatele, učí na Vysoké škole Newton v Brně a sdílí svou vášeň pro umělou inteligenci."
    "\n\nNa networkingu se ho můžete zeptat například na to, jaká vidí rizika v AI.",
    "imagePath": "lib/assets/images/speakers/horeni.jpg"
  },
  {
    "name": "Šimon Steffal",
    "description":
        "Představujeme vám Šimona Steffala, zakladatele společnosti Mindset Mentors, jehož vášní je interní komunikace ve firmách a týmech. S diplomem v psychologii z UNYP/Empire State College a studiem mezinárodních vztahů a diplomacie na Anglo-americké univerzitě v Praze, je také hrdým akreditovaným mentorem a členem EMCC.Jeho zájem směřuje k mezilidské komunikaci, aplikované psychologii a rozvoji týmů a organizací. Díky jeho bohatým zkušenostem v oblasti osobního rozvoje a vášni pro aplikovanou psychologii vás zavede do různorodých situací - od komunikace a emoční inteligence až po skupinovou dynamiku a principy osobního růstu. \n\n"
            "\"Zeptejte se mě na to, kdo je Pedro Mopes a jak mi pomáhá mít lepší život…\n"
   "Zeptejte se mě na to, co mě na podnikání nejvíc štve…\n"
    "Zeptejte se mě na to, jak nám funguje full-remote firma…\n"
    "Zeptejte se mě na to, proč rád koukám na videa, jak lidi padají…\n"
    "Zeptejte se mě na můj nejšílenější zážitek z online meetu…\"",
    "imagePath": "lib/assets/images/speakers/steffal.jpg"
  },
  {
    "name": "Libor Komárek",
    "description":
        "Libor má bohaté zkušenosti z vlastní firmy Motivation Labs, kde pomáhá firmám vytvářet prostředí pro efektivitu a spokojenost. Na přednášce se dozvíte, jak je důležitá kvalitní motivace pro dlouhodobý úspěch, o základních principech motivace, a také praktické tipy, jak je naplnit ve svém podnikání.\n\n A jak začít při networkingu? Zkuste se ho zeptat co nejraději dělá pracovní psycholog v létě? Jak tráví svůj čas?",
    "imagePath": "lib/assets/images/speakers/komarek.jpg"
  },
  {
    "name": "Denisa Janatová",
    "description":
        "Denisa je spoluzakladatelka a CEO kariérní platformy Smitio. S více než 11 lety praxe v oblasti IT recruitmentu a budování HR employer brandingu má značnou zkušenost, která jí pomáhá budovat úspěšný byznys. Smitio propojuje IT specialisty se společnostmi a připravuje relevantní obsah, který buduje IT komunitu. \n\n Čím začít na networkingu? Zkuste říct jedno nebo dvě slova, která byste použili k popsání svého pracovního/školního týdne. Může to být cokoliv, co vás napadne.",
    "imagePath": "lib/assets/images/speakers/janatova.jpg"
  },
  {
    "name": "Petra Sobotková",
    "description":
        "Petra Sobotková je spoluzakladatelkou Mindset Mentors a  expertkou na komunikaci ve firmách, organizacích a týmech. Pracuje s vášní na konstruktivním a cílevědomém mindsetu, který podporuje růst lidí i firem. \n\n \"Zeptejte se mě na to, jak jsem přežila, když mi zakázali kofein. A doporučte mi knížku (ideálně fantasy).\"",
    "imagePath": "lib/assets/images/speakers/sobotkova.jpg"
  },
  {
    "name": "Bea Brosková",
    "description":
        "Bea více než 15 let rozvíjí dospělé formou školení a vizuální facilitace. Získala na Slovensku titul Lektor roku 2022. Je spolumajitelkou vzdělávací společnosti HumanCraft, lídrem v Česku, a také je průkopnicí vizuálního zaznamenávání v ČR. Její vášeň ji přivedla až k zrodu evropské organizace pro 'visual practitioners'. \n\n \"Zeptejte se mě na to, jak dobíjím baterky\"",
    "imagePath": "lib/assets/images/speakers/broskova.jpg"
  },
  {
    "name": "Martin Urban",
    "description":
        "Martin je vůdcem padesáti členného vývojového týmu v Purple Technology a specializuje se na Serverless architekturu fintechových aplikací v cloudu. Je také zakladatel brněnský únikových her BrainFAQ a aplikace Outsider. Vedle toho je také otcem třech dětí a zajímá se o technologická témata, leadership a management. \n\n Na networkingu se ho zkuste zeptat, jaký je příběh za vznkem názvů BrainFAQ pro únikovky a Outsider pro aplikaci na outdoor hry.",
    "imagePath": "lib/assets/images/speakers/urban.jpeg"
  },
  {
    "name": "Monika Ptáčníková",
    "description":
        "Monika je spoluzakladatelkou a členkou správní rady neziskové organizace Czechitas. Mimo business developmentu a fundraisingu se přes 10 let věnuje rozvoji talentů na trhu práce. Působí jako kariérová lektorka a mentorka i v rámci týmu Career Designer a 5. rokem jako Google Certified Trainer pro iniciativu #IamRemarkable. Je členkou Rady pro Inovace Jihomorovského kraje a v neposlední řadě i máma dvou malých dětí. ",
    "imagePath": "lib/assets/images/speakers/ptacnikova.jpg"
  },
  {
    "name": "Zuzana Paulovics",
    "description":
        "Zuzana má bohaté zkušenosti z oblasti bankovnictví a podnikání. Od roku 2001 působí v ČSOB. V roce 2018 přijala novou výzvu a spustila akcelerační program pro startupy Start it @ČSOB. Její vášeň a hlavní zaměření spočívá v nalezení způsobů, jak ověřit poptávku po inovativních řešeních.",
    "imagePath": "lib/assets/images/speakers/paulovics.jpg"
  },
  {
    "name": "Michal Daniel",
    "description":
        "Představte si prvního a zároveň nejmladšího člena palubního týmu NOTINO, největšího evropského e-shopu s parfémy a kosmetikou. Michal Daniel, Chief People & Legal Officer, je nejen strůjcem nových pravidel, ale zároveň tváří nové éry. Vedoucí lodě s více než 2000 stálými členy posádky a téměř 1000 vynikajícími agenturními talenty – Michal personifikuje vedení s čerstvým pohledem. S ním není NOTINO pouze krásným cílem, je to cesta plná inovací a růstu. \n\n Čím začít na networkingu: \"Work hard – play hard. Alebo ako sa nezblázniť, keď neovládate všetko a pri tom si dokážete užívať život.\"",
    "imagePath": "lib/assets/images/speakers/daniel.JPG"
  },
  {
    "name": "Ivana Šedivá",
    "description":
        "Ivana Šedivá má za sebou 27 let v boardech velkých korporací i mentoring startupů, malých a středních firem. Pomohla více než 700 startupům téměř po celém světě. Je jednou z klíčových mentorek a lektorek 5. nejvýznamnějšího akcelerátoru na světě, Google for Startups, koučuje i mentory samotné. Je členkou poradního sboru University of New York in Prague, spolupracuje s VŠE. Často porotcuje soutěže startupů.\n\n \"Můžete si vzpomenout na situaci, kdy jste svými slovy dokázali ovlivnit výsledek nějaké důležité události? Co se stalo a co jste tím dosáhli? \n Máte nějaký neobvyklý talent nebo dovednost, která vám pomohla ve škole nebo v osobním životě? Můžete nám říct příběh, jak jste tuto schopnost využili k dosažení cíle?\"",
    "imagePath": "lib/assets/images/speakers/sediva.JPG"
  },
  {
    "name": "Michal Vrátný",
    "description":
        "Michal “Radar” Vrátný založil v roce 2011 Železnou kouli, o které s nadsázkou říká, že je fitkem pro pražskou kavárnu, kde dělají z lidí, co necvičí, lidi, co cvičí. Tréninkový systém v Železné kouli se soustředí na praktický trénink a dlouhodobou kondici. Když není Radar v gymu, skáče z letadla, jezdí na prkně nebo hraje Dungeons & Dragons. \n\n A na co se ho zeptat na networkingu? Zkuste: \n\"Kdy vás naposledy něco opravdu překvapilo?\n Kdy jste byl/a naposledy cvičit?\n Jaké tři věci si s sebou vezmete na pustý ostrov?\n Co vás naposledy skutečně potěšilo?\n Kdy jste se naposledy naučil/a něco nového?\" - Toto je jeho favorit",
    "imagePath": "lib/assets/images/speakers/vratny.jpg"
  },
  {
    "name": "Markéta Baginská",
    "description":
        "Markéta Baginská je zakladatelkou Podnikání Pro Holky s.r.o. Marketingu a sociálním sítím se věnuje už 10 let. Tyto oblasti businessu jí pomohly získat klienty pro své fitness podnikání a digitální produkty. V roce 2020 založila firmu Podnikání pro Holky s.r.o., vygenerovala obrat v řádů několika milionů korun a proškolila více než 1500 podnikatelek. \n\n Otevírák na networking: \"V čem jsi skvělý/á a která věc ti teď naopak nejde?\"",
    "imagePath": "lib/assets/images/speakers/baginska.jpg"
  },
  {
    "name": "Honza Klusoň",
    "description":
        "Honza Klusoň je CEO pro Česko a Slovensko ve společnosti Welcome to the Jungle, evropské jedničce na trhu práce, která pomáhá firmám s budováním employer brandu. Vystudoval Multimédia v ekonomické praxi na VŠE v Praze a Marketingovou komunikci na ÚTB ve Zlíně. V roce 2015 byl jedním ze spoluzakladatelů kariérního showroomu Proudly, který úspěšně o 4 roky později exitovali. Přednáší, píše a mluví o všem, co souvisí s employer brandingem, HR marketingem a firemní kulturou. Pomáhá společnostem a zaměstnancům, aby práce našla udržitelné místo v jejich životě a byla pro ně byla opravdu zajímavá a vzrušující. \n\n A jak začít při networkingu? \n\"Jak se vám podařilo po škole vybudovat firmu a exitovat ji?\"\n\"Co podle vás mám udělat pro úspěšný start podnikání?\n\"Jak se vám daří najít work life balance s velkým pracovním vytížením? Na co se zaměřuje?\" \n\"Co byste mi doporučil v rámci vzdělávání a rozvoje, abych se mohl co nejvíce posunout?\"",
    "imagePath": "lib/assets/images/speakers/kluson.jpg"
  },
];
