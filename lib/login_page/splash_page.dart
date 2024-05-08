import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zzero/login_page/login_page.dart';
import 'package:zzero/login_page/register_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
          
            child: Column(
              children: [
                SizedBox(height: 250),
                Text(
                  '건강하고 맛있는 찐 제로식품 소비를 위한',
                  style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/biglogo.png'))),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 343,
                    height: 52,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFF6D2C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Text(
                      '회원가입',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 343,
                    height: 52,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFFF6D2C)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      '로그인',
                      style: TextStyle(
                        color: Color(0xFF808080),
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
