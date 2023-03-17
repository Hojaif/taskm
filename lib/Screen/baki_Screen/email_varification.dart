import 'package:flutter/material.dart';

import '../../Style/Style.dart';

class email_varification extends StatefulWidget {
  const email_varification({Key? key}) : super(key: key);

  @override
  State<email_varification> createState() => _email_varificationState();
}

class _email_varificationState extends State<email_varification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Email Address",style: Head1Text(Colors.black),),
                  Text("A 6 digit verification pin will send to your email address",style: Head6Text(Colors.black),),
                  SizedBox(height: 20,),
                  TextField(decoration: AppInputDecoration("Enter Your Email"),),
                  SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(
                      style: AppButtonStyle(),
                      child: SuccessButtonChild("Email"),
                      onPressed: (){},
                    ),
                  ),
                ],

              ),
            ),
          ),

        ],
      ),
    );
  }
}
