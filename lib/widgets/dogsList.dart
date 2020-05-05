import 'package:dogs_api/viewmodels/DogsViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DogsList extends StatelessWidget {

  final List<DogsViewModel> dogs;

  DogsList({this.dogs});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemCount: dogs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(1.0),
                child: Image.network(dogs[index].urlToImage)),
            title: Text(dogs[index].name),
            subtitle: Text(dogs[index].temperament),
          );
        }
    );
  }

}