import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

bool? strips = false;

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.brown.shade700,
      checkColor: Colors.white,
      title: const Text("ASAP??"),
      value: strips,
      onChanged: (value) {
        setState(() {
          strips = value;
        });
      },
    );
  }
}
