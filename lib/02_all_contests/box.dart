import 'package:flutter/material.dart';

class ContestBox extends StatelessWidget {
  final String site;
  final String nameOfContest;
  final String startTime;
  final String endTime;

  ContestBox(this.site, this.nameOfContest, this.startTime, this.endTime,
      {Key? key})
      : super(key: key);

  String siteImgPath(String site) {
    if (site == "CodeForces" || site == "CodeForces::Gym") {
      return 'images/codeforces.png';
    }
    if (site == "TopCoder") {
      return 'images/topcoder.png';
    }
    if (site == "AtCoder") {
      return 'images/atcoder.png';
    }
    if (site == "CS Academy") {
      return 'images/csAcademy.png';
    }
    if (site == "CodeChef") {
      return 'images/codechef.png';
    }
    if (site == "HackerRank") {
      return 'images/hackerrank.png';
    }
    if (site == "HackerEarth") {
      return 'images/HackerEarth_logo.png';
    }
    if (site == "Kick Start") {
      return 'images/google.png';
    }
    if (site == "LeetCode") {
      return 'images/leetcode.png';
    } else {
      return 'images/toph.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    String date = startTime.substring(0, 10) + " - " + endTime.substring(0, 10);
    String time =
        startTime.substring(11, 19) + " - " + endTime.substring(11, 19);
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 85.0,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 92, 209),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(siteImgPath(site)),
          ),
          Text(
            site,
            style: const TextStyle(
                color: Color.fromARGB(255, 120, 243, 5),
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                time,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              Text(
                date,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
