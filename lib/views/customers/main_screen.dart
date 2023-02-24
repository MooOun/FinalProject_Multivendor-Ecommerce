import 'package:circular__mall/views/customers/nav_screens/account_screen.dart';
import 'package:circular__mall/views/customers/nav_screens/cart_screen.dart';
import 'package:circular__mall/views/customers/nav_screens/category_screen.dart';
import 'package:circular__mall/views/customers/nav_screens/home_screen.dart';
import 'package:circular__mall/views/customers/nav_screens/search_screen.dart';
import 'package:circular__mall/views/customers/nav_screens/store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value){
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/explore.svg',width: 20,),
            label: 'หมวดหมู่',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/shop.svg',width: 20,),
            label: 'ร้านค้า',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/cart.svg',width: 20,),
            label: 'ตะกร้า',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg',width: 20,),
            label: 'ค้นหา',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account.svg',width: 20,),
            label: 'บัญชีผู้ใช้',
          ),
        ],
      ),

      body: _pages[_pageIndex],
    );
  }
}
