import 'package:assignment3/common/my_snackbar.dart';
import 'package:assignment3/widgets/my_button.dart';
import 'package:assignment3/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController firstController = TextEditingController();

  final gap = SizedBox(height: 10);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of circle')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MyTextformfield(
                hintText: 'e.g 5',
                controller: firstController,
                labelText: 'enter radius',
                errorMessage: 'Please enter radius ',
              ),

              gap,
              MyButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    int radius = int.parse(firstController.text);
                    double area = 3.14 * radius * radius;
                    showMySnackBar(
                      context: context,
                      message: 'Area of circle  is $area',
                      color: Colors.brown,
                    );
                  }
                },
                text: 'Calculate',
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
