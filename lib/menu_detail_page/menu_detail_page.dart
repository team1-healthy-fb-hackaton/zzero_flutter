import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zzero/review_page/review_write.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool isSugar = true;
  bool isKcal = true;
  bool isDetail = false;
  bool isFav = false;
  bool isReview = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '상품 상세',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 270,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, top: 8),
                    child: Row(children: [
                      isSugar
                          ? Container(
                              margin: EdgeInsets.only(right: 4),
                              height: 32,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1,
                                      color: isSugar
                                          ? Color(0xFFADD67A)
                                          : Colors.white),
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
                              child: const Text(
                                '제로 슈거',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF414141),
                                  fontSize: 16,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          : Container(),
                      isKcal
                          ? Container(
                              height: 32,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1,
                                      color: isSugar
                                          ? Color(0xFFFF93AD)
                                          : Colors.white),
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
                            )
                          : Container()
                    ]),
                  ),
                )
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      if (index % 2 == 0) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _whereContainer(),
                            const SizedBox(width: 8),
                            _whereContainer()
                          ],
                        );
                      }
                      return Container(height: 5);
                    },
                  ),
                  SizedBox(height: 12),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            '라라스윗 저당 말차 초코바',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '가격',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '원',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: GestureDetector(
                          onTap: () {
                            isFav = !isFav;
                            setState(() {});
                          },
                          child: isFav
                              ? Icon(Icons.favorite,
                                  color: Colors.red, size: 32)
                              : Icon(Icons.favorite_border_outlined, size: 32),
                        ),
                      ),
                      const SizedBox(width: 16)
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    'n개의 유의해야할 감미료가 포함되어 있어요!',
                    style: TextStyle(
                        color: Color(0xFFFF6D2C),
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 6),
                  SizedBox(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, top: 8),
                            child: Text(
                              '대체감미료 (n개)',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: ShapeDecoration(
                                color: Color(0xFF13A284).withOpacity(0.3),
                                shape: OvalBorder(),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '괜찮아요',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 12),
                            Opacity(
                              opacity: 0.30,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFB00000),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '유의해요',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 12),
                            Opacity(
                              opacity: 0.30,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: ShapeDecoration(
                                  color: Colors.black,
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '데이터가 부족해요',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 11),
                        SizedBox(
                          height: 100,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    print('object');
                                    showDialog(
                                        context: context,
                                        builder: (context) => ShowDaChe());
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 4),
                                    width: 100,
                                    height: 100,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF13A284),
                                      shape: OvalBorder(),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 60,
                                      child: Text(
                                        '알룰로스',
                                        maxLines: 3,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const SizedBox(height: 12),
                  Container(
                    width: 343,
                    constraints: const BoxConstraints(minHeight: 56),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(height: 17),
                                  const Text(
                                    '원재료명, 영양정보 확인하기',
                                    style: TextStyle(
                                      color: Color(0xFF555555),
                                      fontSize: 16,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, 10),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    width: 48,
                                    height: 48,
                                    child: GestureDetector(
                                      onTap: () {
                                        isDetail = !isDetail;
                                        setState(() {});
                                      },
                                      child: isDetail
                                          ? const Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              size: 36)
                                          : const Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 36),
                                    )),
                              ),
                            )
                          ],
                        ),
                        isDetail
                            ? Container(
                                width: 343,
                                height: 159,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                child: Container())
                            : Container()
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            isReview = false;
                            setState(() {});
                          },
                          child: Text(
                            '상품 정보',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isReview
                                  ? Color(0xFF949494)
                                  : Color(0xFF555555),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            isReview = true;
                            setState(() {});
                          },
                          child: Text(
                            '리뷰',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isReview
                                  ? Color(0xFF949494)
                                  : Color(0xFF555555),
                              fontSize: 16,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  isReview
                      ? Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 16, top: 16),
                                  child: Row(
                                    children: [
                                      Text(
                                        '리뷰',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'num',
                                        style: TextStyle(
                                          color: Color(0xFFFF6D2C),
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ReviewWrite(
                                            ),
                                      ));
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width - 32,
                                  height: 52,
                                  alignment: Alignment.center,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF6D2C),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.edit_outlined,
                                            size: 24, color: Colors.white),
                                        SizedBox(width: 4),
                                        Text(
                                          '리뷰쓰기',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                              SizedBox(height: 24),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              width: 107,
                                              height: 32,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      width: 0.50,
                                                      color: Color(0xFF949494)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                '#맛 보장',
                                                style: TextStyle(
                                                  color: Color(0xFF555555),
                                                  fontSize: 14,
                                                  fontFamily: 'Pretendard',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              )),
                                          SizedBox(width: 6),
                                          Text(
                                            'num',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555555),
                                              fontSize: 16,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Container(
                                            width: 107,
                                            height: 32,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xFF949494)),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              '#다이어트 보장',
                                              style: TextStyle(
                                                color: Color(0xFF555555),
                                                fontSize: 14,
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            'num',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF555555),
                                              fontSize: 16,
                                              fontFamily: 'Pretendard',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 24),
                                  Container(
                                    height: 28,
                                    width: 1,
                                    color: Color(0xFFEAEAEA),
                                  ),
                                  SizedBox(width: 16),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/face3.png')),
                                                color: Colors.transparent),
                                          ),
                                          Text('num1')
                                        ],
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/face2.png')),
                                                color: Colors.transparent),
                                          ),
                                          Text('num2')
                                        ],
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/face1.png')),
                                                color: Colors.transparent),
                                          ),
                                          Text('num3')
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                height: 1,
                                thickness: 1,
                              ),
                              SizedBox(height: 16),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return _reviewContainer();
                                },
                              ),
                            ],
                          ),
                        )
                      : Container(
                          constraints: BoxConstraints(minHeight: 100),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _whereContainer() {
    return Container(
      width: 180,
      height: 36,
      padding: EdgeInsets.only(left: 8, top: 6, bottom: 6),
      decoration: ShapeDecoration(
        color: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            color: Colors.black,
          ),
          SizedBox(width: 8),
          Text('data')
        ],
      ),
    );
  }

  Widget _reviewContainer() {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 19,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF949494)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text(
                  '#맛 보장',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Container(
                alignment: Alignment.center,
                width: 82,
                height: 19,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF949494)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text(
                  '#다이어트 보장',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: const ShapeDecoration(
                  color: Color(0xFFF7F7F7),
                  shape: OvalBorder(),
                ),
              ),
              const Column(
                children: [
                  Text(
                    '닉네임',
                    style: TextStyle(
                      color: Color(0xFF414141),
                      fontSize: 14,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '2024. 05. 04',
                    style: TextStyle(
                      color: Color(0xFF949494),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/face1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: 4),
              Text('bla bla', maxLines: 2)
            ],
          )
        ],
      ),
    );
  }
}

class ShowDaChe extends StatefulWidget {
  const ShowDaChe({super.key});

  @override
  State<ShowDaChe> createState() => _ShowDaCheState();
}

class _ShowDaCheState extends State<ShowDaChe> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Container(
        width: 287,
        height: 158,
        constraints: const BoxConstraints(minHeight: 158),
        color: Colors.white,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          shadows: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
      ),
    );
  }
}
