import 'package:flutter/material.dart';

class Weatherinfoui extends StatelessWidget {
  const Weatherinfoui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //dce9f4
      backgroundColor: Color(0xFFdce9f4),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Berlin',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}