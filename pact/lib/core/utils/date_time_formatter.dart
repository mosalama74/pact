import 'package:intl/intl.dart';
class DateTimeFormatter {

  static final formatter = DateFormat.MMMMd();

 static String formattedDate(DateTime date ) {
    return formatter.format(date);
  }


}