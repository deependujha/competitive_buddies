import 'package:flutter/material.dart';

class ContestBox extends StatelessWidget {
  // final String imagePath;
  // final String site;
  // final String nameOfContest;
  // final String startTime;
  // final String endTime;
  // final String startDate;
  // final String endDate;
  // const ContestBox(this.imagePath, this.site, this.nameOfContest,
  //     this.startTime, this.endTime, this.startDate, this.endDate,
  //     {Key? key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 85.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 24, 92, 209),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/codeforces.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Codeforces",
                style: TextStyle(
                    color: Color.fromARGB(255, 120, 243, 5),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                "hellow 1gggngnnn ",
                overflow: TextOverflow.fade,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "data 2",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
              Text(
                "hellow 2",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
