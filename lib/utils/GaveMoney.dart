class youGave {
  late int avlBalance;
  late DateTime dateTime;
  late int gave;
  late int got;

  youGave({
    required this.dateTime,
    required this.avlBalance,
    required this.gave,
    required this.got,
  });
}

class DataClass {
  static int availableBal = 0;
  static addEntery(DateTime dateTime, int avlBalance, int got, int gave) {
    if (gave != 0) {
      availableBal = avlBalance + gave;
    } else {
      availableBal = avlBalance - got;
    }

    avlBalance = availableBal;
    SampleData.add(youGave(
        dateTime: dateTime, avlBalance: avlBalance, gave: gave, got: got));
  }

  static List<youGave> SampleData = [];
}
