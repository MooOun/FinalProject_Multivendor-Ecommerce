import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryText extends StatelessWidget {
  final List<String> _categoryLable = [
    'เสื้อผู้ชาย',
    'เสื้อผู้หญิง',
    'กางเกงขาสั้น',
    'กางเกงยีนส์'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'หมวดหมู่สินค้า',
            style: TextStyle(fontSize: 19),
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categoryLable.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActionChip(
                          backgroundColor: Colors.green,
                          onPressed: () {},
                          label: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                _categoryLable[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
