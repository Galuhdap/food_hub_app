import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 9,
                            offset: Offset(2, 7),
                          ),
                        ],
                      ),
                      child: Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Favorites",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 500,
                child: ListView(
                  children: [
                    favorit(
                        img: AssetImage("assets/img/hotpizza.png"),
                        title: "Red n hot pizza",
                        txt1: "Spicy chicken, beef",
                        harga: "22.50"),
                    favorit(
                        img: AssetImage("assets/img/mie.png"),
                        title: "Noodel Greek",
                        txt1: "With Backed Salmon",
                        harga: "12.20"),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Container(
                            width: 96,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Color(0xfffFE724C),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Center(
                              child: Text(
                                "Apply",
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        hintText: 'Promo Code',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    total(
                      title: "Subtotal",
                      harga: "27.30 USD",
                    ),
                    total(
                      title: "Tax and Fees",
                      harga: "5.00 USD",
                    ),
                    total(
                      title: "Delivery",
                      harga: "10.25 USD",
                    ),
                    total(
                      title: "Total",
                      harga: "35.70 USD",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 248,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xfffFE724C),
                ),
                child: Center(
                  child: Text(
                    "CHECKOUT",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column total({title, harga}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              harga,
              style: GoogleFonts.inter(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 400,
          height: 1,
          color: Color(0xfffF1F2F3),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Container favorit({img, title, txt1, harga}) {
    return Container(
      width: 328,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 128,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  txt1,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Color(0xfff8C8A9D),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      harga,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xfffFE724C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                color: Color(0xfffFE724C),
                padding: EdgeInsets.only(bottom: 20, left: 76),
                alignment: Alignment.topRight,
                onPressed: () {},
                icon: Icon(Icons.clear_rounded),
              ),
              Container(
                width: 100,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xfffFE724C),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "-",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Text(
                      "02",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "+",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
