// import 'package:flutter/material.dart';
// import 'package:khatabook/pages/AddParty.dart';
//
// class CustomerPage extends StatefulWidget {
//   const CustomerPage({super.key});
//
//   @override
//   State<CustomerPage> createState() => _CustomerPageState();
// }
//
// class _CustomerPageState extends State<CustomerPage> {
//
//   TextEditingController _textEditingController = TextEditingController();
//   bool isAddCustomer = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           toolbarHeight: 0.1,
//         ),
//       backgroundColor: Colors.grey.shade200,
//       body: Form(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextFormField(
//                 // keyboardType: TextInputType.number,
//                 controller: _textEditingController,
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.blue.shade900,
//                     ),borderRadius: BorderRadius.circular(21)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.blue.shade900,
//                       ),borderRadius: BorderRadius.circular(21)
//                   ),
//                   hintText: "Customer Name",
//                 ),
//               ),
//               const SizedBox(height: 30,),
//            InkWell(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>AddParty(),));
//               },
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(25)
//                       ),
//                       child: Icon(Icons.add,color: Colors.blue.shade900,),
//                     ),
//                     const SizedBox(width: 10,),
//                     Text("Add Customer",style: TextStyle(fontSize: 17,color: Colors.blue.shade900),
//                     ),
//                     const SizedBox(width: 150,),
//                     Icon(Icons.arrow_forward_ios,size: 17,color: Colors.blue.shade900,)
//
//                   ],
//                 ),
//             ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
