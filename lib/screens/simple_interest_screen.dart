import 'package:assignment3/common/my_snackbar.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:assignment3/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController firstController = TextEditingController();
    final TextEditingController secondController = TextEditingController();
    final TextEditingController thirdController = TextEditingController();

    final gap = SizedBox(height: 10);
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MyTextformfield(
                hintText: 'e.g 11200',
                controller: firstController,
                labelText: 'enter principal',
                errorMessage: 'Please enter principal',
              ),
              gap,

              MyTextformfield(
                hintText: 'e.g 2',
                controller: secondController,
                labelText: 'enter time in year',
                errorMessage: 'Please enter time ',
              ),
              gap,

              MyTextformfield(
                hintText: 'e.g 5',
                controller: thirdController,
                labelText: 'enter rate in percent',
                errorMessage: 'Please enter rate ',
              ),

              gap,
              MyButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    int principal = int.parse(firstController.text);
                    int time = int.parse(secondController.text);
                    int rate = int.parse(thirdController.text);
                    double simpleInterest = (principal * time * rate) / 100;
                    showMySnackBar(
                      context: context,
                      message: 'Simple Interest is $simpleInterest',
                      color: Colors.blue,
                    );
                  }
                },
                text: 'Calculate',
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
