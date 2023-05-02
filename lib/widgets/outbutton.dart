import 'package:flutter/material.dart';
import 'package:note11_making_forms_using_textfield/pages/details.dart';

class OLB extends StatelessWidget {
  const OLB({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(backgroundColor: Colors.brown.shade700),
        onPressed: onPress,
        child:
            const Text("Submit Form", style: TextStyle(color: Colors.white)));
  }
}
