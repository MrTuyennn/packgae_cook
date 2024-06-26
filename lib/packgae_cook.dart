library packgae_cook;

/// A Calculator.
import 'package:flutter/material.dart';

class CustomAlertBox {
  /// Bu şekilde döküman yorumları oluşturabilirsiniz kullanan kişiler için faydalı olur.
  static Future showCustomAlertBox({
    required BuildContext context,
    required Widget willDisplayWidget,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                willDisplayWidget,
                MaterialButton(
                  color: Colors.white30,
                  child: const Text('close alert'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
