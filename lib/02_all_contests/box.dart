import 'package:flutter/material.dart';

class ContestBox extends StatelessWidget {
  const ContestBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('images/spotify.png'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("data 1"),
                Text(
                  "hellow 1gggngnnn fgbgfgn fbfgbngngn gbnfgnhnhmnhg",
                  overflow: TextOverflow.fade,
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("data 2"), Text("hellow 2")],
          )
        ],
      ),
    );
  }
}
