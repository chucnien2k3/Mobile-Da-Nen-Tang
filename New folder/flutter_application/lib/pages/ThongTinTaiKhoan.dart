import 'package:flutter/material.dart';
import 'package:flutter_application/Widgets/AppBarWidget.dart';
import 'package:flutter_application/Widgets/DrawerWidget.dart';

class ThongTinTaiKhoan extends StatelessWidget {
  const ThongTinTaiKhoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(),
              // Avatar
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              const SizedBox(height: 20),

              // Gmail
              const InfoCard(
                icon: Icons.email,
                label: 'Gmail',
                value: 'vkuviethan@gmail.com',
              ),

              const InfoCard(
                icon: Icons.person,
                label: 'Họ Và Tên',
                value: 'Việt Hàn',
              ),

              // Ngày sinh
              const InfoCard(
                icon: Icons.calendar_today,
                label: 'Ngày Sinh',
                value: '01/01/2000',
              ),

              // Số điện thoại
              const InfoCard(
                icon: Icons.phone,
                label: 'Số Điện Thoại',
                value: '0123456789',
              ),

              // Nút sửa
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Xử lý sự kiện sửa
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Màu đỏ cho nút
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 5), // Kích thước nút
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Chỉnh Sửa Thông Tin',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.red, size: 30),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
