class Contact{
 int num ;
  int id;
  String name;
  DateTime dateTime;
  int text;

  Contact({
    required this.id,
    required this.dateTime,
    required this.name,
    required this.num,
    required this.text,

});
}

List<Contact> SampleContact =[
  Contact(
    id: 0,
      dateTime: DateTime.now(),
      name: "Irshad",
      num: 9334071381,
    text:  500,
  ),
  // Contact(
  //   id: 1,
  //   dateTime: DateTime.now(),
  //   name: "Amjad",
  //   num: 7260004480,
  //   text: 500,
  // ),
  // Contact(
  //   id: 2,
  //   dateTime: DateTime.now(),
  //   name: "Sahi Rahman",
  //   num: 9525032602,
  //   text: 500,
  // ),
  // Contact(
  //   id: 3,
  //   dateTime: DateTime.now(),
  //   name: "Saif Ali",
  //   num: 7321079853,
  //   text: 500,
  // ),
  // Contact(
  //   id: 4,
  //   dateTime: DateTime.now(),
  //   name: "Bhai",
  //   num: 8340002477,
  //   text: 500,
  // ),
  // Contact(
  //   id: 5,
  //   dateTime: DateTime.now(),
  //   name: "Butterfly",
  //   num: 7061826973,
  //   text: 500,
  // ),
];