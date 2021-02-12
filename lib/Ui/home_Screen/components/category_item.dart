import 'package:flutter/material.dart';
import 'package:spacex/core/constent.dart';

// ignore: must_be_immutable
class CategoryItem extends StatefulWidget {
   final String title;
  // int selectedIndex;
  // final Function press;
  // int index;
  Size size;
  bool selected;

  CategoryItem(
      {Key key,
      this.size,
      this.title,
        this.selected
      // this.selectedIndex,
      // this.press,
      // this.index
      })
      : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    // if (widget.selectedIndex == null) {
    //   widget.selectedIndex = 0;
    // }
    return Container(
      // width: widget.size.width / 2,
      child: GestureDetector(
        // onTap: widget.press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                style:
                 widget.selected?
                TextStyle(
                        fontSize: 12,
                        color: AppColor.categoryTextColor,
                        fontWeight: FontWeight.bold,
                      )
                    :
              TextStyle(fontSize: 12, color: AppColor.textColor),
              ),
              if (widget.selected)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 3,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.categoryTextColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
