import 'package:aslabflutter_app/app/modules/FoodDetail/views/food_detail_view.dart';
import 'package:aslabflutter_app/app/modules/Orders/views/orders_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  width: 350,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/img/icon_stirp.png"),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: Offset(2, 7),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Deliver to",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xfff8C9099),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4102 Pretty View Lane",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Color(0xfffFE724C),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/img/profile.png"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: Offset(2, 7),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Text(
                    "What would you like to order",
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xfffEFEFEF))),
                      hintText: 'Find for food or restaurant...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset('assets/img/search.png'),
                        width: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          children: [
                            ListFood(
                                ontap: () {
                                  print("Burger");
                                },
                                img: AssetImage("assets/icon/burger.png"),
                                txt: "Burger"),
                            SizedBox(
                              width: 13,
                            ),
                            ListFood(
                                ontap: () {
                                  print("Pizza");
                                },
                                img: AssetImage("assets/icon/pizza.png"),
                                txt: "Pizza"),
                            SizedBox(
                              width: 13,
                            ),
                            ListFood(
                                ontap: () {
                                  print("Hotdog");
                                },
                                img: AssetImage("assets/icon/hotdog.png"),
                                txt: "Hotdog"),
                            SizedBox(
                              width: 13,
                            ),
                            ListFood(
                                ontap: () {
                                  print("Donat");
                                },
                                img: AssetImage("assets/icon/donat.png"),
                                txt: "Donat"),
                            SizedBox(
                              width: 13,
                            ),
                            ListFood(
                                ontap: () {
                                  print("Asian");
                                },
                                img: AssetImage("assets/icon/asian.png"),
                                txt: "Asian"),
                            SizedBox(
                              width: 13,
                            ),
                            ListFood(
                                ontap: () {
                                  print("Maxian");
                                },
                                img: AssetImage("assets/icon/eskrim.png"),
                                txt: "Maxian"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 314,
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured Restaurants",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            Text(
                              "View All",
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: Color(0xfffF56844),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 250,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10, left: 15),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FeaturedRestaurant(
                                ontap: () {
                                  Get.to(FoodDetailView());
                                },
                                img: AssetImage("assets/img/mcd.png"),
                                title: "McDonald’s",
                                cost: "4,5",
                                dlvr: "Free delivery",
                                time: "10-15 mins",
                                txt1: "Burger",
                                txt2: "Chicken",
                                txt3: "Fast Food",
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FeaturedRestaurant(
                                ontap: () {},
                                img: AssetImage("assets/img/str.png"),
                                title: "Starbuck",
                                cost: "5,5",
                                dlvr: "Free delivery",
                                time: "10-15 mins",
                                txt1: "Burger",
                                txt2: "Chicken",
                                txt3: "Fast Food",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 15, left: 15),
                            child: Text(
                              "Popular Items",
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15, left: 15),
                            child: Row(
                              children: [
                                PopulerItems(
                                  img: AssetImage("assets/img/mie.png"),
                                  title: "Salmon Salad",
                                  text1: "Baked salmon fish",
                                  cost: "5.50",
                                  clr: Color.fromARGB(110, 255, 255, 255),
                                  clrLove: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                PopulerItems(
                                  img: AssetImage("assets/img/mon.png"),
                                  title: "Salmon Salad",
                                  text1: "Baked salmon fish",
                                  cost: "8.25",
                                  clr: Color(0xfffFE724C),
                                  clrLove: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container PopulerItems({img, title, cost, clr, clrLove, text1}) {
    return Container(
      width: 154,
      height: 216,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 154,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                image: img,
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 56,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          cost,
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: clr,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_rounded),
                        color: clrLove,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text1,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Color(0xfff9796A1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InkWell FeaturedRestaurant(
      {ontap, img, title, dlvr, cost, time, txt1, txt2, txt3}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 266,
        height: 229,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 9,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 266,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: img,
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 69,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            cost,
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xfffFE724C),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_rounded),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icon/ontel.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        dlvr,
                        style: GoogleFonts.inter(
                            fontSize: 12, color: Color(0xfff7E8392)),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Image.asset("assets/icon/timer.png"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        time,
                        style: GoogleFonts.inter(
                            fontSize: 12, color: Color(0xfff7E8392)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 22,
                        decoration: BoxDecoration(
                            color: Color(0xfffF6F6F6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            txt1,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0xfff8A8E9B),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70,
                        height: 22,
                        decoration: BoxDecoration(
                            color: Color(0xfffF6F6F6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            txt2,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0xfff8A8E9B),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70,
                        height: 22,
                        decoration: BoxDecoration(
                            color: Color(0xfffF6F6F6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            txt2,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0xfff8A8E9B),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell ListFood({ontap, img, txt}) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 58,
        height: 98,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xfffFE724C),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 9,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                image: DecorationImage(
                  image: img,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              txt,
              style: GoogleFonts.roboto(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
