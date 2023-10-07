import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: FormScreenActivity(),
     debugShowCheckedModeBanner: false,
     theme: ThemeData(primarySwatch: Colors.blueGrey)
   );
  }

}

class FormScreenActivity extends StatelessWidget{
  const FormScreenActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Activity"),
      ),
    );
  }

}