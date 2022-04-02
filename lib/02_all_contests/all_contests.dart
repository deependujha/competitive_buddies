import 'package:competitive_buddies/02_all_contests/box.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

class AllContests extends StatefulWidget {
  AllContests({Key? key}) : super(key: key);

  @override
  State<AllContests> createState() => _AllContestsState();
}

class _AllContestsState extends State<AllContests> {
  var _postJson = [];
  void fetchData() async {
    try {
      final response = await get(Uri.parse("https://kontests.net/api/v1/all"));
      final jsonData = convert.jsonDecode(response.body) as List;
      setState(() {
        _postJson = jsonData;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _postJson.length,
      itemBuilder: (context, index) {
        return ContestBox(_postJson[index]["site"], _postJson[index]["name"],
            _postJson[index]["start_time"], _postJson[index]["end_time"]);
      },
    );
  }
}
