import 'package:flutter/material.dart';
import 'package:squash/views/today.dart';
import 'package:squash/views/board.dart';
import 'package:squash/components/Navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final _bottomNavigationItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Today',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Board',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8e8),
      body: Column(children: [
        Navbar(),
        Expanded(
            child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [TodayPage(), BoardPage()],
        ))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF4A536B),
        items: _bottomNavigationItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeInOutCubicEmphasized);
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, route.createRecipePage);
      //   },
      //   child: Container(
      //     decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('images/Button3.png'),
      //         ),
      //         border: Border.all(color: const Color(0xFFFF9A8D), width: 1.0),
      //         borderRadius: BorderRadius.circular(20)),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
