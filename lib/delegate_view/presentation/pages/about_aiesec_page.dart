import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';
import 'package:symposium/utils/internet_button.dart';

class AboutAIESECPage extends StatefulWidget {
  const AboutAIESECPage({super.key});

  @override
  State<AboutAIESECPage> createState() => _AboutAIESECPageState();
}

class _AboutAIESECPageState extends State<AboutAIESECPage> {
  String _aiesecDescription = "";
  String name = "O AIESEC";

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    String fileText = await rootBundle
        .loadString('lib/assets/images/partners/aiesec/aiesec_description.txt');
    setState(() {
      _aiesecDescription = fileText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SympoAppBar(title: name),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: SymposiumColors.symposiumWhite.color,
                border: Border.all(
                    color: SymposiumColors.symposiumWhite.color, width: 2)),
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                          "lib/assets/images/partners/aiesec/aiesec_logo.png")),
                  const SizedBox(height: 20),
                  Text(_aiesecDescription,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InternetButton(
                          icon: FontAwesomeIcons.instagram,
                          buttonText: "Instagram",
                          url: "https://www.instagram.com/aiesec_czech/"),
                      InternetButton(
                          icon: FontAwesomeIcons.globe,
                          url: "https://www.aiesec.cz",
                          buttonText: "Web"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
