import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

class ListItemWidget extends StatelessWidget {
  final int index; // Index of the list item
  const ListItemWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CommonNotifier>(
      builder: (context, notifier, _) {
        return Container(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            children: [
              buildText(notifier,index), // Access the count using index
              buildButton(notifier,index) // Pass the index to incrementCounter
            ],
          ),
        );
      },
    );
  }

  Widget buildText(notifier,index) {
    return Text(notifier.data[index].toString());
  }

  Widget buildButton(notifier,index) {
    return  MaterialButton(
      onPressed: () => notifier.incrementCounter(index),
      child: const Text("+"),
    );
  }
}