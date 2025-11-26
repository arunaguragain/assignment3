import 'package:assignment3/screens/area_of_circle_screen.dart';
import 'package:assignment3/screens/arithmetic_screen.dart';
import 'package:assignment3/screens/palindrome_screen.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gap = SizedBox(height: 10);
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Column(
        children: [
          MyButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const ArithmeticScreen(),
                ),
              );
            },
            text: 'Simple Interest',
            color: Colors.green,
          ),
          gap,

          MyButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const ArithmeticScreen(),
                ),
              );
            },
            text: 'Arithmetic',
            color: Colors.blue,
          ),
          gap,

          MyButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const AreaOfCircleScreen(),
                ),
              );
            },
            text: 'Area of circle',
            color: Colors.grey,
          ),
          gap,

          MyButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const PalindromeScreen(),
                ),
              );
            },
            text: 'Palindrome',
          ),
        ],
      ),
    );
  }
}
