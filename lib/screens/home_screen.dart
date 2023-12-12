import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:psl_2023/screens/history_screen.dart';
import 'package:psl_2023/screens/schedule_screen.dart';
import 'package:psl_2023/screens/team_screen.dart';
import 'package:psl_2023/screens/venue_screen.dart';
import 'package:psl_2023/screens/widgets/background_widget.dart';
import 'package:psl_2023/screens/widgets/custom_appBar.dart';
import 'package:psl_2023/screens/widgets/dashboard_items.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: 'PSL 2023',
      ),
      body: BackgroundWidget(
          padding: const EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
            children: [
              DashboardItems(
                title: 'Schedule',
                imagePath: 'assets/dashboard/schedule.png',
                onTap: () {
                  Get.to(() => const ScheduleScreen());
                },
              ),
              DashboardItems(
                title: 'Venues',
                imagePath: 'assets/dashboard/venues.png',
                onTap: () {
                  Get.to(() => const VenueScreen());
                },
              ),
              DashboardItems(
                title: 'History',
                imagePath: 'assets/dashboard/history.png',
                onTap: () {
                  Get.to(() => const HistoryScreen());
                },
              ),
              DashboardItems(
                title: 'Teams',
                imagePath: 'assets/dashboard/teams.png',
                onTap: () {
                  Get.to(() => const TeamScreen());
                },
              ),
              DashboardItems(
                title: 'Live Score',
                imagePath: 'assets/dashboard/livescore.png',
                onTap: () async {
                  const url = 'https://www.google.com/search?q=psl+live+score&rlz=1C1ONGR_enPK998PK998&oq=psl+li&aqs=chrome.1.69i57j35i39j0i131i433i512l3j0i3j0i131i433i512j0i3j0i131i433i512l2.13284j1j7&sourceid=chrome&ie=UTF-8';

                  await canLaunchUrl(Uri.parse(url))
                  ? await launchUrl(Uri.parse(url))
                  : throw 'Could not launch $url';
                },
              ),
              DashboardItems(
                title: 'Highlights',
                imagePath: 'assets/dashboard/hilights.png',
                onTap: () async {
                  const url = 'https://www.youtube.com/channel/UCpNzXJ5jpcJojC5mHQvGA8w';

                  await canLaunchUrl(Uri.parse(url))
                  ? await launchUrl(Uri.parse(url))
                  : throw 'Could not launch $url';
                },
              ),
            ],
          )),
    );
  }
}
