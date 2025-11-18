import 'package:flutter/material.dart';

class Recipecard extends StatelessWidget {
  const Recipecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdbe6f2),
      body: Center(
        child: Card(
          color: Color(0xFFfffeff),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Meal Icon
                  Image.asset('assets/images.jpg'),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        //Meal Text
                        SizedBox(
                          child: Text('Homemade Lasagna',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ), 
                        ),
                                
                        SizedBox(
                          height: 10.0,
                        ),
                                
                        //Ratings
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                            color: Colors.yellow),
                            Icon(Icons.star,
                            color: Colors.yellow),
                            Icon(Icons.star,
                            color: Colors.yellow),
                            Icon(Icons.star,
                            color: Colors.yellow),
                            Icon(Icons.star,
                            color: Colors.yellow),
                                
                            SizedBox(
                              width: 10,
                            ),
                                
                            Text('(348)'),
                          ],
                        ),
                                
                        SizedBox(
                          height: 20,
                        ),
                                
                        Row(
                          children: [
                            Icon(Icons.timer),
                                
                            SizedBox(
                              width: 10.0,
                            ),
                                
                            Text('1h 20min'),
                            SizedBox(
                              width: 10.0,
                            ),
                        
                            Icon(Icons.restaurant),
                                
                            SizedBox(
                              width: 10.0,
                            ),
                                
                            Text('Easy'),
                                
                            SizedBox(
                              width: 10.0,
                            ),
                                
                            Icon(Icons.favorite),
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}