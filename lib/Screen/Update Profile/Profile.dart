
import 'package:flutter/material.dart';

import '../../Style/Style.dart';
import '../baki_Screen/log_in_screen.dart';
import '../baki_Screen/sinup_screen.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          ScreenBackground(context),
          Center(
            child: ElevatedButton(
              style: AppButtonStyle(),
              child: SuccessButtonChild("login"),
              onPressed: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Singup_screen())); },
            ),
          ),
        ],
      ) ,
    );
  }
}
