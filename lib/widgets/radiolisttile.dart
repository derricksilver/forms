import 'package:flutter/material.dart';

enum Tnttype { Delivery, Pickup }

class RT extends StatelessWidget {
  RT({
    Key? key,
    required this.sheep,
    required this.cow,
    required this.goat,
    required this.fish,
  }) : super(key: key);
  late String sheep;
  Tnttype cow;
  Tnttype? goat;
  late Function(Tnttype?)? fish;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<Tnttype>(
        activeColor: Colors.brown.shade700,
        contentPadding: EdgeInsets.all(0),
        tileColor: Colors.brown.shade100,
        dense: true,
        title: Text(sheep),
        value: cow,
        groupValue: goat,
        onChanged: fish);
  }
}
