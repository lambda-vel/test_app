import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/calculator.dart';
import 'package:test_app/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List menuItem = [
      // {'Option': '', 'Link': ''},
    {'Option': 'Profile', 'Link': 'ProfileScreen'},
    {'Option': 'Calculator', 'Link': 'Calculator',}
  ];

  void navigateToScreen(String newDestination) {
    String destination = 'HomeScreen';
    setState(() {
      destination = newDestination;
    });

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (destination == 'ProfileScreen') {
        return const ProfileScreen();
      } else if (destination == 'Calculator') {
        return const Calculator();
      } else {
        return const HomeScreen();
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          backgroundColor: Colors.green.withOpacity(0.75),
          elevation: 50.0,

          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: (){},
          ),

          actions: <Widget> [
            IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'Profile',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
          ),
          child: SingleChildScrollView(
            child: Wrap(
              children: <Widget>[
                ListView.builder(
                  itemCount: menuItem.length,
                  shrinkWrap: true,
                  // menuItem.map((menuItem) {
                  //   final String? Option = menuItem['Option'];
                  //   final String? Link = menuItem['Link'];
                  // }
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        child: Text(menuItem[index]['Option']),
                        onPressed: () => navigateToScreen(menuItem[index]['Link']),
                      ),
                    );
                  },
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
