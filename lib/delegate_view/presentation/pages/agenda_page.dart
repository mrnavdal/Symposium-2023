import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/domain/entities/sessions.dart';
import 'package:symposium/delegate_view/domain/entities/speakers.dart';
import 'package:symposium/delegate_view/presentation/pages/speaker_detail.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';

class AgendaPage extends StatefulWidget {
  const AgendaPage({super.key, required this.title});

  final String title;

  @override
  State<AgendaPage> createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  List<bool> expandedSessions =
      List.generate(sessions.length, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: SympoAppBar(title: widget.title),
      // drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
              child: ExpansionPanelList(
                  // generate expansion panels from the list of agenda items
                  children: sessions
                      .map(
                        (session) => ExpansionPanel(
                          canTapOnHeader: true,
                          headerBuilder: (context, isExpanded) {
                            return ListTile(
                              title: Text(session.name),
                              trailing: Text(session.time),
                            );
                          },
                          body: Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  session.speaker != "" ? "Řečník: ${session.speaker}" : "",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                ListTile(
                                  title: Text(session.description),
                                ),
                                session.speaker != ""
                                    ? ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: SymposiumColors
                                                .symposiumRed.color),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                  child: SpeakerDetailPage(
                                                      speaker: getSpeakerByName(
                                                          session.speaker)),
                                                  type: PageTransitionType
                                                      .rightToLeftWithFade));
                                        },
                                        child: Text(
                                          'Více o řečníkovi',
                                          style: TextStyle(
                                              color: SymposiumColors
                                                  .symposiumWhite.color),
                                        ))
                                    : Container(),
                              ],
                            ),
                          ),
                          isExpanded:
                              expandedSessions[sessions.indexOf(session)],
                        ),
                      )
                      .toList(),
                  expansionCallback: (index, isExpanded) {
                    setState(() {
                      expandedSessions =
                          List.generate(sessions.length, (index) => false);
                      expandedSessions[index] = isExpanded;
                    });
                  })),
        ),
      ),
    );
  }
}
