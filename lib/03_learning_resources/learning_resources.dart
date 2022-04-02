import 'package:flutter/material.dart';

class LearningResources extends StatelessWidget {
  const LearningResources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 4,
          ),
          Text(
            "Some youtube and websites which will be helpful in your competitive programming journey are:\n",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900]),
          ),
          const Spacer(
            flex: 2,
          ),
          const Text(
            "PepCoding",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "TakeUForward",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Aditya Verma",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Errichto’s channel",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Tushar Roy",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "William Lin",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Code NCode",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Code with Harry",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "CodeChef",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Luv",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "CodeBeyond",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "Geeks For Geeks",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "W3School",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const Text(
            "HackerEarth",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
