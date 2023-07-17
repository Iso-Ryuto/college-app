import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 30,
            width: 30,
            child: Icon(LineIcons.instagram, color: Colors.grey),
          ),
          label: 'Instagram',
        ),
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: Icon(LineIcons.info, color: Colors.grey),
            ),
            label: 'お問い合わせ'),
      ],
    );
  }
}
