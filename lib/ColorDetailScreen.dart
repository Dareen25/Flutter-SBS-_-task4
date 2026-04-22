import 'package:flutter/material.dart';

class ColorDetailScreen extends StatelessWidget {
  const ColorDetailScreen({super.key, required this.selectedColor});

  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      body: Center(
        child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ),
         onPressed: (){
          Navigator.pop(context);
        }
        , child: Text("Back to Gallery", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),
      )
      );
  }
}