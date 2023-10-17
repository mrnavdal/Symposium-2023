import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:symposium/delegate_view/presentation/pages/speaker_detail.dart';
import 'package:symposium/delegate_view/presentation/widgets/appbar.dart';
import 'package:symposium/delegate_view/presentation/widgets/drawer_menu.dart';

import '../../domain/entities/speakers.dart';

class SpeakersPage extends StatelessWidget {
  const SpeakersPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMenu(),
        appBar: SympoAppBar(title: title),
        body: Center(
          child: ListView.builder(
              itemCount: speakers.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                          image: AssetImage(speakers[index].imagePath),
                        )),
                    title: Text(speakers[index].name),
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child:
                                  SpeakerDetailPage(speaker: speakers[index]),
                              type: PageTransitionType.rightToLeftWithFade));
                    },
                  ),
                );
              }),
        ));
  }
}
