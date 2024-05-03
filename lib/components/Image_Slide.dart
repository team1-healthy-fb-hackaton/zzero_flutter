import 'package:flutter/material.dart';

class ImageSlide extends StatelessWidget {
  final List<String> imageUrls; // 이미지 asset 경로들의 리스트

  ImageSlide({Key? key, required this.imageUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 150,
        child: PageView.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Container(
              child: Image.asset( // Image.network에서 Image.asset으로 변경
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
