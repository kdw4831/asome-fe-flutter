import 'package:asome/ui/page/initial_page.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final ThemeData themeData;

  CustomAppBar({
    super.key,
    required this.themeData, // 생성자 매개변수로 ThemeData 추가
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Asome'),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24
      ),
      centerTitle: true,
      backgroundColor: themeData.primaryColor,
      leading: IconButton(
        icon: const Icon(Icons.home), // 홈 버튼 아이콘
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => InitialPage()), // 로그인 페이지로 이동
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}