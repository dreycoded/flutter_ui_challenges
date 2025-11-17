import 'package:flutter/material.dart';

class Weatherinfoui extends StatelessWidget {
  const Weatherinfoui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdce9f4),
      body: Center(
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
                vertical: 40.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              
                  // Country
                  Center(
                    child: Text('Berlin',
                    style: TextStyle(
                      fontSize: 48,
                      color: Color(0xFF112d45),
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
              
              
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              
                      //Weather Image
                      Image.asset('assets/sunny.png',
                      width: 100.0,
                      ),
              
                      //Weather temperature
                      SizedBox(
                        width: 30.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('24°',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFF112d45),
                            fontWeight:FontWeight.bold,
                          ),
                          ),
            
            
                          //Weather
                          Text('Sunny',
                  style: TextStyle(
                    color: Color(0xFF112d45),
                  ),),
                        ],
                      ),
                    ],
                  ),
              
                  
                  
              
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
              
                      //Precise tempersture
                      SizedBox(
                        child: Text('26°/18°',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF112d45),
                          fontWeight:FontWeight.w400,
                        ),),
                      ),
              
                       SizedBox(
                    width: 80.0,
                  ),
              
              
                  //Temperature percentage
                  Text('47%',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF112d45),
                        fontWeight:FontWeight.w400,
                      ),),
                    ],
                  ),
            
                  SizedBox(
                    height: 8,
                  ),
              
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
              
                    //Temperature Indication
                    SizedBox(
                      width: 120,
                      child: Text('High',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF112d45),
                          fontWeight:FontWeight.w400,
                        ),),
                    ),
              
                       SizedBox(
                    width: 30.0,
                  ),
              
                      //Temperature speed
                      Text('11km/h',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF112d45),
                        fontWeight:FontWeight.w400,
                      ),),
                  ],),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}