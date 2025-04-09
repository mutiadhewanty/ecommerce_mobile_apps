import 'package:flutter/material.dart';

import '../widgets/text.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  int _selectedIndex = 2;

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
          text: 'Orders',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Processing')),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black87,
                      ),
                      child: Text('Sipped'),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black87,
                        ),
                        child: Text('Delivered')),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black87,
                        ),
                        child: Text('Returned')),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black87,
                        ),
                        child: Text('Cancel')),
                    SizedBox(
                      width: 13,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                padding: EdgeInsets.only(bottom: 16),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: ListTile(
                        leading: Image.asset('assets/black_order_icon.png'),
                        title: TextWidget(
                            text: 'Order #456765',
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        subtitle: TextWidget(
                          text: '2 items',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                        trailing: Image.asset('assets/arrow_right_icon.png'),
                      ),
                    ),
                  );
                },
              ),
              // Expanded(
              //   child: Center(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Image.asset('assets/orders.png'),
              //         SizedBox(
              //           height: 16,
              //         ),
              //         TextWidget(
              //             text: "No Orders yet",
              //             fontSize: 24,
              //             fontWeight: FontWeight.w400),
              //         SizedBox(
              //           height: 24,
              //         ),
              //         ElevatedButton(
              //             onPressed: () {}, child: Text("Explore Categories"))
              //       ],
              //     ),
              //   ),
              // )
            ],
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
