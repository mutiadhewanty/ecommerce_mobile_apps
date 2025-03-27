import 'package:ecommerce_mobile_apps/widgets/text.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: TextWidget(
          text: 'Notifications',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            // SizedBox(
            //   height: 40,
            // ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemCount: 10,
            //   padding: EdgeInsets.only(bottom: 16),
            //   itemBuilder: (context, index) {
            //     return Container(
            //       margin: EdgeInsets.only(bottom: 8),
            //       decoration: BoxDecoration(
            //         color: Color(0xFFF4F4F4),
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 14),
            //         child: ListTile(
            //           leading: Image.asset('assets/black_notif_icon.png'),
            //           // title: Text('Notification $index'),
            //           subtitle: Text(
            //               'Gilbert, Thank you for shopping with us we have canceled order #24568.'),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/notif_bell.png'),
                    SizedBox(
                      height: 16,
                    ),
                    TextWidget(
                        text: "No Notification yet",
                        fontSize: 24,
                        fontWeight: FontWeight.w400),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Explore Categories"))
                  ],
                ),
              ),
            )
          ],
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
