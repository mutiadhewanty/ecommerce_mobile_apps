import 'package:flutter/material.dart';

import '../widgets/list_categories.dart';
import '../widgets/text.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 12, color: Colors.black87),
              prefixIcon: Image.asset('assets/search_icon.png'),
              suffixIcon: Icon(
                Icons.close_rounded,
                size: 20,
                color: Colors.black87,
              ),
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
                height: 34,
              ),
              TextWidget(
                text: 'Shop by Categories',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    ListCategories(
                        image: 'assets/hoodies.png', title: 'Hoodies'),
                    SizedBox(
                      height: 8,
                    ),
                    ListCategories(image: 'assets/shorts.png', title: 'Shorts'),
                    SizedBox(
                      height: 8,
                    ),
                    ListCategories(image: 'assets/shoes.png', title: 'Shoes'),
                    SizedBox(
                      height: 8,
                    ),
                    ListCategories(image: 'assets/bag.png', title: 'Bag'),
                    SizedBox(
                      height: 8,
                    ),
                    ListCategories(
                        image: 'assets/accessories.png', title: 'Accessories'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
