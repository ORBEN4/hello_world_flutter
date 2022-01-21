import 'package:get_server/get_server.dart';

import 'server_config.dart';

void main() {
  print("server");
  print("port ${ServerConfig.PORT}");
  var server = new GetServerApp(
    port: ServerConfig.PORT,
    getPages: [
      new GetPage(page: () => Home()),
      // new GetPage(name: '/', page: () => Home()),
      new GetPage(name: '/hello', page: () => Hello()),
      new GetPage(name: '/json', page: () => JsonPage()),
      GetPage(name: '/info', page: () => InfoPage())
    ],
  );
  for (var page in server.getPages!) {
    print(
        "for page ${page.page.toString().replaceAll("Closure: () => ", "")} go to ${ServerConfig.DOMAIN}${page.name}");
  }

  print("your domain is ${ServerConfig.DOMAIN}");
  runApp(server);
  print("active");
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("this is the dart server");
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("hello ${context.param('name')} Welcome to GetX");
  }
}

class JsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Json({
      "fruits": ["banana", "orange", "apple"]
    });
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        "server\nport 3000\nfor page Home go to http://localhost:3000/\nfor page Hello go to http://localhost:3000/hello\nfor page JsonPage go to http://localhost:3000/json\nyour domain is http://localhost:3000\nactive");
  }
}
