import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Widgets/AppBarWidget.dart';
import 'package:flutter_application/Widgets/DrawerWidget.dart';
import 'package:flutter_application/Widgets/MoiNhatDWidget.dart';
import 'package:flutter_application/Widgets/MoiNhatWidget.dart';
import 'package:flutter_application/Widgets/PhoBienWidget.dart';
import 'package:flutter_application/Widgets/PhoBienDWidget.dart';
import 'package:flutter_application/Widgets/TheLoaiWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        AppBarWidget(),
        // tim kiem
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Tìm Kiếm Công Thức",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list),
                ],
              ),
            ),
          ),
        ),

        // the loai
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            "Thể Loại Món Ăn",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // the loai
        TheLoaiWidget(),

        // the loai
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            "Thể Loại Nước Uống",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // the loai
        TheLoaiWidget(),

        // pho bien
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            "Món Ăn Phổ Biến",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ), 
        ),

        // pho bien widget
        PhoBienWidget(),

        // pho bien
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            "Nước Uống Phổ Biến",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ), 
        ),

        // pho bien widget
        PhoBienDWidget(),

        // moi nhat
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            "Món Ăn Mới Nhất",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ), 
        ),

        // moi nhat widget
        MoiNhatWidget(),

        // moi nhat
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Text(
            "Nước Uống Mới Nhất",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ), 
        ),

        // moi nhat widget
        MoiNhatDWidget(),
      ],
    ),

    // appbar
    drawer: DrawerWidget(),        
    );
  }
}
