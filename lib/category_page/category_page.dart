import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zzero/category_page/category_page_container.dart';
import 'package:zzero/components/search_box.dart';

class CategoryPage extends StatefulWidget {
  final String sorting;
  const CategoryPage({super.key, required this.sorting});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isSugar = false;
  bool isKcal = false;
  List<String> urls = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  @override
  Widget build(BuildContext context) {
    String sort = widget.sorting;
    return Scaffold(
      appBar: AppBar(
        title: Text(sort),
        centerTitle: true,
        elevation: 1.2,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 20),
              SearchBox(
                controller: TextEditingController(),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      isSugar = !isSugar;
                      setState(() {});
                    },
                    child: Container(
                      height: 32,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1,
                              color:
                                  isSugar ? Color(0xFFADD67A) : Colors.white),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Text(
                        '제로 슈거',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF414141),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      isKcal = !isKcal;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 32,
                      width: 100,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1,
                              color: isKcal ? Color(0xFFFF93AD) : Colors.white),
                          borderRadius: BorderRadius.circular(999),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Text(
                        '제로 칼로리',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF414141),
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                  alignment: Alignment.topCenter,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: urls.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index % 3 == 0) {
                        if (index < urls.length - 2) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CategoryPageContaienr(url: urls[index]),
                                const SizedBox(width: 10),
                                CategoryPageContaienr(url: urls[index + 1]),
                                const SizedBox(width: 10),
                                CategoryPageContaienr(url: urls[index + 2])
                              ],
                            ),
                          );
                        }
                      }
                      return Container();
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
