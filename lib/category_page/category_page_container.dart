import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zzero/menu_detail_page/menu_detail_page.dart';

class CategoryPageContaienr extends StatefulWidget {
  const CategoryPageContaienr({super.key});

  @override
  State<CategoryPageContaienr> createState() => _CategoryPageContaienrState();
}

class _CategoryPageContaienrState extends State<CategoryPageContaienr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuPage()));
            },
            child: Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            '라라스윗 저당 말차 초코바',
            maxLines: 3,
            style: TextStyle(
              color: Color(0xFF2C2C2C),
              fontSize: 14,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '12,500원',
                  style: TextStyle(
                    color: Color(0xFF2C2C2C),
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.chat,
                      size: 12,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 1),
                    Text(
                      'num1',
                      style: TextStyle(
                        color: Color(0xFF949494),
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.favorite,
                      size: 12,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 1),
                    Text(
                      'num2',
                      style: TextStyle(
                        color: Color(0xFF949494),
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
