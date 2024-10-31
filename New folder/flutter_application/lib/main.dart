import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/SplashScreen/splashScreen.dart';
import 'package:flutter_application/firebase_options.dart';
import 'package:flutter_application/login_page.dart';
import 'package:flutter_application/pages/CaiDat.dart';
import 'package:flutter_application/pages/ChiTietCTDPage.dart';
import 'package:flutter_application/pages/ChiTietCTPage.dart';
import 'package:flutter_application/pages/CongThucLuuPage.dart';
import 'package:flutter_application/pages/HomePage.dart';
import 'package:flutter_application/pages/ShareDrinkPage.dart';
import 'package:flutter_application/pages/SharePage.dart';
import 'package:flutter_application/pages/ThongTinTaiKhoan.dart';
import 'package:flutter_application/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Công Thức Món Ăn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) => SplashScreen(),
        "trangChu": (context) => HomePage(),
        "dangNhap": (context) => LoginPage(),
        "dangKy": (context) => SignUpPage(),
        "chiaSeMonAn": (context) => SharePage(),
        "chiaSeNuocUong": (context) => ShareDrinkPage(),
        "chiTietCongThucMonAn": (context) => ChiTietCTPage(),
        "chiTietCongThucNuocUong": (context) => ChiTietCTDPage(),
        "congThucYeuThich": (context) => CongThucLuuPage(),
        "thongTinTaiKhoan": (context) => ThongTinTaiKhoan(),
        "caiDat": (context) => CaiDat(),
      },
    );
  }
}

