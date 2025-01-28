import 'package:car_app/features/auth/home/fifth_screen.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key, });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Fourth Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FifthScreen(),
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
