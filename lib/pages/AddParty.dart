import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:khatabook/pages/HomePage.dart';
import 'package:khatabook/utils/contact.dart';


class AddParty extends StatefulWidget {
  const AddParty({super.key});

  @override
  State<AddParty> createState() => _AddPartyState();
}

class _AddPartyState extends State<AddParty> {
  int _value = 1;
  bool isAddress = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Party",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  labelText: "Party Name",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              IntlPhoneField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade900),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Who are they?",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                  ),
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const Text(
                    "Customer",
                    style: TextStyle(fontSize: 16),
                  ),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const Text(
                    "Supplier",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.blue.shade900,
                      size: 15,
                    ),
                    Text(
                      "ADD GSTIN & ADDRESS (OPTIONAL)",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (){

                  setState(() {
                    Navigator.pop(context);
                    String _name = _nameController.text.trim();
                    String number = _numberController.text.trim();
                   if(_name.isNotEmpty&& number.isNotEmpty){
                     SampleContact.add(
                         Contact(
                           id: SampleContact.length,
                           dateTime: DateTime.now(),
                           name: _name,
                           num: int.parse(_numberController.text).toInt(),
                           text: 500,
                         ));



                   }


                  });


                },
                child: Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                        "ADD CUSTOMER",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
