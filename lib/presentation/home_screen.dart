import 'package:flutter/material.dart';
import 'package:my_navigator/config/routes.dart';
import 'package:my_navigator/presentation/hello_all_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(child: Text("Home Screen")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Page Hello World"),
              onTap: () => {Navigator.of(context).pushNamed(AppRoutes.pageHello)},
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Page Show Dialog"),
              onTap: () => {Navigator.of(context).pushNamed(AppRoutes.pageDialog)}
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Page Show Hello1"),
              onTap: () => {Navigator.of(context).pushNamed(AppRoutes.pageHelloAll, arguments: HelloAllParameters("Hello 1"))}
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Page Show Hello2"),
              onTap: () => {Navigator.of(context).pushNamed(AppRoutes.pageHelloAll, arguments: HelloAllParameters("Hello 2"))}
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Page Show Hello3"),
              onTap: () => {Navigator.of(context).pushNamed(AppRoutes.pageHelloAll, arguments: HelloAllParameters("Hello 3"))}
            )
          ],
        ),
      ),
    );
  }
}
