class TeamModel {
  late String fullName;
  late String shortName;
  late String captain;
  late String flag;
  late String captainImage;

  TeamModel({
    required this.fullName,
    required this.shortName,
    required this.captain,
    required this.flag,
    required this.captainImage
  });

  static TeamModel fromMap(Map<String, dynamic> map) {
    return TeamModel(
      fullName: map['fullName'],
      shortName: map['shortName'],
      captain: map['captain'],
      flag: map['flag'],
      captainImage: map['captainImage'],
    );
  }
}
