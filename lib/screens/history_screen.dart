import 'package:flutter/material.dart';
import 'package:psl_2023/screens/utility/data_api.dart';
import 'package:psl_2023/screens/widgets/background_widget.dart';
import 'package:psl_2023/screens/widgets/custom_appBar.dart';
import 'package:psl_2023/screens/widgets/history_widget.dart';

import '../models/history_model.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: 'History',
      ),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
          child: FutureBuilder(
            future: DataApi.getAllHistory(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
              List<HistoryModel> history = snapshot.data;

              if(snapshot.hasData) {

                return ListView.builder(
                  itemCount: history.length,
                    itemBuilder: (context, index) {
                  return HistoryWidget(history: history[index],);
                });
              }else {
                return const Center(child: CircularProgressIndicator());
              }
          })
      ),
    );
  }
}
