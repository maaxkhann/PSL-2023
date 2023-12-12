import 'package:intl/intl.dart';

class ScheduleDateTime {

 static String getDate(String gmt) {
    List<String> date = gmt.split(' ');
    return date[0];
  }

 static String getTime(String gmt) {
    List<String> date = gmt.split(' ');
    return '${date[1]} ${date[2]} GMT';
  }

 static String getLocalTime(String gmt) {
    DateFormat dateFormat = DateFormat('dd-MMM-yyyy hh:mm a');
    DateTime dateTime = dateFormat.parse(gmt, true);
    DateTime localDateTime = dateTime.toLocal();

    String time = DateFormat('hh:mm a').format(localDateTime);
    return '$time Local';
  }
}