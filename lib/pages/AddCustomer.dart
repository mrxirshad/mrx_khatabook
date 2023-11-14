import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:khatabook/pages/HomePage.dart';
import 'package:khatabook/pages/SettingsPage.dart';
import 'package:khatabook/utils/GaveMoney.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  TextEditingController _willget = TextEditingController();
  List<youGave> yougave = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        // toolbarHeight: 150,
        title: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                      child: Text(
                    "I",
                    style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
                  )),
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ));
              },
              child: Row(
                children: [
                  const Column(
                    children: [
                      Text(
                        "Irshad",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "View Settings",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        "Customer",
                        style: TextStyle(fontSize: 12),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue.shade900,
        elevation: 0,
        actions: [
          Container(padding: EdgeInsets.all(20), child: Icon(Icons.call))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: _willget,
                  decoration:  InputDecoration(
                      hintText: "You will get",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(DataClass.availableBal.toString(),style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,

                        ),),
                      )),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.grey.shade200,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.report),
                Icon(Icons.currency_rupee),
                Icon(Icons.call),
                Icon(Icons.message),
                Icon(Icons.settings),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ENTRIES",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "YOU GAVE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "YOU GOT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: DataClass.SampleData.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(

                      title: RichText(
                        text: TextSpan(
                          text: "Bal. ₹${DataClass.SampleData[index].avlBalance}\n",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        "${DateFormat('d MMM EEE h:mm a').format(DataClass.SampleData[index].dateTime)}",
                        style: TextStyle(color: Colors.black),
                      ),
                      trailing: SizedBox(
                        width: 165,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                  child: Text(
                               " ${DataClass.SampleData[index].gave}",
                                style: TextStyle(
                                    color: Colors.red.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                              const SizedBox(
                                width: 50,
                              ),
                              Text(
                                "${DataClass.SampleData[index].got}",
                                style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      )),
                );
              },
            ),
          ),
          // Spacer(),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    String willGate = _willget.text.trim();
                    if(willGate.isNotEmpty){
                      setState(() {
                        DataClass.addEntery(DateTime.now(), DataClass.availableBal, 0, int.parse(_willget.text));

                      });
                    }
                  },
                  child: Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red.shade900),
                    child:  const Center(
                        child: Text(
                          "YOU GAVE ",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                InkWell(
                  onTap: (){
                    String willGate = _willget.text.trim();
                    if(willGate.isNotEmpty){
                      setState(() {
                        DataClass.addEntery(DateTime.now(), DataClass.availableBal, int.parse(_willget.text), 0);

                      });
                    }

                  },
                  child: Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green.shade900),
                    child: const Center(
                        child: Text(
                      "YOU GOT",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
