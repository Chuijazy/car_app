import 'package:car_app/features/auth/home/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, });

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Center(
            child: Text ('Second Screen'),
          ),
           ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdScreen(),
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
