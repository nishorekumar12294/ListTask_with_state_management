import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_item.dart';
import 'provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CommonNotifier(),
      child: const MaterialApp(
        home: ListWidget(),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView using provider'),
      ),
      body: Consumer<CommonNotifier>(
        builder: (context, notifier, _) {
          return ListView.builder(
            itemCount: notifier.data.length,
            itemBuilder: (context, index) => ListItemWidget(index: index), // Pass the index to the ListItemWidget
          );
        },
      ),
    );
  }
}




