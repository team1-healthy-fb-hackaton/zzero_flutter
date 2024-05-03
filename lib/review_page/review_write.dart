import 'package:flutter/material.dart';

class ReviewWrite extends StatefulWidget {
  const ReviewWrite({super.key});

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
            color: Colors.lightGreen, // 구분선 색상 설정해주기
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(

        ),
      ),
    );
  }
}
