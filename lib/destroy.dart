import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      // TODO: implement build
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("this is the doomsday app"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () => sendRequest(),
              // color: Color.fromARGB(0, 255, 0, 0),
              child: Text("לא ללחוץ\nתודה"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: CircleBorder(),
                padding: EdgeInsets.all(80),
              ),
            ),
          ),
        ),
      );

  static const urlPrefix = '127.0.0.1:8080';

  // Future<void> makeGetRequest() async {
  //   final url = Uri.parse('$urlPrefix/kill');
  //   Response response = await get(url);
  //   print('Status code: ${response.statusCode}');
  //   print('Headers: ${response.headers}');
  //   print('Body: ${response.body}');
  // }

  sendRequest() async {
    var url = Uri.parse('https://127.0.0.1:8080/kill');
    // var url = Uri.parse('https://lankydan.dev/2017/04/08/request-mapping-with-multiple-rest-controllers');
    final Dio dio = new Dio();
    await dio.get("https://127.0.0.1:8080/kill");
  }
}