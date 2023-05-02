import 'package:flutter/material.dart';
import 'package:note11_making_forms_using_textfield/pages/forms.dart';
import '../models/Product_model.dart';

class MyDetails extends StatefulWidget {
  MyDetails({Key? key, required this.productDetails}) : super(key: key);
  ProductDetails productDetails;

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Details"),
          centerTitle: true,
          backgroundColor: Colors.brown.shade700),
      body:
          ListView(itemExtent: 100, scrollDirection: Axis.vertical, children: [
        ListTile(
          leading: const Icon(
            Icons.label,
            color: Colors.brown,
          ),
          title: Column(
            children: [
              Text(prodname.text, style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold)),


            ],
          ),
        /*  subtitle: Text(prodtype.text, style: TextStyle(color: Colors.brown)),
          trailing: Text(prodsize.text, style: TextStyle(color: Colors.brown)),
          //onTap: () {},*/
          tileColor: Colors.white,

          /* MD(
            title: prodname.text,
            subtitle: prodtype.text,
            trailing: prodsize.text),*/
        )
      ]),
    );
  }
}
