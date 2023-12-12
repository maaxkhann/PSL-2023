class ScheduleModel {
  late String date;
  late String teamOne;
  late String teamTwo;
  late String flagOne;
  late String flagTwo;
  late String venue;
  late String time;

  ScheduleModel({
    required this.date,
    required this.teamOne,
    required this.teamTwo,
    required this.flagOne,
    required this.flagTwo,
    required this.venue,
    required this.time
  });

 static ScheduleModel fromMap(Map<String, dynamic> map) {
    return ScheduleModel(
      date: map['date'],
      teamOne: map['teamOne'],
      teamTwo: map['teamTwo'],
      flagOne: map['flagOne'],
      flagTwo: map['flagTwo'],
      venue: map['venue'],
      time: map['time'],
    );
  }

}