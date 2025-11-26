import 'package:assignment3/common/my_snackbar.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:assignment3/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  final gap = SizedBox(height: 10);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithmetic Screen")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            MyTextformfield(
              hintText: 'e.g 12',
              controller: firstController,
              labelText: 'enter first number',
              errorMessage: 'Please enter first number',
            ),
            gap,

            MyTextformfield(
              hintText: 'e.g 10',
              controller: secondController,
              labelText: 'enter second number',
              errorMessage: 'Please enter second number',
            ),
            gap,

            MyButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  int firstNo = int.parse(firstController.text);
                  int secondNo = int.parse(secondController.text);
                  int sum = firstNo + secondNo;
                  showMySnackBar(context: context, message: 'Sum is $sum');
                }
              },
              text: 'Add',
            ),

            gap,
            MyButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  int firstNo = int.parse(firstController.text);
                  int secondNo = int.parse(secondController.text);
                  int difference = firstNo - secondNo;
                  showMySnackBar(
                    context: context,
                    message: 'Difference is $difference',
                  );
                }
              },
              text: 'Subtract',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
