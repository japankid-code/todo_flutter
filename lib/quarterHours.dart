void main() {
  print(listOfQuarterHours().join('\n'));
}

List<String> listOfQuarterHours() {
  List<String> quarters = ['00', '15', '30', '45'];
  List<String> returnList = [];
  String temp = "";
  int hours;

  for (int i = 0; i < 24 * 4; i++) {
    hours = i ~/ 4;
    if (hours > 0) {
      temp = '${hours > 9 ? hours : '0$hours'}:';
    } else {
      temp = '00:';
    }
    temp += quarters[i % 4];
    returnList.add(temp);
  }
  return returnList;
}
