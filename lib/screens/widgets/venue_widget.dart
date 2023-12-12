import 'package:flutter/material.dart';
import 'package:psl_2023/models/venue_model.dart';
import 'package:psl_2023/screens/utility/app_colors.dart';

class VenueWidget extends StatelessWidget {
  final VenueModel venue;

  const VenueWidget({Key? key, required this.venue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 350,
      decoration: BoxDecoration(
          color: AppColors.pinkColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)]),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      venue.image,
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                left: 65,
                right: 65,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: AppColors.pinkColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                  child: Center(
                    child: Text(venue.country,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(venue.city,
            style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Text(venue.stadium,
            style: const TextStyle(fontSize: 18, color: Colors.white, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
