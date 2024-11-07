import 'package:flutter/material.dart';

class Profilview extends StatelessWidget {
  const Profilview({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center (
      child :Column(
        children:[CircleAvatar (
          radius: 150,
          backgroundImage: AssetImage("images/vibrent_8.png"),
          ),
        SizedBox(height: 30),
Text("Name: John Doe", style: Theme.of(context).textTheme.displayLarge),
SizedBox(height: 30),
Text("Email: johndoe@example.com", style: Theme.of(context).textTheme.displaySmall),
SizedBox(height: 30),
ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
      side: BorderSide(color: Colors.green, width: 4),
    ),
    backgroundColor: Colors.amberAccent,
    foregroundColor: Colors.pink,
    textStyle: TextStyle(fontSize: 20),
    elevation: 20,
  ),
  onPressed: () {},
  child: Text("Edit Profile"),
)

         
          ],
      )
     );
  }
}