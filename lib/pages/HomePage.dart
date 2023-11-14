import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:khatabook/pages/AddCustomer.dart';
import 'package:khatabook/pages/AddParty.dart';
import 'package:khatabook/pages/CustomerPage.dart';
import 'package:khatabook/utils/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
List<Contact> filterContact = [];

class _HomePageState extends State<HomePage> {
  // void onSearchContact(String SearchContact){
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MrxIrshad",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        elevation: 0,
      ),

      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue.shade900,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("₹ 0",style: TextStyle(fontSize: 18,color:Colors.green.shade900,fontWeight: FontWeight.bold  ),),
                              Text("You will give",style: TextStyle(color: Colors.grey))
                            ],
                          ),
                          // Text("₹ 0",style: TextStyle(fontSize: 18,color:Colors.green.shade900,fontWeight: FontWeight.bold  ),),
                          Text("|",style: TextStyle(fontSize: 18,color:Colors.black45,fontWeight: FontWeight.bold  ),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("₹ 0",style: TextStyle(fontSize: 18,color:Colors.red.shade900,fontWeight: FontWeight.bold ),),
                              Text("You will get",style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Text("|",style: TextStyle(fontSize: 18,color:Colors.black54 ,fontWeight: FontWeight.bold ),),
                          Text("View Report",style: TextStyle(fontSize: 18,color:Colors.blue.shade900,fontWeight: FontWeight.bold ),)
                        ],
                    ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search Contact",
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search,color: Colors.black,),
                fillColor: Colors.grey.shade200,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.transparent
                  )
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCustomer(),));
              },
              child: ListView.builder(
                itemCount: SampleContact.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                            text: "${SampleContact[index].name}\n",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(
                                  text: "${SampleContact[index].num}",
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                  ))
                            ]
                        ),
                      ),
                      subtitle:Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "${DateFormat('d MMM EEE h:mm a').format(SampleContact[index].dateTime)}",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      trailing: Text(
                        "${SampleContact[index].text}",
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton.extended(
        label: Text("ADD CUSTOMER"),
        icon: Icon(Icons.person_add_sharp),
        // foregroundColor: Colors.red.shade900,
        backgroundColor: Colors.red.shade900,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddParty(),));
        },
      ),
    );
  }
}
