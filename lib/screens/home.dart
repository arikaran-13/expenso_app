
import 'package:expenso_app/screens/main_screen.dart';
import 'package:expenso_app/components/GradientFAB.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentSelectedIndex = 0;
  String currentLoggedUserName = "";

  @override
  Widget build(BuildContext context) {
    var routeArgs = ModalRoute.of(context)!.settings.arguments;
    if(routeArgs!=null) {
      currentLoggedUserName=  routeArgs as String;
    }
    return Scaffold(
      body: MainScreen(username: currentLoggedUserName),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15.0)
        ),
        child: BottomNavigationBar(
          currentIndex: _currentSelectedIndex,
          onTap: (int selectedIndex){
            _onTapBottomNavBar(selectedIndex);
          },
          backgroundColor: Colors.white,
            items: buildBottomNavigationBarItem()
        ),
      ),
      floatingActionButton: const GradientFAB(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<BottomNavigationBarItem> buildBottomNavigationBarItem(){
    return [
      const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: "Home"
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: "Trans"
      ),
      const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.graph_square_fill),
          label: "Stats"
      ),
    ];
  }

  void _onTapBottomNavBar(int selectedIndex){
    setState(() {
      _currentSelectedIndex = selectedIndex;
    });
  }
}
