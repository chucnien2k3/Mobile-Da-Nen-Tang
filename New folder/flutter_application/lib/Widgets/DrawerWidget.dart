import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpg"),
              ),
              accountName: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "VKU",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              accountEmail: Text(
                "vkuviethan@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.red,
          ),
          // list danh muc
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text(
              "Trang Chủ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'trangChu');
            },
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            leading: Icon(
              Icons.person_pin_circle_outlined,
              color: Colors.red,
            ),
            title: Text(
              "Thông Tin Tài Khoản",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'thongTinTaiKhoan');
            },
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.heart_circle_fill,
              color: Colors.red,
            ),
            title: Text(
              "Công Thức Yêu Thích",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'congThucYeuThich');
            },
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            leading: Icon(
              Icons.share_sharp,
              color: Colors.red,
            ),
            title: Text(
              "Chia Sẻ Món Ăn",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'chiaSeMonAn');
            },
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            leading: Icon(
              Icons.share_sharp,
              color: Colors.red,
            ),
            title: Text(
              "Chia Sẻ Nước Uống",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'chiaSeNuocUong');
            },
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.settings_solid,
              color: Colors.red,
            ),
            title: Text(
              "Cài Đặt",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'caiDat');
            },
          ),

          Divider(
            color: Colors.red,
          ),

          ListTile(
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: Colors.red,
            ),
            title: Text(
              "Đăng Xuất",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          Divider(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
