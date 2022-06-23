// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:book_app/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatefulWidget {
  ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  int? selectedIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            widget.product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: widget.product.isFavourite
                  ? Color(0xFFFFE6E6)
                  : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: widget.product.isFavourite
                  ? Color(0xFFFF4848)
                  : Color(0xFFDBDEE4),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            widget.product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                child: Text("Jam Operasional",
                    style: TextStyle(
                        color: selectedIndex == 1 ? Colors.green : Colors.black,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                  print(selectedIndex);
                }),
            TextButton(
                child: Text("Lokasi",
                    style: TextStyle(
                        color: selectedIndex == 2 ? Colors.green : Colors.black,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                  print(selectedIndex);
                }),
          ],
        ),
        SizedBox(height: 20),
        buildTabView(selectedIndex!),
        
      ],
    );
  }

  buildTabView(int index) {
    if (index == 0) {
      return Container();
    }
    if (index == 1) {
      return Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: double.infinity,
          height: 200,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                width: double.infinity,
                // height: 200,
                child: Column(
                  children: [
                    Text("Senin   08:00 - 23 :00"),
                    Text("Selasa  08:00 - 23 :00"),
                    Text("Rabu    08:00 - 23 :00"),
                    Text("Kamis   08:00 - 23 :00"),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                // height: 200,
                child: Column(
                  children: [
                    Text("Jumat   08:00 - 23 :00"),
                    Text("Sabtu   08:00 - 23 :00"),
                    Text("Minggu  08:00 - 23 :00"),
                    // Text("Senin  08:00 - 23 :00"),
                  ],
                ),
              ),
            ],
          ));
    } else if (index == 2) {}
    return Container(
        height: 200,
        width: double.infinity,
        child: Center(child: 
        Text("Jalan Raya Jatibarang-Karangampel No.5-33, Jatibarang, Kab.Indramayu, Jawa Barat, Indonesia")));
  }
}
