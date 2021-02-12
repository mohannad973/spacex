import 'package:flutter/material.dart';
import 'package:spacex/core/constent.dart';

class ItemCard extends StatelessWidget {
  String image , type , title , description , date ;


  ItemCard({this.image, this.type, this.title, this.description, this.date});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.9,
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
          SizedBox(width: size.width*0.05,),
          Image.asset(image),
          SizedBox(width: size.width*0.1,),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(type ,style: TextStyle(
                    color: AppColor.categoryTextColor,
                    fontSize: 10,
                    fontFamily:"GoogleSans"

                ),),
                Text(title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: "GoogleSans",
                  fontWeight: FontWeight.bold
                ),),
                Text(description,
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColor.lightGreyColor,
                      fontFamily: "GoogleSans",
                      fontWeight: FontWeight.normal
                  ),),
                Text(date,
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColor.lightGreyColor,
                      fontFamily: "GoogleSans",
                      fontWeight: FontWeight.normal
                  ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
