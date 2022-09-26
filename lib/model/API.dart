import 'dart:convert';

import 'package:http/http.dart' as http;

Future home_API() async {
  final response = await http.get(
    Uri.parse("https://finekube.com/interview/flutterTest.php?pageNo=1"),
    headers: {"accept": "*/*"},
  );
  var convertDataToJson;

  if (response.statusCode == 200) {
    convertDataToJson = jsonDecode(response.body.toString());
  } else {
    convertDataToJson = 0;
    print("````````````````" + response.body + "`````````````````````");
  }
  return convertDataToJson;
}
