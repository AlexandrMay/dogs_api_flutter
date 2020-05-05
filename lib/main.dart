import 'package:dogs_api/pages/dogsListPage.dart';
import 'package:dogs_api/viewmodels/DogsListVM.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Dogs",
      home: ChangeNotifierProvider(
        builder: (_) => DogsListViewModel(),
        child: DogsListPage()
      ),

    );
  }

}
