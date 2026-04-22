import 'package:flutter/material.dart';
import 'main.dart';

class Settings extends StatelessWidget {
  final String name;
  late final String email;

  Settings({super.key, required this.name}) {
    email = "$name@gmail.com";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            "Settings",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRyI7zEzCnvbH_P2NN-76kP80OuObvrb5u-odZdPMwvRi9W21HN",
              ),
            ),
            Text(
              "Welcome to the settings!",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true, 
              itemCount: 1, 
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("$name"),
                  subtitle: Text("$email"),
                );
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Login()), (route) => false);
            }, child: Text("Logout", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
