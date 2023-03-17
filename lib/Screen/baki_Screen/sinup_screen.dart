
import 'package:flutter/material.dart';
import 'package:taskmanager/Screen/baki_Screen/log_in_screen.dart';

import '../../Style/Style.dart';

class Singup_screen extends StatefulWidget {
  const Singup_screen({Key? key}) : super(key: key);

  @override
  State<Singup_screen> createState() => _Singup_screenState();
}

class _Singup_screenState extends State<Singup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Center(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Join Now",style: Head1Text(Colors.black),),
                      SizedBox(height: 20,),
                      TextField(decoration: AppInputDecoration("Email"),),
                      SizedBox(height: 20,),
                      TextField(decoration: AppInputDecoration("Fast Name"),),
                      SizedBox(height: 20,),
                      TextField(decoration: AppInputDecoration("Last Name"),),
                      SizedBox(height: 20,),
                      TextField(decoration: AppInputDecoration("Mobile"),),
                      SizedBox(height: 20,),
                      TextField(decoration: AppInputDecoration("Password"),),
                      SizedBox(height: 20,),
                      Center(child:ElevatedButton(
                        style: AppButtonStyle(),
                        child: SuccessButtonChild("sing up"),
                        onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>login_screen()),
                        );},
                      ) ,
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                    ],
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Don't have account?",style: Head6Text(Colors.black),),
                          TextButton(onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>Singup_screen()));}, child: Text("login",style:Head6Text(Colors.green),))
                        ],
                      ),
                    ],

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
