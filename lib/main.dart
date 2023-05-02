import 'package:flutter/material.dart';
import 'package:note11_making_forms_using_textfield/pages/forms.dart';

void main() {
  runApp(const Fool());
}

class Fool extends StatelessWidget {
  const Fool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyForm(),
    );
  }
}
