import 'package:flutter/material.dart';
import 'package:my_navigator/presentation/dialog_screen.dart';
import 'package:my_navigator/presentation/hello_all_screen.dart';
import 'package:my_navigator/presentation/hello_screen.dart';
import 'package:my_navigator/presentation/home_screen.dart';
import 'config/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "navigator",
      routes: {
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.pageHello: (context) => PageHelloWorldScreen(),
        AppRoutes.pageDialog: (context) => PageDialogScreen(),
      },
      onGenerateRoute: _registerRouteWithParameters,
    );
  }
}

Route _registerRouteWithParameters(RouteSettings settings) {
  if(settings.name == AppRoutes.pageHelloAll) {
    return MaterialPageRoute(builder: (context) {
      HelloAllParameters parameter = settings.arguments;
      return HelloAllScreen(title: parameter.title);
    });
  }
}
