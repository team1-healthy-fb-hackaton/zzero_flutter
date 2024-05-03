import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameControl = TextEditingController();
  TextEditingController emaiilControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '회원가입',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF2C2C2C),
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // 구분선 높이
          child: Container(
            color: Color(0xFFFF6D2C), // 구분선 색상 설정해주기
            height: 1.0,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              '이름을 입력해주세요',
              style: TextStyle(
                color: Color(0xFF414141),
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 48,
              width: MediaQuery.sizeOf(context).width - 32,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: TextField(
                controller: nameControl,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              '이메일을 입력해주세요',
              style: TextStyle(
                color: Color(0xFF414141),
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 48,
              width: MediaQuery.sizeOf(context).width - 32,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: TextField(
                controller: emaiilControl,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              '비밀번호를 입력해주세요',
              style: TextStyle(
                color: Color(0xFF414141),
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 48,
              width: MediaQuery.sizeOf(context).width - 32,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: TextField(
                controller: passwordControl,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () async {
                //로직추가

                if ((nameControl.text != '') &&
                    (emaiilControl.text != '') &&
                    (passwordControl.text != '')) {
                  final url =
                      Uri.parse('http://43.202.131.213:8080/auth/sign-up');
                  final response = await http.post(url,
                      body: jsonEncode({
                        'email': emaiilControl.text,
                        'pwd': passwordControl.text,
                        'name': nameControl.text,
                      }),
                      headers: {
                        "Content-Type": "application/json",
                      });
                  if (response.statusCode == 200) {
                    Navigator.pop(context);
                  } else {
                    print(response.statusCode);
                  }
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.sizeOf(context).width - 32,
                height: 52,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFF6D2C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Text(
                  '가입 완료',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
