import 'package:flutter/material.dart';
import 'package:note11_making_forms_using_textfield/models/Product_model.dart';
import 'package:note11_making_forms_using_textfield/pages/details.dart';
import 'package:note11_making_forms_using_textfield/widgets/checklisttile.dart';
import 'package:note11_making_forms_using_textfield/widgets/outbutton.dart';
import 'package:note11_making_forms_using_textfield/widgets/radiolisttile.dart';
import 'package:note11_making_forms_using_textfield/widgets/textform.dart';

enum Example { hmmm, haaa }

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

var prodname = TextEditingController();
var prodtype = TextEditingController();
var prodsize = TextEditingController();
var prodcolor = TextEditingController();
Tnttype? _tnttype;
String _selectedItem = "Origi";
final _formkey = GlobalKey<FormState>();
List<String> _items = [
  "Origi",
  "Fugazi",
  "Fose",
];

@override
void dispose() {
  prodname.dispose();
  prodtype.dispose();
  prodsize.dispose();
  prodcolor.dispose();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forms"),
          centerTitle: true,
          backgroundColor: Colors.brown.shade700,
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(children: [
              TFF(
                labeltext: "name",
                controller: prodname,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: TFF(
                      labeltext: "type",
                      controller: prodtype,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TFF(
                    labeltext: "size",
                    controller: prodsize,
                  ))
                ],
              ),
              const SizedBox(height: 25),
              TFF(labeltext: "color", controller: prodcolor),
              const SizedBox(height: 25),
              const Check(),
              const SizedBox(height: 25),
              DDBFF(),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: RT(
                      sheep: "Delivery",
                      cow: Tnttype.Delivery,
                      goat: _tnttype,
                      fish: (value) {
                        setState(() {
                          _tnttype = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: RT(
                        sheep: "Pickup",
                        cow: Tnttype.Pickup,
                        goat: _tnttype,
                        fish: (value) {
                          setState(() {
                            _tnttype = value;
                          });
                        }),
                  )
                ],
              ),
              const SizedBox(height: 25),
              OLB(
                onPress: () {
                  if (_formkey.currentState!.validate()) {
                    ProductDetails productDetails = ProductDetails();
                    productDetails.productname = prodname.text;
                    productDetails.producttype = prodtype.text;
                    productDetails.productsize = prodsize.text;
                    productDetails.productcolor = prodcolor.text;
                    productDetails.productgrade = _selectedItem;
                    productDetails.check = strips!;
                    productDetails.transportation = _tnttype!;
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyDetails(productDetails: productDetails);
                      },
                    ));
                  }
                },
              )
            ]),
          ),
        ));
  }

  DropdownButtonFormField<String> DDBFF() {
    return DropdownButtonFormField(
      value: _selectedItem,
      onChanged: (newValue) {
        setState(() {
          _selectedItem = newValue!;
        });
      },
      items: _items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      icon: Icon(
        Icons.arrow_drop_down_circle,
        color: Colors.brown.shade700,
      ),
      decoration: InputDecoration(
          focusColor: Colors.brown,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.brown.shade700)),
          labelText: 'Select a Grade',
          labelStyle: TextStyle(color: Colors.brown.shade700),
          prefixIcon: Icon(
            Icons.grade,
            color: Colors.brown.shade700,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.brown.shade700))),
      dropdownColor: Colors.brown.shade100,
    );
  }
}
