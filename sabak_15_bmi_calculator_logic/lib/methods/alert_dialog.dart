import 'package:flutter/material.dart';

class AlertClass {
  Future<void> showMyDialog(context, Null Function() param1,
      {required void Function()? onPressed, required String text}) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.yellow,
              title: const Text('AlertDialog Title'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      text,
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Approve')),
              ]);
        });
  }
}
