import 'package:flutter/material.dart';
import 'package:spacex/core/constent.dart';
import 'package:spacex/core/base_widget/base_text.dart';

class RocketCard extends StatelessWidget {
  String image, type, title;
  bool isActive;

  RocketCard({this.image, this.type, this.title, this.isActive});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: 128,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2.0, 10.0),
            blurRadius: 20.0,
          )
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size.width * 0.05,
          ),
          Image.asset(image),
          SizedBox(
            width: size.width * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: TextStyle(
                      color: AppColor.categoryTextColor,
                      fontSize: 10,
                      fontFamily: "GoogleSans"),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: "GoogleSans",
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: isActive?AppColor.activeColor:AppColor.inActiveColor,
                    borderRadius: BorderRadius.all(Radius.circular(4)),

                  ),
                  child: Center(
                    child: baseText(
                      color: Colors.white,
                      title: isActive? "ACTIVE" : "INACTIVE",
                      size: 8.0,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
