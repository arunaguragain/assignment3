import 'package:assignment3/common/my_snackbar.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:assignment3/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController firstController = TextEditingController();

    final gap = SizedBox(height: 10);
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Palindrome Screen')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MyTextformfield(
                hintText: 'e.g 515',
                controller: firstController,
                labelText: 'enter number to check',
                errorMessage: 'Please enter number',
              ),

              gap,
              MyButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    int number = int.parse(firstController.text);
                    String result = palindrome(number: number);
                    showMySnackBar(
                      context: context,
                      message: ' $result',
                      color: Colors.redAccent,
                    );
                  }
                },
                text: 'Check',
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int reverse({required int number}) {
  int revNumber = 0;
  while (number > 0) {
    revNumber = revNumber * 10 + number % 10;
    number = (number / 10).toInt();
  }
  return revNumber;
}

String palindrome({required int number}) {
  int revNumber = reverse(number: number);
  if (revNumber == number) {
    return "$number is palindrom number";
  } else {
    return "$number is not palindrome number ";
  }
}
