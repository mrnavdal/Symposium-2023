import 'package:flutter/material.dart';
import 'package:symposium/assets/colors.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: SymposiumColors.symposiumRed.color,
            ),
            child: const Text('Symposium 2023'),
          ),
          ListTile(
            title: const Text('Úvodní stránka'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          ListTile(
            title: const Text('Program konference'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/agenda');
            },
          ),
          ListTile(
            title: const Text('Workshopy'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/workshops');
            },
          ),
          ListTile(
            title: const Text('Panelová diskuse'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/paneldiscussion');
            },
          ),
          ListTile(
            title: const Text('Networking'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/networking');
            },
          ),
          ListTile(
            title: const Text('Naši řečníci'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/speakers');
            },
          ),
          ListTile(
            title: const Text('Naši partneři'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/partners');
            },
          ),
          ListTile(
            title: const Text('O AIESEC'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/aiesec');
            },
          ),
          ListTile(
            title: const Text('Zpětná vazba'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/feedback');
            },
          ),
        ],
      ),
    );
  }
}
