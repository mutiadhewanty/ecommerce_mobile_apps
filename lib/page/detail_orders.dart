import 'package:flutter/material.dart';

import '../widgets/text.dart';

class DetailOrders extends StatefulWidget {
  const DetailOrders({super.key});

  @override
  State<DetailOrders> createState() => _DetailOrdersState();
}

class _DetailOrdersState extends State<DetailOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: TextWidget(
          text: 'Order #456765',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 13,
            ),
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Opacity(
                opacity: 0.3,
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Color(0xFF8E6CEF),
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.check_rounded,
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    TextWidget(
                        text: 'Delivered',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    Spacer(),
                    TextWidget(
                      text: 'Sep 12',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Color(0xFF8E6CEF),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.check_rounded,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  TextWidget(
                      text: 'Shipped',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  Spacer(),
                  TextWidget(
                    text: 'Sep 12',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Color(0xFF8E6CEF),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.check_rounded,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  TextWidget(
                      text: 'Order Confirmed',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  Spacer(),
                  TextWidget(
                    text: 'Sep 12',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Color(0xFF8E6CEF),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.check_rounded,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  TextWidget(
                      text: 'Order Placed',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  Spacer(),
                  TextWidget(
                    text: 'Sep 12',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextWidget(
                text: 'Order Items',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  height: 72,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        Image.asset('assets/black_order_icon.png'),
                        SizedBox(
                          width: 16,
                        ),
                        TextWidget(
                            text: '4 items',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        Spacer(),
                        TextWidget(
                            text: 'View All',
                            color: Color(0xFF8E6CEF),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              TextWidget(
                text: 'Shipping Details',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  height: 64,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                              text: '2715 Ash Dr. San Jose, South Dakota 83475',
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                          SizedBox(
                            height: 5,
                          ),
                          TextWidget(
                              text: '121-224-7890',
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
