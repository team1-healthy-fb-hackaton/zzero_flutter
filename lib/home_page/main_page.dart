import 'package:flutter/material.dart';
import 'package:zzero/category_page/category_page.dart';
import 'package:zzero/components/Image_Slide.dart';
import 'package:zzero/components/search_box.dart';

import '../components/category_tile.dart';


class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final TextEditingController _searchController = TextEditingController();

  final List<String> imageUrls = [
    'assets/images/ad1.png', // 로컬 이미지 자산 경로 예시
    'assets/images/ad2.png',
    'assets/images/ad3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        elevation: 0,
        leading: Container(
          width: 60,
          height: 60, //로고 사이즈 임의 설정
          // child: Image.asset('로고 파일 경로'),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey, //나중에 제거
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // 구분선 높이
          child: Container(
            color: Colors.lightGreen, // 구분선 색상 설정해주기
            height: 1.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16.0,),
          SearchBox(controller: _searchController,),//검색상자'
          SizedBox(height: 16.0,),
          ImageSlide(imageUrls: imageUrls),
          Container(
            alignment: Alignment.centerLeft, // 왼쪽 정렬
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "카테고리",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4, // 타일의 열 수 조정
              children: <Widget>[
                CategoryTile(
                  imagePath: 'assets/images/drink.png',//사진 넣어주기
                  title: '음료',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/icecream.png',//사진 넣어주기
                  title: '아이스크림',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),//페이지 라우팅 해주기
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/chocolate.png',//사진 넣어주기
                  title: '초콜릿',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),//페이지 라우팅 해주기
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/candy.png',//사진 넣어주기
                  title: '젤리/사탕',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),//페이지 라우팅 해주기
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/snack.png',//사진 넣어주기
                  title: '과자',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/bread.png',//사진 넣어주기
                  title: '빵',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),//페이지 라우팅 해주기
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/alchol.png',//사진 넣어주기
                  title: '술',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),//페이지 라우팅 해주기
                    );
                  },
                ),
                CategoryTile(
                  imagePath: 'assets/images/etc.png',//사진 넣어주기
                  title: '기타식품',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CategoryPage()),//페이지 라우팅 해주기
                    );
                  },
                ),
              ],
            ),
          ),
        Container(
          alignment: Alignment.centerLeft, // 왼쪽 정렬
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "랭킹",
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 박스 사이에 동일한 간격을 두기
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white
                  ),
                  height: 60,
                ),
              ),
              SizedBox(height: 16.0,),

              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white
                  ),
                  height: 60,
                ),
              ),
              SizedBox(height: 16.0,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white
                  ),
                  height: 60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
