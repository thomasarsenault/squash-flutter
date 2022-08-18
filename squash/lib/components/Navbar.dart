import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Navbar extends StatefulWidget {
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 25),
        child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: IconButton(
                        icon: const Icon(MdiIcons.dotsGrid),
                        onPressed: () {
                          print('Click');
                        })),
                Expanded(
                    flex: 4,
                    child: Align(
                        alignment: Alignment.center,
                        child: const Text('Wednesday, August 17th'))),
                Expanded(
                    child: IconButton(
                        icon: const Icon(Icons.account_circle_outlined),
                        onPressed: () {
                          print('Click');
                        })),
              ],
            ),
            height: 50,
            width: double.infinity,
            color: Colors.white));
  }
}
