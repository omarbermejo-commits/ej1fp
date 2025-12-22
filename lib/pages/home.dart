import 'package:ej1fp/components/exportComponets.dart';
import 'package:ej1fp/exportpages.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          children: [
           TextCustom(contentText: 'TextCustoom'),
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed:(){
              Navigator.pop(context, LoginScreen());
            }, )
           
          ],
        ),
      )),
    );
  }
}