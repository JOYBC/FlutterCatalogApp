import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days=30;
    String name ="Joyjeet";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),

      body:Center(
        child: Container(
          child: Text("Welcome to home page"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
