import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screen/baki_Screen/log_in_screen.dart';
import 'Screen/baki_Screen/sinup_screen.dart';

void main(){
  runApp(taskproject());
}


class taskproject extends StatefulWidget {
  const taskproject({Key? key}) : super(key: key);

  @override
  State<taskproject> createState() => _taskprojectState();
}

class _taskprojectState extends State<taskproject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Project",
      home: Singup_screen(),
    );
  }
}
