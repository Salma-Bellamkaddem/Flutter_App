import 'package:flutter/material.dart';
import 'package:tp1/screens/cards.view.dart';
import 'package:tp1/screens/home.view.dart';
import 'package:tp1/screens/login.view.dart';
import 'package:tp1/screens/profile.view.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;

  List<Widget> pages = [Homeview(), Loginview(), Cardsview(), Profilview()];

  void changePage(int selectIndex) {
    setState((){ 
      currentIndex=selectIndex;
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Multitask Application",
          style: Theme.of(context).textTheme.displayLarge,
          ),
      backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0), 
          child: IndexedStack(
            index: currentIndex,
            children: pages,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          
          
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "Cards"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          onTap: changePage,)
    );
  }
}