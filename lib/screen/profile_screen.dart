// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {

  void _goToHome(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.green.withOpacity(0.75),
          elevation: 50.0,

          leading: BackButton(
            onPressed: (){
              _goToHome();
            },
          ),

          actions: <Widget> [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {},
            ),
          ],
        ),

        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          // padding: ,

          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.18),
          ),

          child: Center(
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,

              padding: const EdgeInsets.all(30),

              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,

              ),

              child: Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                //children: [

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Card(
                      elevation: 7,
                      shadowColor: Colors.blueGrey,

                      child: SizedBox(
                        width: 300,
                        height: 330,

                        child: Padding(
                          padding: const EdgeInsets.all(20.0),

                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('assets/profile.jpg'),
                                radius: 100,
                              ),

                              const SizedBox(
                                height: 17,
                              ),

                              Text(
                                'User\'s Name',
                                style: TextStyle(
                                  fontSize: 30,
                                  // color: Colors.green[500],
                                  color: Colors.green.withOpacity(0.80),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),



                            ],
                          ),
                        ),
                      ),

                    ),


                  ],
                ),

                // Row(
                //
                //   // mainAxisAlignment: MainAxisAlignment.start,
                //   // crossAxisAlignment: CrossAxisAlignment.start,
                //
                //   children: [
                //     // SizedBox(
                //     //   height: 20,
                //     // ),
                //     //
                //     // Column(
                //     //   mainAxisAlignment: MainAxisAlignment.center,
                //     //   crossAxisAlignment: CrossAxisAlignment.center,
                //     //
                //     //   children: [
                //     //     CircleAvatar(
                //     //       backgroundImage: AssetImage('assets/profile.jpg'),
                //     //       radius: 70,
                //     //     ),
                //     //   ],
                //     // ),
                //
                //
                //   ],
                // ),


              ),
            ),
          ),
        ),
      ),
    );
  }
}