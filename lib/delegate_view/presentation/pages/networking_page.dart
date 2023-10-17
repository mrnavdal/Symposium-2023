import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';
import 'package:symposium/utils/internet_button.dart';

class NetworkingPage extends StatefulWidget {
  const NetworkingPage({super.key});

  @override
  State<NetworkingPage> createState() => _NetworkingPageState();
}

class _NetworkingPageState extends State<NetworkingPage> {
  String _networkingDescription = "";
  String name = "Networking";

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    String fileText = await rootBundle
        .loadString('lib/assets/images/other/networking.txt');
    setState(() {
      _networkingDescription = fileText;
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
                          "lib/assets/images/networking.jpg")),
                  const SizedBox(height: 20),
                  Text(_networkingDescription,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 20),
                  //create a table with 2 rows and 3 columns
                  Table(
                    children:  [
                      TableRow(children: [
                       SizedBox(height: 100, width: 100, child: Container(color: Colors.blue,),),
                        SizedBox(height: 100, width: 100, child: Container(color: Colors.yellow,),),
                        SizedBox(height: 100, width: 100, child: Container(color: Colors.green,),),
                      ]),
                      const TableRow(children: [
                        SizedBox(height: 100, width: 100, child: Text("Tiše se inspiruji", textAlign: TextAlign.center,),),
                        SizedBox(height: 100, width: 100, child: Text("Začínám podnikat", textAlign: TextAlign.center,),),
                        SizedBox(height: 100, width: 100, child: Text("Hledám  business parťáka", textAlign: TextAlign.center,),),
                      ]),
                    ],
                  ),
                  const Text("Můžete s nimi začít konverzaci na toto téma.", textAlign: TextAlign.left,),
                  const Text("Nevíte jak zahájit konverzaci s řečníky? Zeptali jsme se jich za vás na dobrou otevírací větu, aby se vám snáze začínala konverzace. Najdete je v sekci Naši řečníci při klepnutí na detail řečníka.\nPřejeme příjemnou zábavu."),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
