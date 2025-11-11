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
          child: Card(
            color: Color(0xFF2a2c31),
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      borderRadius: BorderRadius.circular(20),),
                    ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Song Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                ],
              ),),
          ),
        ),
      ),
    );
  }
}