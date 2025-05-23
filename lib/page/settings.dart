import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/material.dart';

import '../widgets/setting_list.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/profil_pic.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 121,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "johndoe@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "0821-1234-5678",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        TextWidget(
                          text: "Edit",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8E6CEF),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                SettingList(text: "Address"),
                SizedBox(
                  height: 8,
                ),
                SettingList(text: "Wishlist"),
                SizedBox(
                  height: 8,
                ),
                SettingList(text: "Payment"),
                SizedBox(
                  height: 8,
                ),
                SettingList(text: "Help"),
                SizedBox(
                  height: 8,
                ),
                SettingList(text: "Support"),
                SizedBox(
                  height: 35,
                ),
                TextWidget(
                  text: "Sign Out",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                )
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
