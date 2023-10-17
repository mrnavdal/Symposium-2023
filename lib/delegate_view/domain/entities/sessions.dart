class Session {
  final String name;
  final String description;
  final String time;
  final String speaker;

  Session(
      {required this.name,
      required this.description,
      required this.speaker,
      required this.time});
}

final sessions = _sessions
    .map((session) => Session(
        name: session["name"],
        description: session["description"],
        speaker: session["speaker"],
        time: session["time"]))
    .toList();

final List<Map<String, dynamic>> _sessions = [
  {
    "name": "Well being - tajná zbraň podnikatele",
    "description":
        "Chcete se dozvědět, jak efektivně řídit svou energii a dosahovat dlouhodobých úspěchů? Přijďte na konferenci Symposium a objevte další strategie well-beingu v podnikání.\nPro začínající podnikatele je nadšení a nápad prvním krokem. Přestože cesta byznysu je plná výzev, Libor Komárek vám ukáže, jak překonávat překážky a udržet energii. Naučí vás, jak pracovat se svým vnitřním motorem. ",
    "speaker": "Libor Komárek",
    "time": "14:45"
  },
  {
    "name": "Jak řídit startup bez finančního polštáře a nezbláznit se",
    "description":
        "Denisa má více jak 11 let praxe v oblasti IT recruitmentu a budování HR employer brandingu. Podělí se s vámi o své osobní zkušenosti se založením inovativní platformy Smitio.com, která propojuje IT specialisty se společnostmi a připravuje relevantní obsah, který buduje IT komunitu. Podnikatelské začátky jsou náročné. O to více, když kolem sebe vidíte ty nablýskané, unicorňácké příběhy a vy se chcete také jedním z nich stát. Denisa poodhalí tvrdou realitu podnikání a ukáže vám, že sen, který vás pohání, může být skutečností.",
    "speaker": "Denisa Janatová",
    "time": "15:05"
  },
  {
    "name": "Bodyguardem vlastní značce",
    "description":
        "S více než 14 lety zkušeností v oblasti marketingu, zejména v brand buildingu a komunikaci značky, je Petra tím pravým průvodcem pro ochranu a posílení vašeho podniku. Není to jen o značce, je to o celém mindsetu a procesech. \n Těšte se na inspirativní příběhy a praktické rady od Petry, která na vlastní kůži zažila rozvoj brandu i byznysu. Posuňte svou značku a podnikání na další úroveň.",
    "speaker": "Petra Sobotková",
    "time": "15:25"
  },
  {
    "name": "Vyber si správného parťáka aneb jak jít štěstí a pohodě naproti",
    "description":
        "Za štěstím a pohodou s Beou Broskovou! Přijďte se inspirovat na přednášku 'Vyber si správného parťáka, aneb jak jít štěstí a pohodě naproti'!\nBea Brosková má recept! Zkombinovala vášeň, skvělé parťáky a dávku odhodlání. Přežila dvakrát vyhoření a teď? Přinese vám klíče k úspěchu\nHledat vášeň není procházka růžovým sadem a najít toho pravého parťáka může být ještě větší výzva. Ale Bea Brosková ví, jak na to!",
    "speaker": "Bea Brosková",
    "time": "15:45"
  },
  {
    "name": "Coffee break",
    "description": "Krátký prostor pro občerstvení.",
    "speaker": "",
    "time": "16:05"
  },
  {
    "name": "Proč je nezisk zisk",
    "description":
        "Spolu s Monikou Ptáčníkovou si společně vyvrátíme mýty a předsudky o nezisku na příkladu české neziskové organizace Czechitas. Ta se zaměřuje na méně zastoupené a znevýhodněné skupiny na trhu práce, primárně ženy. \nSpolečně nakoukneme pod pokličku fungování původně Brněnské iniciativy dobrovolníků, dnes jedné z nejvíce progresivních neziskových organizací a největší IT komunity v ČR.",
    "speaker": "Monika Ptáčníková",
    "time": "16:25"
  },
  {
    "name": "Co startup bere, to side-project dává!",
    "description":
    "Martin vám ukáže, jak můžete mít úspěšný vedlejší projekt, aniž byste se museli vzdát všeho ostatního. Jste podobní jako on a nejste ochotní vzdát se všeho ve prospěch vašeho nápadu? \nJestli váš nápad na první dobrou nemění svět, ani z vás hned nedělá miliardáře, i tak to pořád může být zábava. A může plnit potřebu jak vaši, tak velmi pravděpodobně i dalších lidí, a zároveň vám u toho generovat další příjem.",
    "speaker": "Martin Urban",
    "time": "16:45"
  },
  {
    "name": "Startup vs Korporát aneb proč každý vnímá inovace jinak",
    "description":
        "Pro všechny z vás, kdo máte zájem o svět startupů, ať už chcete založit vlastní nebo se jen zajímáte, máme skvělou zprávu! Zuzanina přednáška 'Startup vs Korporát aneb Proč každý vnímá inovace jinak' je pro vás šitá akorát na míru. \nPokud hledáte rady ohledně financování startupu, podpory na začátku podnikání, a chcete se vyhnout běžným chybám, Zuzana vám přinese užitečné rady. ",
    "speaker": "Zuzana Paulovics",
    "time": "17:05"
  },
  {
    "name": "Wellbeing: klíčový faktor úspěchu dynamické společnosti",
    "description":
        "Nezáleží na tom, jestli jste začínající podnikatelé nebo zkušení manažeři, téma wellbeingu má pro každou firmu zásadní význam. Michal vám ukáže cestu, jak dosáhnout vysokého výkonu a zároveň si udržet zdravého ducha. \nSlyšeli jste o tom, jak vzájemně propojit úspěch a osobní pohodu? Michal nám přiblíží, jak tyto dvě oblasti mohou spolupracovat a přinášet vám prospěch. Otevřeme třeba diskusi o tom, jak najít rovnováhu mezi pracovním nasazením a kvalitním životem mimo práci.",
    "speaker": "Michal Daniel",
    "time": "17:25"
  },
  {
    "name": "Coffee break",
    "description": "Krátký prostor pro občerstvení.",
    "speaker": "",
    "time": "17:45"
  },
  {
    "name": "Pět pastí podnikání",
    "description": "Setkávám se s nimi u začínajících podnikatelů i rozjetých firem. Málokdo se jim úplně vyhne. Leckdy ani úspěšní sérioví podnikatelé. Když o nich ale víme, poznáme je rychle a můžeme jednat. Pasti, které nás při podnikání zpomalují, zamlžují výhled a stojí nás čas, nervy a peníze. Podíváme se jim na zub.",
    "speaker": "Ivana Šedivá",
    "time": "18:05"
  },
  {
    "name":
        "Železná koule za 6,7 milionů - aneb 2. největší crowdfundingová kampaň v ČR",
    "description":
        "Před Vánoci 2020 jsme spustili crowdfundingovou kampaň “Online koučink, co má koule” s cílem vybrat 555 555 Kč. Ten jsme splnili za 54 minut, během 40 dní vybrali téměř 7 milionů a stali se druhou nejúspěšnější kampaní v té době. O úspěchu kampaně rozhoduje poctivá příprava a také pečlivé provedení. Poradím vám, jak správně vybrat platformu, jak kampaň připravit a jaké mechaniky použít, aby kampaň byla úspěšná.",
    "speaker": "Michal Vrátný",
    "time": "18:25"
  },
  {
    "name": "Silná osobní značka jako cesta k úspěchu",
    "description":
        "Silná osobní značka a sociální sítě jsou klíčem k úspěchu v podnikání. Moje vlastní zkušenosti a různé perspektivy mi umožňují pohlížet na budování značky komplexně. Pomohu vám pochopit základní principy budování osobní značky na sociálních sítích a najít způsob tvorby obsahu, který bude vyhovovat vám.",
    "speaker": "Markéta Baginská",
    "time": "18:45"
  },
  {
    "name": "Jak rozjet rostoucí firmu aneb za vším hledej lidi",
    "description":
        "Ukážeme si aktuální situaci na trhu práce, na to jak budovat firmu, aby byla sexy a hlásili se jí ti nejlepší kandidáti. Také se podíváme na rozdíly mezi generacemi na trhu práce, jak s každou generací komunikovat a co je pro ně důležité.",
    "speaker": "Honza Klusoň",
    "time": "19:05"
  },
  {
    "name": "Coffee break",
    "description": "Krátký prostor pro občerstvení.",
    "speaker": "",
    "time": "19:25"
  },
  {
    "name": "Panelová diskuse",
    "description": "Panelová diskuse, níž se budou účastnit tito speakeři:\n• Ivana Šedivá\n• Libor Komárek\n• Markéta Baginská\n• Michal Daniel\n• Šimon Steffal\n• Libor Hoření",
    "speaker": "",
    "time": "19:45"
  },
  {
    "name": "Networking & Clubco tour",
    "description": "",
    "speaker": "",
    "time": "20:55"
  },
];
