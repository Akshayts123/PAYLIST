import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import '../widget/glass_buttons.dart';
import '../widget/people_list.dart';
import '../widget/slider3.dart';

class Homepage extends StatefulWidget {
  final data;

  const Homepage({Key? key, this.data}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late ScrollController _scrollController;

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = Colors.black;
  Color unselectedColor = Colors.blueGrey;

  bool _showBackToTopButton = false;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              if (_scrollController.offset >= 400) {
                _showBackToTopButton = true; // show the back-to-top button
              } else {
                _showBackToTopButton = false; // hide the back-to-top button
              }
            },
          );
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(microseconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToTop,
        mini: true,
        child: const Icon(Icons.arrow_downward),
      ),
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Color(0xFF99C0C6),
              expandedHeight: MediaQuery.of(context).size.height * 0.009,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Color(0xFF99C0C6),
                statusBarIconBrightness: Brightness.dark,
              ),
              actions: [
                IconButton(
                    icon: Container(
                      width: 22,
                      height: 22,
                      child: Image.asset(
                        'assets/notifications.png',
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {}),
              ],
              // flexibleSpace: FlexibleSpaceBar(

              title: const Text('Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold)),
              // ),
              leading: IconButton(
                  icon: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.black,
                      child: Image.asset(
                        'assets/person.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onPressed: () {}),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Container(
                            color: Color(0xFF99C0C6),
                          ),
                          height: 5,
                        ),
                        Stack(
                          children: [
                            Align(
                              child: Container(
                                alignment: Alignment(0.0, -1.0),
                                height: 850,
                                color: Color(0xFF99C0C6),
                                child: slider3(),
                              ),
                            ),
                            Positioned(
                              top: 180,
                              bottom: 0.0,
                              right: 0.0,
                              left: 0.0,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                ),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 65,
                                              left: 16,
                                              right: 0,
                                              bottom: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                alignment: Alignment(0.0, 0.0),
                                                width: 100,
                                                height: 40,
                                                child: Text(
                                                  "My debts",
                                                  style: TextStyle(
                                                      fontSize: 22.2,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment(0.0, 0.0),
                                                width: 100,
                                                height: 40,
                                                child: TextButton(
                                                  child: Text(
                                                    "See All",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.grey),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: peoplelist(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 130,
                              child: Container(
                                child: glassbuttons(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 70,
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.indicator,
        padding: EdgeInsets.zero,
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : Colors.black,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: 22,
                height: 22,
                child: Image.asset(
                  'assets/home.png',
                  color: Colors.black,
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Container(
              width: 22,
              height: 22,
              child: Image.asset(
                'assets/history.png',
                color: Colors.black,
              ),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 22,
                height: 22,
                child: Image.asset(
                  'assets/articles.png',
                  color: Colors.black,
                ),
              ),
              label: 'Articles'),
          BottomNavigationBarItem(
            icon: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              child: Container(
                width: 60,
                height: 45,
                color: Color(0xFFDDF247),
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/plus_2.png",
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.black),
        unselectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
