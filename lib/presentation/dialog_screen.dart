import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Show Dialog")),
      body: Center(
          child: RaisedButton(
        onPressed: () async {
          String response = await showDialog<String>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    content: const Text("Press OK to continue"),
                    actions: <Widget>[
                      FlatButton(
                          child: const Text("OK"),
                          onPressed: () => Navigator.pop(context, "Test pop")),
                    ]);
              });
          print(response);
        },
        child: Text("Show Dialog"),
      ),
      ),
    );
  }
}
