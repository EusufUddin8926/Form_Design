import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FormScreenActivity(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blueGrey));
  }
}

class FormScreenActivity extends StatelessWidget {
  FormScreenActivity({super.key});

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50),
    backgroundColor: Colors.blueGrey,
    elevation: 6,
  );

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Activity"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter name")),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                controller: ageController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter age")),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter address")),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ElevatedButton(
              onPressed: () {
                print("name: ${nameController.text} \nage: ${ageController.text} \naddress: ${addressController.text}");
              },
              child: Text("Submit"),
              style: buttonStyle,
            ),
          )
        ],
      ),
    );
  }
}
