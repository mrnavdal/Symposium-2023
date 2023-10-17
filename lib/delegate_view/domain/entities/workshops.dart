class Workshop {
  final String name;
  final String description;
  final String imagePath;
  final String location;
  final String speaker;
  final String time;

  Workshop(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.location,
      required this.speaker,
      required this.time});
}

final workshops = _workshops
    .map((workshop) => Workshop(
        name: workshop["name"],
        description: workshop["description"],
        imagePath: workshop["imagePath"],
        location: workshop["location"],
        speaker: workshop["speaker"],
        time: workshop["time"]))
    .toList();

final List<Map<String, dynamic>> _workshops = [
  {
    "name": "Essence of Recruitment",
    "description": "Zajímá vás, co se skrývá za oponou úspěšného recruitmentu? Jak efektivně oslovovat špičkové talenty na LinkedInu? Možná zvažujete, jestli je recruitment pro vás tou správnou kariérní cestou?"
    "Připravte se na hluboký pohled do světa náboru na workshopu Marty Říhové pod taktovkou Limetee, kteří jsou úspěšní v oblasti IT. Odhalí vám tajemství úspěšného recruitmentu."
    "Těšit se můžete třeba na ukázku zajímavých funkcí účtu recruitera na LinkedInu, odhalení podstaty budování silné sítě kandidátů nebo na to, jak můžete využít síly AI pro budoucnost objevování talentů.",
    "imagePath": "lib/assets/images/foo.png",
    "location": "Hlavní sál",
    "speaker": "Marta Říhová",
    "time": "11:30"
  },
  {
    "name": "Jak rozjet vlastní firmu",
    "description":
    "Na workshopu se dozvíte například jak najít podnikatelskou příležitost, vytvořit si efektivní business plán, identifikovat konkurenční výhody a využívat nástroje pro úspěšné podnikání. Společně s Liborem si projdete rychlou analýzu konkurence a další kroky směřující podnikatelskému úspěchu.",
    "imagePath": "lib/assets/images/bar.png",
    "location": "-1. patro",
    "speaker": "Libor Hoření",
    "time": "14:45"
  },
  {
    "name": "Jak si z konfliktu nenadělat do kalhot",
    "description":
    "Tento workshop vás provede konstruktivní zpětnou vazbou, mentálními modely a tajemstvím týmového výkonu a komunity.",
    "imagePath": "lib/assets/images/bar.png",
    "location": "-1. patro",
    "speaker": "Šimon Steffal",
    "time": "18:05"
  },
];
