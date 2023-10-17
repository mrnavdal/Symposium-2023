import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/presentation/pages/about_aiesec_page.dart';
import 'package:symposium/delegate_view/presentation/pages/agenda_page.dart';
import 'package:symposium/delegate_view/presentation/pages/feedback_page.dart';
import 'package:symposium/delegate_view/presentation/pages/networking_page.dart';
import 'package:symposium/delegate_view/presentation/pages/panel_discussion_page.dart';
import 'package:symposium/delegate_view/presentation/pages/partners_page.dart';
import 'package:symposium/delegate_view/presentation/pages/speaker_detail.dart';
import 'package:symposium/delegate_view/presentation/pages/speakers_page.dart';
import 'package:symposium/delegate_view/presentation/pages/wokshops_page.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';

import 'delegate_view/domain/entities/speakers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // generate routes
      routes: {
        '/home': (context) => const HomePage(title: 'Úvodní stránka'),
        '/speakers': (context) => const SpeakersPage(title: 'Naši řečníci'),
        '/speakers/detail': (context) => SpeakerDetailPage(
              speaker: ModalRoute.of(context)!.settings.arguments as Speaker,
            ),
        '/workshops': (context) => const WorkshopsPage(title: 'Workshopy'),
        '/agenda': (context) => const AgendaPage(title: 'Program konference'),
        '/partners': (context) => const PartnersPage(title: 'Partneři akce'),
        '/aiesec': (context) => const AboutAIESECPage(),
        '/feedback': (context) => const FeedbackPage(name: 'Zpětná vazba'),
        '/networking': (context) => const NetworkingPage(),
        '/paneldiscussion': (context) => const PanelDiscussionPage(),
      },
      title: 'Symposium 2023',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: SymposiumColors.symposiumBlue.color,
          iconTheme: IconThemeData(color: SymposiumColors.symposiumWhite.color),
          titleTextStyle: GoogleFonts.titilliumWeb(
              textStyle: TextStyle(
                  color: SymposiumColors.symposiumWhite.color, fontSize: 20)),
        ),
        primaryColor: SymposiumColors.symposiumRed.color,
        fontFamily: GoogleFonts.titilliumWeb().fontFamily,
        splashColor: SymposiumColors.symposiumBlue.color,
        scaffoldBackgroundColor: SymposiumColors.symposiumBlue.color,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: SymposiumColors.symposiumWhite.color),
          headlineMedium:
              TextStyle(color: SymposiumColors.symposiumWhite.color),
          headlineSmall: TextStyle(color: SymposiumColors.symposiumWhite.color),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: SymposiumColors.symposiumBlue.color,
            primary: SymposiumColors.symposiumRed.color,
            secondary: SymposiumColors.symposiumWhite.color),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Úvodní stránka'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMenu(),
        appBar: SympoAppBar(title: title),
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
                // create a home page with an image and a long lorem ipsum text
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const Image(
                        image:
                            AssetImage('lib/assets/images/other/symposium.png'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                        'Vítáme vás na konferenci Symposium! \n\nV této virtuální brožuře se dozvíte všechny potřebné informace o programu, řečnících, workshopech i mnohem více.\n\nPro nejlepší zážitek z aplikace doporučujeme otevřít odkaz z QR kódu v aplikaci Google Chrome.\nK navigaci použijte menu v levém horním rohu obrazovky. Přejeme příjemný zážitek!\n\nOrganizační tým Symposium',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
