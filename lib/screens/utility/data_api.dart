import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:psl_2023/models/history_model.dart';
import 'package:psl_2023/models/schedule_model.dart';
import 'package:psl_2023/models/team_model.dart';
import 'package:psl_2023/models/venue_model.dart';

class DataApi {

  static Future<List<ScheduleModel>> getAllMatches(BuildContext context) async {
    var matches = <ScheduleModel>[];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl.json');
    var jsonData = json.decode(data);
    var jsonSchedule = jsonData['schedule'];
    print(jsonSchedule);

    for(var jsonMatch in jsonSchedule) {
      ScheduleModel match = ScheduleModel.fromMap(jsonMatch);
      matches.add(match);
    }

    return matches;
}

  static Future<List<VenueModel>> getAllVenues(BuildContext context) async {
    var venue = <VenueModel>[];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl.json');
    var jsonData = json.decode(data);
    var jsonVenue = jsonData['venues'];
    print(jsonVenue);

    for(var jsonVen in jsonVenue) {
      VenueModel venueModel = VenueModel.fromMap(jsonVen);
      venue.add(venueModel);
    }

    return venue;
  }


  static Future<List<TeamModel>> getAllTeams(BuildContext context) async {
    var team =  <TeamModel>[];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl.json');
    var jsonData = json.decode(data);
    var jsonTeam = jsonData['teams'];

    for(var jsonT in jsonTeam) {
      TeamModel teamModel = TeamModel.fromMap(jsonT);
      team.add(teamModel);
    }

    return team;
  }


  static Future<List<HistoryModel>> getAllHistory(BuildContext context) async {
    var history = <HistoryModel>[];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl.json');
    var jsonData = json.decode(data);
    var historyData = jsonData['history'];

    for(var histData in historyData) {
      HistoryModel historyModel = HistoryModel.fromMap(histData);
      history.add(historyModel);
    }

    return history;
  }

}