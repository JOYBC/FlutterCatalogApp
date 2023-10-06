import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeBtn=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assests/images/login_img.png",fit: BoxFit.cover,height: 300,),
          SizedBox(height: 20.0),
         Text("WELCOME $name",style: TextStyle(fontSize:28,fontWeight:FontWeight.bold,)),
         Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                 child :Column(children: [
           TextFormField(
             decoration: InputDecoration(
                 hintText: "Enter Username",
                 labelText: "UserName",

             ),
             onChanged: (value){
               name=value;
               setState(() {

               });
             }

           ),
           TextFormField(
             obscureText: true,
             decoration: InputDecoration(
                 hintText: "Enter Password",
                 labelText: "Password"
             ),
           ),
                   SizedBox(height: 40.0),
                   InkWell(

                     onTap: ()async {setState(() {
                       changeBtn=true;
                     });
                       await Future.delayed(Duration (seconds: 1));
                     Navigator.pushNamed(context, MyRoutes.homeRoute);},
                     child: AnimatedContainer(
                       duration: Duration(seconds: 1),
                       height: 50,
                       width:changeBtn?100: 150,
                       alignment: Alignment.center,
                       child: changeBtn?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                       decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(changeBtn?50:8)),

                     ),
                   )
                   //ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.homeRoute);},
                     //child: Text("Login"),
                     //style: TextButton.styleFrom(minimumSize: Size(150, 40)),)
         ],),
         ),
        ],
      ),

    ));
  }
}
