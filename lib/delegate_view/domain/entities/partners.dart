enum PartnerType {
  inkind(displayName: "Sponzoři"),
  media(displayName: "Mediální partneři"),
  gold(displayName: "Hlavní partner"),
  silver(displayName: "Partneři"),
  zastita(displayName: "Akci zaštiťují");

  const PartnerType({required this.displayName});
  final String displayName;

  static PartnerType fromString(String value) {
    return PartnerType.values
        .firstWhere((element) => element.displayName == value);
  }
}

class Partner {
  final String name;
  final String url;
  final String imagePath;
  final PartnerType type;

  Partner(
      {required this.name,
      required this.url,
      required this.imagePath,
      required this.type});
}

Partner getPartnerByName(String name) =>
    partners.firstWhere((partner) => partner.name == name);

final partners = _partner
    .map((partner) => Partner(
        name: partner["name"],
        url: partner["url"],
        imagePath: partner["imagePath"],
        type: PartnerType.fromString(partner["type"])))
    .toList();

final List<Map<String, dynamic>> _partner = [
  {
    "name": "CTP",
    "url": "https://www.ctp.eu/cs/",
    "imagePath": "lib/assets/images/partners/companies/ctp.png",
    "type": "Hlavní partner"
  },
  {
    "name": "NOTINO",
    "url":
        "https://www.notino.cz/",
    "imagePath": "lib/assets/images/partners/companies/notino.png",
    "type": "Partneři"
  },
  {
    "name": "Limetee",
    "url":
    "https://limetee.cz/home-2-2/",
    "imagePath": "lib/assets/images/partners/companies/limetee.jpg",
    "type": "Partneři"
  },
  {
    "name": "Purple Technology",
    "url":
    "https://www.purple-technology.com/",
    "imagePath": "lib/assets/images/partners/companies/purple.png",
    "type": "Partneři"
  },
  {
    "name": "StartIt @ ČSOB",
    "url":
    "https://startit.csob.cz/",
    "imagePath": "lib/assets/images/partners/companies/startit.png",
    "type": "Partneři"
  },
  {
    "name": "Vlněna Clubco",
    "url":
    "https://clubco.cz/",
    "imagePath": "lib/assets/images/partners/companies/vlnena.png",
    "type": "Partneři"
  },
  {
    "name": "Sonnentor",
    "url":
    "https://www.sonnentor.com/cs-cz",
    "imagePath": "lib/assets/images/partners/sponsors/sonnentor.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Frumoš",
    "url":
    "https://www.frumos.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/frumos.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "XD Connects",
    "url":
    "https://www.xdconnects.com/en-gb/",
    "imagePath": "lib/assets/images/partners/sponsors/xd.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Euroko",
    "url":
    "https://www.euroko.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/euroko.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Kobliha Brno",
    "url":
    "https://obchod.kobliha.live/",
    "imagePath": "lib/assets/images/partners/sponsors/kobliha.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Infinit Maximus",
    "url":
    "https://maximus.infinit.cz/cs",
    "imagePath": "lib/assets/images/partners/sponsors/infinit.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Svačinovo",
    "url":
    "https://www.svacinovo.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/svacinovo.jpg",
    "type": "Sponzoři"
  },  {
    "name": "Pivovar Mazák",
    "url":
    "https://pivovarmazak.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/mazak.jpg",
    "type": "Sponzoři"
  },  {
    "name": "Kaliforňan",
    "url":
    "https://kalifornan.sk/cz/",
    "imagePath": "lib/assets/images/partners/sponsors/kalifornan.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Jan Melvil Publishing",
    "url":
    "https://www.melvil.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/melvil.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Motmot",
    "url":
    "https://www.motmot.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/motmot.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Flow",
    "url":
    "https://flow-nutrition.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/flow.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "MotivP",
    "url":
    "https://www.motivp.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/motivp.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Fablab Brno",
    "url":
    "https://www.fablabbrno.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/fablab.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Papačky od Lůcy",
    "url":
    "https://www.papackyodlucy.cz/o-mn%C4%9B",
    "imagePath": "lib/assets/images/partners/sponsors/papacky.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Prifilom",
    "url":
    "https://www.rehole.cz/cs/ovocne-produkty-od-frantiskanek",
    "imagePath": "lib/assets/images/partners/sponsors/prifilom.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Ofigo",
    "url":
    "https://www.ofigo.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/ofigo.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Vanda sirupky a marmelády",
    "url":
    "https://www.vandasirupyamarmelady.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/vanda.jpg",
    "type": "Sponzoři"
  },
  {
    "name": "Výroba lahůdek Eva Budešová & Syn",
    "url":
    "http://www.studenakuchyne.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/buresovi.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Osmička",
    "url":
    "https://www.zazracnaosmicka.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/osmicka.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Dr. Chuť",
    "url":
    "https://www.doktorchut.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/drchut.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Premiera Sweet",
    "url":
    "https://www.premiera.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/premiera.jpg",
    "type": "Sponzoři"
  },

  {
    "name": "Rosebud",
    "url":
    "https://www.rosebud.cz/",
    "imagePath": "lib/assets/images/partners/sponsors/rosebud.jpeg",
    "type": "Sponzoři"
  },
  {
    "name": "Město Brno",
    "url":
    "https://www.brno.cz/",
    "imagePath": "lib/assets/images/partners/zastita/brno.jpg",
    "type": "Akci zaštiťují"
  },
  {
    "name": "Ekonomicko-správní fakulta Masarykovy univerzity",
    "url":
    "https://www.econ.muni.cz/",
    "imagePath": "lib/assets/images/partners/zastita/muni_econ.png",
    "type": "Akci zaštiťují"
  },
  {
    "name": "Business Info",
    "url":
    "https://www.businessinfo.cz/",
    "imagePath": "lib/assets/images/partners/media/businessinfo.png",
    "type": "Mediální partneři"
  },
  {
    "name": "Czechitas",
    "url":
    "https://www.czechitas.cz/",
    "imagePath": "lib/assets/images/partners/media/czechitas.png",
    "type": "Mediální partneři"
  },
  {
    "name": "Holky z Brna",
    "url":
    "https://www.instagram.com/holkyzbrna/?hl=cs",
    "imagePath": "lib/assets/images/partners/media/holkyzbrna.jpeg",
    "type": "Mediální partneři"
  },
  {
    "name": "Profozně ekonomická fakulta MENDELU",
    "url":
    "https://pef.mendelu.cz/",
    "imagePath": "lib/assets/images/partners/media/mendelu_pef.jpg",
    "type": "Mediální partneři"
  },
  {
    "name": "Centrum pro transfer technologií MUNI",
    "url":
    "https://www.ctt.muni.cz/",
    "imagePath": "lib/assets/images/partners/media/muni_ctt.png",
    "type": "Mediální partneři"
  },
  {
    "name": "Kariérní centrum MUNI",
    "url":
    "https://www.kariera.muni.cz/",
    "imagePath": "lib/assets/images/partners/media/muni_kc.png",
    "type": "Mediální partneři"
  },
  {
    "name": "StartupJobs",
    "url":
    "https://www.startupjobs.cz/",
    "imagePath": "lib/assets/images/partners/media/startupjobs.png",
    "type": "Mediální partneři"
  },
  {
    "name": "Ticketstream",
    "url":
    "https://www.ticketstream.cz/",
    "imagePath": "lib/assets/images/partners/media/ticketstream.png",
    "type": "Mediální partneři"
  },
];
