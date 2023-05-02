

import 'package:flutter/material.dart';

class TFF extends StatelessWidget {
  TFF({Key? key, required this.labeltext, required this.controller}) : super(key: key);
  late String labeltext;
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null|| value.isEmpty){
          return "Jon, we the developers we fool wey we put this for here. Idiot!!!";
        }
        else null;
      },
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          prefixIcon: Icon(
            Icons.verified,
            color: Colors.brown.shade700,
          ),
          labelText: labeltext,
          labelStyle: TextStyle(color: Colors.brown.shade700),
         border: const OutlineInputBorder(
             borderSide: BorderSide(color: Colors.green)
         )
      )
    );
  }
}
