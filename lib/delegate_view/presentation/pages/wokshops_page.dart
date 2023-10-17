import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/domain/entities/sessions.dart';
import 'package:symposium/delegate_view/domain/entities/speakers.dart';
import 'package:symposium/delegate_view/domain/entities/workshops.dart';
import 'package:symposium/delegate_view/presentation/pages/speaker_detail.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';

class WorkshopsPage extends StatefulWidget {
  const WorkshopsPage({super.key, required this.title});

  final String title;

  @override
  State<WorkshopsPage> createState() => _WorkshopsPageState();
}

class _WorkshopsPageState extends State<WorkshopsPage> {
  List<bool> expandedWorkshops =
  List.generate(workshops.length, (index) => false);
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
                  children: workshops
                      .map(
                        (workshop) => ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                          title: Text(workshop.name),
                          trailing: Text(workshop.time),
                        );
                      },
                      body: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              workshop.speaker != "" ? "Řečník: ${workshop.speaker}" : "",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            ListTile(
                              title: Text(workshop.description),
                            ),
                            workshop.speaker != "" ?
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                    SymposiumColors.symposiumRed.color),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: SpeakerDetailPage(
                                              speaker: getSpeakerByName(
                                                  workshop.speaker)),
                                          type: PageTransitionType
                                              .rightToLeftWithFade));
                                },
                                child: Text(
                                  'Více o řečníkovi',
                                  style: TextStyle(
                                      color: SymposiumColors
                                          .symposiumWhite.color),
                                )) : Container(),
                          ],
                        ),
                      ),
                      isExpanded:
                      expandedWorkshops[workshops.indexOf(workshop)],
                    ),
                  )
                      .toList(),
                  expansionCallback: (index, isExpanded) {
                    setState(() {
                      expandedWorkshops = List.generate(
                          workshops.length, (index) => false);
                      expandedWorkshops[index] = isExpanded;
                    });
                  })),
        ),
      ),
    );
  }
}
