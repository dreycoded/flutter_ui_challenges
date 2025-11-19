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
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Meal Icon
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/images.jpg',
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                    ),
                    ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Meal Text
                        SizedBox(
                          child: Text('Homemade Lasagna',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          ), 
                        ),
                                
                        SizedBox(
                          height: 8.0,
                        ),
                                
                        //Ratings
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                            color: Colors.amber),
                            Icon(Icons.star,
                            color: Colors.amber),
                            Icon(Icons.star,
                            color: Colors.amber),
                            Icon(Icons.star,
                            color: Colors.amber),
                            Icon(Icons.star,
                            color: Colors.amber),
                                
                            SizedBox(
                              width: 8,
                            ),
                                
                            Text('(348)',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),),
                          ],
                        ),
                                
                        SizedBox(
                          height: 16,
                        ),
                                
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.access_time,
                            size: 22,
                            color: Colors.grey[700],
                            ),
                                
                            SizedBox(
                              width: 6,
                            ),
                                
                            Text('1h 20min',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                        
                            Icon(Icons.restaurant,
                            size: 22,
                            color: Colors.grey[700],
                            ),
                                
                            SizedBox(
                              width: 10.0,
                            ),
                                
                            Text('Easy',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700]
                            ),
                            ),
                                
                            SizedBox(
                              width: 20.0,
                            ),
                                
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.favorite_border,
                              size: 22,
                              color: Colors.grey[600],)),
                            
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