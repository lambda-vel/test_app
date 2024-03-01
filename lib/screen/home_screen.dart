import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
