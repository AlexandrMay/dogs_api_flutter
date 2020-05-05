import 'package:dogs_api/viewmodels/DogsListVM.dart';
import 'package:dogs_api/widgets/dogsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DogsListPage extends StatefulWidget {
  @override
  _DogsListState createState() => _DogsListState();
}

class _DogsListState extends State<DogsListPage> {

  @override
  void initState() {
    super.initState();
    Provider.of<DogsListViewModel>(context, listen: false).showDogs();
  }

  Widget _buildList(BuildContext context, DogsListViewModel vm) {
    switch(vm.loadingStatus) {
      case LoadingStatus.searching:
        return Align(child: CircularProgressIndicator());
      case LoadingStatus.empty:
        return Align(child: Text("No results found"));
      case LoadingStatus.completed:
        return Align(child: DogsList(dogs: vm.dogs));
    }
  }

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<DogsListViewModel>(context);
    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      title: Text("Dogs List"),
      ),
      body: _buildList(context, vm)
      );
  }
}