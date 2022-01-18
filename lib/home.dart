import 'package:flutter/material.dart';
import 'package:movie_flutter/provider/bottom_navigation_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  late BottomNavigationProvider _bottomNavigationProvider;

  _navigationBody(){

  }

  _bottomNavigationBarWidget(){
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie"),
    ],
      currentIndex: _bottomNavigationProvider.currentPage,
      selectedItemColor: Colors.red,
      onTap: (index) {
        _bottomNavigationProvider.updateCurrentPage(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("MOVIE SAMPLE"),
      ),
      body:  _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
