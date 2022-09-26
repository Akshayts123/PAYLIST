import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget slider3() {
  return CarouselSlider.builder(
    itemCount: 4,
    options: CarouselOptions(
      // autoPlayCurve: standardEasing,
      disableCenter: true,
      height: 180.0,
      viewportFraction: .4,
      enableInfiniteScroll: true,
      autoPlay: true,
      enlargeCenterPage: true,
      // scrollPhysics:BouncingScrollPhysics(),
    ),
    itemBuilder: (context, index, realIdx) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: index == 1
                    ? Color(0xFFFB9275)
                    : index == 2
                        ? Color(0xFF147587)
                        : index == 3
                            ? Color(0xFF21262B)
                            : Color(0xFF82D483),
              ),
              width: 140,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment(0.0, 1.5),
                          width: 60,
                          height: 40,
                          child: Text(
                            "Owe me",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: (index % 2 == 0)
                                  ? Color(0xFF9EDBC7)
                                  : Color(0xFFF2A592),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 45,
                          height: 45,
                          child: (index % 2 == 0)
                              ? Image.asset("assets/bottom_left_arrow.png")
                              : Image.asset("assets/top_right_arrow.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 100,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Text(
                            "\$ 1 250",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(0.0, -1.0),
                      width: 60,
                      height: 40,
                      child: Text(
                        "2 debts ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: (index % 2 == 0)
                              ? Color(0xFF9EDBC7)
                              : Color(0xFFF2A592),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
