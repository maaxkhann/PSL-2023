import 'package:flutter/material.dart';
import 'package:psl_2023/models/team_model.dart';
import 'package:psl_2023/screens/utility/app_colors.dart';

class TeamWidget extends StatelessWidget {
  final TeamModel team;

  const TeamWidget({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 120,
      decoration: BoxDecoration(
          color: AppColors.pinkColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5),
            height: 85,
            width: 105,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                team.flag,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                team.fullName,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                team.captain,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          CircleAvatar(
            radius: 33,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(33),
              child: Image.asset(team.captainImage,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
