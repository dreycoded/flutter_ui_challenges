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
              Color(0xFF1DB954), //Spotify green
              Color(0xFF191414), //Deep dark base
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),
      ),
    );
  }
}