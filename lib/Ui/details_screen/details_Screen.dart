import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacex/core/base_widget/base_text.dart';
import 'package:spacex/core/constent.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: size.width,
                height: size.height*0.08,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },

                          child: SvgPicture.asset("assets/images/back.svg")),
                      SvgPicture.asset("assets/images/share.svg"),

                    ],
                  ),
                ),
              ),
              Center(
                child: Image.asset("assets/images/crs1.png"),

              ),
              SizedBox(height: 20,),


              singleDescription(title: "ROCKET" , subTitle: "Falcon 1" ),
              singleDescription(title: "LAUNCH DATE" , subTitle: "01-03-2019" ),
              singleDescription(title: "LAUNCH SITE" , subTitle: "CCAFS SLC 40" ),
              singleDescription(title: "LAUNCH STATUS" , subTitle: "Success" ),
              singleDescription(title: "DETAILS" , subTitle: "Last launch of the original Falcon 9 v1.0 launch vehicle" ),
              singleDescription(title: "ROCKET SUMMARY" , subTitle: "Falcon 9" ),
              singleDescription(title: "TYPE" , subTitle: "v1.0" ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  singleDescription(title: "FIRST STAGE" , subTitle: "Cores: 4" ),
                  singleDescription(title: "SECOND STAGE" , subTitle: "Payloads: 150kg" ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  socialMedia(name: "YOUTUBE",
                      alignment: CrossAxisAlignment.start,
                      logo: "assets/images/play.svg",
                  color: AppColor.youtubeColor
                  ),

                  socialMedia(name: "REDDIT",
                      alignment: CrossAxisAlignment.end ,
                      logo: "assets/images/reddit.svg",
                  color: AppColor.redditColor),

                ],
              ),

              SizedBox(
                height: 30,
              ),


              baseText(
                title: "SNEAK PEAK",
                size: 10.0,
                color: AppColor.categoryTextColor,
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                height: 347,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                    itemBuilder: (context , index){
                  return ClipRRect(
                    child: Image.asset("assets/images/Rectangle 2.png"),
                  );
                }),
              ),

              SizedBox(
                height:
                40,
              ),

            ],
          ),
        ),
      ),

    );
  }
}

Widget singleDescription({String title , String subTitle}){
  return  Padding(
    padding: const EdgeInsets.only(top:20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        baseText(
          title: title,
          size: 10.0,
          color: AppColor.categoryTextColor,

        ),
        SizedBox(height: 10,),
        baseText(
            title: subTitle,
            color: Colors.white,
            size: 18.0
        )
      ],
    ),
  );
}

Widget socialMedia({String name , String logo , CrossAxisAlignment alignment , Color color}){
  return Column(
    crossAxisAlignment: alignment,
    children: [
      baseText(
        title: name,
        size: 10.0,
        color: AppColor.categoryTextColor,
      ),
      SizedBox(height: 15,),
      Container(
        width: 112 ,
        height: 35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(4)),

        ),
        child: Center(
            child: SvgPicture.asset(logo)
        ),
      )
    ],
  );
}