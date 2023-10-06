import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/routes.dart';
void main(){
  runApp(my_app());

}
class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(


      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
      "/":(context)=>LoginPage(),

        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute :(context) =>LoginPage(),
      },
    );
  }
}


  

