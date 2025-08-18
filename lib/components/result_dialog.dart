import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final Map<String, dynamic> data;
  const ResultDialog(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      actions: [
        TextButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          label: Text(
            "OK",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            Icons.check_rounded,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Calculated Installments",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1st Installment: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "${data['first']} Taka",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2nd Installment: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "${data['second']} Taka",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "3rd Installment: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "${data['third']} Taka",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
