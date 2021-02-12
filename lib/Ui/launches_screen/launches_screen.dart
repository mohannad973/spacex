import 'package:flutter/material.dart';
import 'package:spacex/model/launch_model.dart';
import 'package:spacex/core/base_widget/item_card.dart';
import 'package:spacex/Ui/details_screen/details_Screen.dart';
class LaunchesScreen extends StatefulWidget {
  @override
  _LaunchesScreenState createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen> {

List<LaunchModel> launches = [
  LaunchModel(
    image:"assets/images/falconsat01.png",
    title: "Starlink 2",
    description: "CCAES SLC 40",
    type: "LAUNCH",
    date: "16-12-2014"
  ),
  LaunchModel(
      image:"assets/images/falcon9.png",
      title: "DemoSat",
      description: "AAAEs SLC 40",
      type: "LAUNCH",
      date: "06-07-2018"
  ),
  LaunchModel(
      image:"assets/images/demosat02.png",
      title: "Falcon 9 Test",
      description: "CCAES SLC 40",
      type: "LAUNCH",
      date: "18-03-2019"
  ),
  LaunchModel(
      image:"assets/images/crs1.png",
      title: "CRS - 2",
      description: "CCAES SLC 40",
      type: "LAUNCH",
      date: "18-12-2019"
  ),
];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: launches.length,
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
                 child: ItemCard(
                   title: launches[index].title,
                   date: launches[index].date ,
                   type: launches[index].type,
                   description: launches[index].description,
                   image: launches[index].image,
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
// title: launches[index].title,
// date: launches[index].date ,
// type: launches[index].type,
// description: launches[index].description,
// image: launches[index].image,