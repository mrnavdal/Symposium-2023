import 'package:flutter/material.dart';

class SympoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SympoAppBar({super.key, required this.title});
  final String title;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
        actions: const [
          SizedBox(
            height: 25,
            child: Image(
              image: AssetImage('lib/assets/images/other/appbar_sympo_logo.png'),
            ),
          ),
          SizedBox(width: 30),
        ],
        title: Text(
          title,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
