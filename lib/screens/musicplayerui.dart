import 'package:flutter/material.dart';

class Musicplayerui extends StatelessWidget {
  const Musicplayerui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF9F4897), //Spotify Pink
              Color(0xFF191414), //Deep dark base
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(20.0),
              ),
              Padding(
                padding: EdgeInsets.all(20.0)),
              
            ],
          ),
        ),
      ),
    );
  }
}