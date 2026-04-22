import 'package:flutter/material.dart';
import 'ColorDetailScreen.dart';
class ColorGallery extends StatefulWidget {
  const ColorGallery({super.key});

  @override
  State<ColorGallery> createState() => _ColorGalleryState();
}

class _ColorGalleryState extends State<ColorGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search Colors",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 221, 221, 221),
            
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
           return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColorDetailScreen(selectedColor: Colors.primaries[index % Colors.primaries.length])),
                );
              },
              child: Container(
                color: Colors.primaries[index % Colors.primaries.length],
              ),
            );
        },  
      ),
    );
  }
}