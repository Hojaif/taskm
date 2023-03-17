import 'package:flutter/material.dart';
import 'package:taskmanager/Screen/baki_Screen/email_varification.dart';
import 'package:taskmanager/Screen/baki_Screen/sinup_screen.dart';
import '../../style/style.dart';
import '../Update Profile/Profile.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {

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
                     Text("Get Start With",style: Head1Text(Colors.black),),
                     SizedBox(height: 20,),
                     TextField(decoration: AppInputDecoration("Email"),),
                     SizedBox(height: 20,),
                     TextField(decoration: AppInputDecoration("Password"),),
                     SizedBox(height: 20,),
                     SizedBox(child: ElevatedButton(
                       style: AppButtonStyle(),
                       child: SuccessButtonChild("login"),
                       onPressed: (){Navigator.push(context,
                           MaterialPageRoute(builder: (context) => profile()));},
                     ),),
                     SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         TextButton(onPressed:(){Navigator.push(context,
                             MaterialPageRoute(builder: (context) =>email_varification()));}, child: Text("Forget Password",style:Head7Text(Colors.red) ,))
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Don't have account?",style: Head6Text(Colors.black),),
                         TextButton(onPressed: (){Navigator.push(context,
                             MaterialPageRoute(builder: (context) =>Singup_screen()));}, child: Text("Sing in",style:Head6Text(Colors.green),))
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