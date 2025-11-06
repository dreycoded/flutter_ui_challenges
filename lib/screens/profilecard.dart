  import 'package:flutter/material.dart';

  class Profilecard extends StatelessWidget {
    const Profilecard({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //profile Image
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/Dami.jpg'),
                  ),

                  const SizedBox(height: 15),
                  //Name
                  Text('Damilare Adesina',
                  style: TextStyle(
                     fontSize: 22,
                     fontWeight: FontWeight.bold, 
                  ),),

                  const SizedBox(height: 5),

                  Text('Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),),

                  const SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileStats(count: '120k', label: 'Followers'),
                      ProfileStats(count: '568', label: 'Following'),
                      ProfileStats(count: '32', label: 'Posts')
                      ]),

                      SizedBox(height: 20.0),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        ),
                       child: Text('Follow'),),
          ]),
        ),
      )));
    }
  }

  class ProfileStats extends StatelessWidget {
    final String count;
    final String label;

  const ProfileStats({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
        Text(label,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),),
      ],
    );
  }
}