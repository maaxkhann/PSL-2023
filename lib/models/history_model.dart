class HistoryModel {

  late String winner;
  late String runnerUp;
  late String winnerFlag;
  late String runnerUpFlag;
  late String winnerCaptain;
  late String runnerUpCaptain;
  late String winnerScore;
  late String runnerUpScore;
  late String year;

  HistoryModel({
    required this.winner,
    required this.runnerUp,
    required this.winnerFlag,
    required this.runnerUpFlag,
    required this.winnerCaptain,
    required this.runnerUpCaptain,
    required this.winnerScore,
    required this.runnerUpScore,
    required this.year
  });

  static HistoryModel fromMap(Map<String, dynamic> map) {
    return HistoryModel(
      winner: map['winner'],
      runnerUp: map['runnerUp'],
      winnerFlag: map['winnerFlag'],
      runnerUpFlag: map['runnerUpFlag'],
      winnerCaptain: map['winnerCaptain'],
      runnerUpCaptain: map['runnerUpCaptain'],
      winnerScore: map['winnerScore'],
      runnerUpScore: map['runnerUpScore'],
      year: map['year'],
    );
  }
}