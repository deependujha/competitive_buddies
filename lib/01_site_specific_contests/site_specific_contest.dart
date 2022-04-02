import 'package:competitive_buddies/02_all_contests/box.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

class SiteSpecific extends StatefulWidget {
  SiteSpecific({Key? key}) : super(key: key);

  @override
  State<SiteSpecific> createState() => _SiteSpecificState();
}

class _SiteSpecificState extends State<SiteSpecific> {
  var _postJson = [];

  void fetchData() async {
    try {
      final response =
          await get(Uri.parse("https://kontests.net/api/v1/codeforces"));
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
    // print("I'm printing the length of the list ${_postJson.length}");
    return ListView.builder(
      itemCount: _postJson.length,
      itemBuilder: (context, index) {
        return ContestBox("CodeForces", _postJson[index]["name"],
            _postJson[index]["start_time"], _postJson[index]["end_time"]);
      },
    );
  }
}
