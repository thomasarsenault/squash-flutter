import 'package:flutter/material.dart';
import 'package:squash/components/Task.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Task(text: 'Make a cool flutter app')),
                Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Task(text: 'Make a cooler flutter app')),
              ]))
        ],
      )),
    );
  }
}
