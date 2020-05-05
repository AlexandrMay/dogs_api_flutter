import 'package:dogs_api/model/dogs.dart';
import 'package:dogs_api/services/webservice.dart';
import 'package:dogs_api/viewmodels/DogsViewModel.dart';
import 'package:flutter/cupertino.dart';

enum LoadingStatus {
  completed,
  searching,
  empty
}

class DogsListViewModel extends ChangeNotifier {

  var loadingStatus = LoadingStatus.searching;

  List<DogsViewModel> dogs = List<DogsViewModel>();

  Future<void> showDogs() async {
    this.loadingStatus = LoadingStatus.searching;
    notifyListeners();
    List<Dogs> dogs = await WebService().fetchDogs();
    this.dogs = dogs.map((dog) => DogsViewModel(dog: dog)).toList();
    if(dogs.length == 0) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
