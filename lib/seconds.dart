void main() {
  int seconds = 100000000;

  void understandSeconds(s) {
    List<String> printList = [];
    int minutes = s ~/ 60 % 60;
    if (minutes == 0) {
      printList.insert(0, "less than a minute");
    } else if (minutes <= 1) {
      printList.insert(0, "one minute");
    } else {
      printList.insert(0, minutes.toString() + " minutes");
    }
    int hours = s ~/ 3600 % 24;
    if (hours <= 1 && hours > 0) {
      printList.insert(0, "1 hour, ");
    } else if (hours >= 2) {
      printList.insert(0, hours.toString() + " hours, ");
    }
    int days = s ~/ 86400 % 365;
    if (days <= 1 && days > 0) {
      printList.insert(0, "1 day, ");
    } else if (days >= 2) {
      printList.insert(0, days.toString() + " days, ");
    }
    int years = s ~/ 31536000;
    if (years <= 1 && years > 0) {
      printList.insert(0, years.toString() + " years, ");
    } else if (years >= 2) {
      printList.insert(0, years.toString() + " years, ");
    }
    printList.add('.');
    String printout = printList.join("");

    print(printout);
  }

  understandSeconds(seconds);
}
