import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacex/core/base_widget/base_text.dart';
import 'package:spacex/Ui/home_Screen/components/category_item.dart';
import 'package:spacex/Ui/upcoming_screen/upcoming_screen.dart';
import 'package:spacex/Ui/launches_screen/launches_screen.dart';
import 'package:spacex/Ui/rocket_screen/rocket_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  List<String> categories = ["Upcoming" , "Launches" , "Rockets"];
  int selectedIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =  TabController(length: 3, vsync: this);
    _tabController.animation
      ..addListener(() {
        setState(() {
          selectedIndex = (_tabController.animation.value).round(); //_tabController.animation.value returns double
          print('_tabController.animation.value: ${_tabController.animation.value}');
          print('_currentIndex: $selectedIndex');
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    var size  =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height*0.15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/images/Vector.svg"),
                    appTitle(),
                    SvgPicture.asset("assets/images/search.svg"),

                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:size.height*0.02),
              child: Container(
                 height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),



                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                SingleChildScrollView(
                    child:
                    DefaultTabController(
                        length: 3,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(


                              onTap: (value){
                                setState(() {
                                  selectedIndex = value;
                                });
                              },
                              isScrollable: true,
                              tabs: [
                                CategoryItem(size: size,title: "Upcoming",selected:  selectedIndex == 0?true :false,),
                                CategoryItem(size: size,title: "Launching",selected:   selectedIndex== 1?true :false,),
                                CategoryItem(size: size,title: "Rockets",selected:   selectedIndex == 2?true :false,),
                              ],
                              indicator: BoxDecoration(
                                color: Colors.transparent
                              ),
                              controller: _tabController,

                            ),
                            Container(
                                height: 600,
                                width: size.width,
                                child:
                                TabBarView(
                                  controller: _tabController,
                                  children: [
                                    UpcomingScreen(),
                                    LaunchesScreen(),
                                    RocketScreen()
                                  ],
                                )
                            )
                          ],
                        ))
                )



                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
