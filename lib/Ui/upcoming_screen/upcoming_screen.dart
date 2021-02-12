import 'package:flutter/material.dart';
import 'package:spacex/core/base_widget/item_card.dart';
import 'package:spacex/core/constent.dart';
import 'package:spacex/core/base_widget/base_text.dart';
import 'package:spacex/Ui/details_screen/details_Screen.dart';
class UpcomingScreen extends StatefulWidget {
  @override
  _UpcomingScreenState createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width:size.width ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>DetailsScreen()
                  ));
                },
                child: ItemCard(
                  title: "Starlink 2",
                  image: "assets/images/crs1.png",
                  description: "CCAES SLC40",
                  type: "LAUNCH"
                      "",
                  date: "16-10-2016",
                ),
              )),
              SizedBox(
                height: 40,
              ),

              baseText(
                title: "Launch Date",
                color: AppColor.categoryTextColor,
                size: 10.0,
              ),


              SizedBox(
                height: 15,
              ),

              baseText(title:"Thu Oct 17 5:30:00 2019" ,
                color: Colors.black,
                size:16.0 ,
              ),
              SizedBox(
                height:20 ,
              ),

              baseText(title:"Launch Site" ,
                color: AppColor.categoryTextColor,
                size:10.0
              ),

              SizedBox(
                height: 15,
              ),

              baseText(title:"Cape Canaveral Air Force Station Space Launch Complex 40" ,

                color: Colors.black,
                size:16.0 ,
               spacing:5.0
              ),

              SizedBox(
                height:20 ,
              ),

              baseText(title:"Count Down" ,
                color: AppColor.categoryTextColor,
                size:10.0 ,

              ),

              SizedBox(
                height: 15,
              ),

              baseText(title:"5 Hrs 30mins more..." ,
                color: Colors.black,
                size:16.0 ,
               ),
            ],
          ),
        ),
      ),
    );
  }
}
