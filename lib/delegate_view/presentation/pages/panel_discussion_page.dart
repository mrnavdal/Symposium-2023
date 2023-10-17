import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';
import 'package:symposium/utils/internet_button.dart';

class PanelDiscussionPage extends StatefulWidget {
  const PanelDiscussionPage({super.key});

  @override
  State<PanelDiscussionPage> createState() => _PanelDiscussionPageState();
}

class _PanelDiscussionPageState extends State<PanelDiscussionPage> {
  String name = "Panelová diskuse";


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
                          "lib/assets/images/paneldiscussion.jpg")),
                  const SizedBox(height: 20),
                  Text("Klepnutím na tlačítko níže se připojíte na stránku Sli.do. Zde můžete pokládat otázky pro řečníky do panelové diskuse, a podpořit otázky, které vám přijdou zajímavé.",
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 20),
                  const SizedBox(height:40, width: 120, child: InternetButton(icon: FontAwesomeIcons.globe, buttonText: "Sli.do", url: "https://app.sli.do/event/uUWYu8XYDT5W9ur5gkmKQC")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
