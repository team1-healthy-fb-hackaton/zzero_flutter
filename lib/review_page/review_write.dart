import 'package:flutter/material.dart';

class ReviewWrite extends StatefulWidget {
  final String imageUrl; // 이미지 URL
  final String brandName; // 상단 텍스트
  final String productName; // 하단 텍스트

  const ReviewWrite({
    super.key,
    required this.imageUrl,
    required this.brandName,
    required this.productName,
  });
  @override
  State<ReviewWrite> createState() => _ReviewWriteState();
}

class _ReviewWriteState extends State<ReviewWrite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        elevation: 0,
        centerTitle: true,
        title: Text(
            "리뷰 쓰기",
          style: TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // 구분선 높이
          child: Container(
            color: Color(0xFFFF6D2C), // 구분선 색상 설정해주기
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 96,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 24,bottom: 24,),
                child: Row(
                  children: [
                    Image.network(widget.imageUrl, width: 48,height: 48,),
                    SizedBox(width: 8,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.brandName, style: TextStyle(fontSize: 14,color: Color(0xFF6B6B6B)),),
                            Text(widget.productName, style: TextStyle(fontSize: 14,color: Color(0xFF2C2C2C)),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 134,
              color: Colors.white,
            ),
            SizedBox(height: 8,),
            Container(
              height: 134,
              color: Colors.white,
            ),
            SizedBox(height: 8,),
            Container(
              height: 134,
              color: Colors.white,
            ),
            SizedBox(height: 92,),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 343,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},//등록버튼 클릭시 실행
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF6D2C), // 버튼의 배경색을 주황색으로 설정
                shape: RoundedRectangleBorder( // 버튼의 모서리를 둥글게 처리
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                  "등록",
                style: TextStyle(color:Colors.white),
              ),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
