import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Widgets/AppBarWidget.dart';
import 'package:flutter_application/Widgets/DrawerWidget.dart';

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Nội dung cuộn
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarWidget(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                          ],
                        ),
                        // tim kiem
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                CupertinoIcons.search,
                                color: Colors.red,
                              ),
                              Container(
                                height: 50,
                                width: 230,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Tìm Kiếm Món Ăn",
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Text(
                        "Danh Sách Chia Sẻ",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // ------------------
                    // Thêm các mục trong danh sách ở đây...
                    // Mã cho các mục danh sách
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 9),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 20, // Chiều rộng động
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 10,
                                offset: Offset(0, 3),
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, 'chiTietCongThucMonAn');
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "images/chay.png",
                                    height: 80,
                                    width: 150,
                                  ),
                                ),
                              ),
                              Container(
                                width: 160,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Chay",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Thể Loại: ...",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      "Mức Độ: Dễ",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(), // Thêm khoảng trống giữa phần tử
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    //------------------
                  ],
                ),
              ),
            ],
          ),

          // Nút thêm nổi
          Positioned(
            bottom: 30,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Hành động khi nhấn nút
                print("Nút Thêm được nhấn!");
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              backgroundColor: Colors.red,
              elevation: 8, // Độ nổi
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bo góc cho nút
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}
