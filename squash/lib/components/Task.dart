import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Task extends StatefulWidget {
  Task({required this.text});

  final String text;
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.red, width: 8),
            gradient: new LinearGradient(
                stops: [0.025, 0.025], colors: [Colors.red, Colors.white]),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)),
        height: 50,
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.fromLTRB(24, 8, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(MdiIcons.laptop)),
                    Text(widget.text),
                  ],
                ),
                Checkbox(
                  onChanged: (value) {
                    print(value);
                  },
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.all(Colors.grey[200]),
                  value: true,
                )
              ],
            )));
  }
}
