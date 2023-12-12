import 'package:flutter/material.dart';
import 'package:psl_2023/models/history_model.dart';
import 'package:psl_2023/screens/utility/app_colors.dart';

class HistoryWidget extends StatelessWidget {
  final HistoryModel history;

  const HistoryWidget({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Row(
          children: [
            CountryWidget(name: history.winner, flag: history.winnerFlag),
            const CircleAvatar(
              radius: 24,
              child: Text('VS'),
            ),
            CountryWidget(name: history.runnerUp, flag: history.runnerUpFlag),
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text('Winner', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            Text('RunnerUp', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(history.winnerScore, style: const TextStyle(color: Colors.white),),
            Text(history.runnerUpScore, style: const TextStyle(color: Colors.white),)
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(history.winnerCaptain, width: 100, height: 100, fit: BoxFit.cover,),

            Column(
              children: [
                Text(history.year, style: const TextStyle(color: Colors.white, fontSize: 18),),
                Image.asset('assets/images/trophy.png', width: 100, height: 100, fit: BoxFit.cover,)
              ],
            ),

            Image.asset(history.runnerUpCaptain, width: 100, height: 100, fit: BoxFit.cover,),
          ],
        )
      ],
    );
  }
}

class CountryWidget extends StatelessWidget {
  final String name;
  final String flag;

  const CountryWidget({Key? key, required this.name, required this.flag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                AppColors.pinkColor,
                AppColors.lightPurpleColor,
              ],
            )),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage('assets/flags/$flag'),
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
