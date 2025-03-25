import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> genderItems = ['Male', 'Female'];
  String? selectedValue;
  final _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Precache gambar untuk BottomNavigationBar
    precacheImage(AssetImage('assets/home_icon.png'), context);
    precacheImage(AssetImage('assets/home2_icon.png'), context);
    precacheImage(AssetImage('assets/notif_icon.png'), context);
    precacheImage(AssetImage('assets/notif2_icon.png'), context);
    precacheImage(AssetImage('assets/order_icon.png'), context);
    precacheImage(AssetImage('assets/order2_icon.png'), context);
    precacheImage(AssetImage('assets/profile_icon.png'), context);
    precacheImage(AssetImage('assets/profile2_icon.png'), context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 63),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profil_pic.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: DropdownButtonFormField2<String>(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          fillColor: Color(0xFFF4F4F4),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        hint: const Text(
                          'Men',
                          style: TextStyle(fontSize: 14),
                        ),
                        items: genderItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select your gender';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(Icons.arrow_drop_down,
                              color: Colors.black45),
                          iconSize: 24,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 120,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF8E6CEF),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/bag_icon.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black87),
                    prefixIcon: Image.asset('assets/search_icon.png'),
                    fillColor: Color(0xFFF4F4F4),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: "Categories",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    TextWidget(
                        text: "See All",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            height: 56,
                            width: 56,
                            child: Image.asset('assets/hoodies.png')),
                        SizedBox(height: 5),
                        TextWidget(
                            text: "Hoodies",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: 56,
                            width: 56,
                            child: Image.asset('assets/shorts.png')),
                        SizedBox(height: 5),
                        TextWidget(
                            text: "Shorts",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: 56,
                            width: 56,
                            child: Image.asset('assets/shoes.png')),
                        SizedBox(height: 5),
                        TextWidget(
                            text: "Shoes",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: 56,
                            width: 56,
                            child: Image.asset('assets/bag.png')),
                        SizedBox(height: 5),
                        TextWidget(
                            text: "Bag",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: 56,
                            width: 56,
                            child: Image.asset('assets/accessories.png')),
                        SizedBox(height: 5),
                        TextWidget(
                            text: "Accessories",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: "Top Selling",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    TextWidget(
                        text: "See All",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 281,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Container(
                              height: 281,
                              width: 159,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/top_selling1.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: "Men's Harrington Jacket",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(height: 8),
                                      TextWidget(
                                          text: "\$148.00",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ],
                                  ),
                                ),
                              ])),
                          Positioned(
                              left: 131,
                              top: 9,
                              child: Image.asset('assets/heart.png'))
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        children: [
                          Container(
                              height: 281,
                              width: 159,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/top_selling2.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: "Max Cirro Men's Slides",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          TextWidget(
                                              text: "\$55.00",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                          SizedBox(width: 8),
                                          TextWidget(
                                            color: Colors.black45,
                                            text: "\$107.97",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            textDecoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ])),
                          Positioned(
                              left: 131,
                              top: 9,
                              child: Image.asset('assets/heart.png'))
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        children: [
                          Container(
                              height: 281,
                              width: 159,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/top_selling3.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: "Men's Coaches Jacket",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(height: 8),
                                      TextWidget(
                                          text: "\$66.97",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ],
                                  ),
                                ),
                              ])),
                          Positioned(
                              left: 131,
                              top: 9,
                              child: Image.asset('assets/heart.png'))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: "New In",
                        color: Color(0xFF8E6CEF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                    TextWidget(
                        text: "See All",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 281,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Container(
                              height: 281,
                              width: 159,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/new1.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: "Nike Unscripted",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(height: 8),
                                      TextWidget(
                                          text: "\$120.00",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ],
                                  ),
                                ),
                              ])),
                          Positioned(
                              left: 131,
                              top: 9,
                              child: Image.asset('assets/heart.png'))
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        children: [
                          Container(
                              height: 281,
                              width: 159,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/new2.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: "Nike SB",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(height: 8),
                                      TextWidget(
                                          text: "\$100.00",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ],
                                  ),
                                ),
                              ])),
                          Positioned(
                              left: 131,
                              top: 9,
                              child: Image.asset('assets/heart.png'))
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        children: [
                          Container(
                              height: 281,
                              width: 159,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/new3.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      TextWidget(
                                          text: "Nike Windrunner",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                      SizedBox(height: 8),
                                      TextWidget(
                                          text: "\$52.97",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ],
                                  ),
                                ),
                              ])),
                          Positioned(
                              left: 131,
                              top: 9,
                              child: Image.asset('assets/heart.png'))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 0
                  ? 'assets/home2_icon.png'
                  : 'assets/home_icon.png',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 1
                  ? 'assets/notif2_icon.png'
                  : 'assets/notif_icon.png',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 2
                  ? 'assets/order2_icon.png'
                  : 'assets/order_icon.png',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedIndex == 3
                  ? 'assets/profile2_icon.png'
                  : 'assets/profile_icon.png',
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
      ),
    );
  }
}
