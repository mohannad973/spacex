import 'package:flutter/material.dart';
import 'package:spacex/model/rocket_model.dart';
import 'package:spacex/core/base_widget/rocet_card.dart';
import 'package:spacex/Ui/details_screen/details_Screen.dart';
class RocketScreen extends StatefulWidget {
  @override
  _RocketScreenState createState() => _RocketScreenState();
}

class _RocketScreenState extends State<RocketScreen> {
  List<Rocket> rockets = [
    Rocket(
        image:"assets/images/falconsat01.png",
        title: "Flacon 1",
        type: "ROCKET",
       active: false
    ),
    Rocket(
        image:"assets/images/falcon09.png",
        title: "Flacon 9",
        type: "ROCKET",
        active: true
    ),
    Rocket(
        image:"assets/images/demosat02.png",
        title: "Big Flacon Rocket",
        type: "ROCKET",
        active: false
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: rockets.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>DetailsScreen()
                    ));
                  },
                  child: RocketCard(
                    title: rockets[index].title,
                    type: rockets[index].type,
                    image: rockets[index].image,
                    isActive:rockets[index].active ,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
