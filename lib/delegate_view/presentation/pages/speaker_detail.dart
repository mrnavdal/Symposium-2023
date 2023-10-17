import 'package:flutter/material.dart';
import 'package:symposium/assets/colors.dart';
import 'package:symposium/delegate_view/domain/entities/speakers.dart';

class SpeakerDetailPage extends StatelessWidget {
  const SpeakerDetailPage({super.key, required this.speaker});

  final Speaker speaker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SymposiumColors.symposiumBlue.color,
        title: Text(speaker.name),
      ),
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
                      child: Image.asset(speaker.imagePath)),
                  const SizedBox(height: 20),
                  Text(speaker.description,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
