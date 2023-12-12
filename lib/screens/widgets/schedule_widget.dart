import 'package:flutter/material.dart';
import 'package:psl_2023/models/schedule_model.dart';
import 'package:psl_2023/screens/utility/app_colors.dart';
import 'package:psl_2023/screens/utility/schedule_date_time.dart';

class ScheduleWidget extends StatelessWidget {
  final ScheduleModel match;

  const ScheduleWidget({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: AppColors.lightPurpleColor,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          RoundFlag(flag: match.flagOne),
                          const SizedBox(width: 5,),
                          Text(match.teamOne, style: const TextStyle(color: Colors.white),)
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0 ),
                        child: Text('VS', style: TextStyle(color: Colors.white),),
                      ),

                      Row(
                        children: [
                          RoundFlag(flag: match.flagTwo),
                          const SizedBox(width: 5,),
                          Text(match.teamTwo, style: const TextStyle(color: Colors.white),)
                        ],
                      )

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: AppColors.pinkColor,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(ScheduleDateTime.getDate(match.date),
                      style: const TextStyle(color: Colors.white),),

                      Text(ScheduleDateTime.getTime(match.date),
                        style: const TextStyle(color: Colors.white),),

                      Text(ScheduleDateTime.getLocalTime(match.date),
                        style: const TextStyle(color: Colors.white),),

                      Text(match.venue,
                        style: const TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              )
            ],
          ),
          
          Image.asset('assets/images/player.png', width: 50, height: 50, color: Colors.white,)
        ],
      ),
    );
  }
}

class RoundFlag extends StatelessWidget {
  final String flag;

  const RoundFlag({Key? key, required this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2)),
      child: ClipOval(
        child: Image.asset('assets/flags/$flag', fit: BoxFit.cover,),
      ),
    );
  }
}
