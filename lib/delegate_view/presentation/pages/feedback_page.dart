import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';
import 'package:symposium/utils/internet_button.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key, required this.name});

  final String name;

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String _feedbackText = "";

  @override
  void initState() {
    super.initState();
    loadAsset();
  }

  Future<void> loadAsset() async {
    String fileText =
        await rootBundle.loadString('lib/assets/images/other/feedback.txt');
    setState(() {
      _feedbackText = fileText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SympoAppBar(title: widget.name),
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
                  Text(_feedbackText,
                      style: Theme.of(context).textTheme.bodyMedium),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InternetButton(
                          icon: FontAwesomeIcons.globe,
                          buttonText: "Vyplnit zpětnou vazbu",
                          url: "https://forms.gle/6gRMhNvzFbFpAPzJ6")
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
