import 'package:car_app/features/auth/home/fourth_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Center(
            child: Text ('Third Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FourthScreen(),
                ),
              );
            },
            child: Text('Go'),
          ),
        ],
      ),
    );
  }
}

