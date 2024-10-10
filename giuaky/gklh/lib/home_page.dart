import 'package:flutter/material.dart';
import 'package:gklh/add_products.dart';
import 'package:gklh/edit_page.dart';
import 'package:gklh/login_page.dart';
import 'supabasehandler.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Supabasehandler supabasehandler = Supabasehandler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 98, 191, 234),
        title: Text('Quản Lý Sản Phẩm'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await supabasehandler.signOut(); // Đăng xuất
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginPage()), // Quay lại trang login
              );
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: supabasehandler.readData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Lỗi: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('Không có dữ liệu.'));
          }

          // data thành danh sách
          final dataList = snapshot.data as List<dynamic>? ?? [];

          return ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              final item = dataList[index];

              return Container(
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  border: Border.all(
                      color: Colors.red, width: 1.0), 
                  borderRadius: BorderRadius.circular(10.0), 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center, 
                        crossAxisAlignment:
                            CrossAxisAlignment.start, 
                        children: [
                          Text('Sản Phẩm: ${item['name'] ?? 'Không tên'}'),
                          Text('Loại: ${item['category'] ?? 'Không thể loại'}'),
                          Text(
                              'Giá: ${item['price']?.toStringAsFixed(3) ?? '0.000'} VND'),
                        ],
                      ),
                    ),
                    Column(
                      // Tạo một Column cho các nút
                      mainAxisAlignment:
                          MainAxisAlignment.center, 
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditPage(
                                  id: item['id'],
                                  currentName: item['name'],
                                  currentCategory: item['category'],
                                  currentPrice: item['price'].toDouble(),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () async {
                            await supabasehandler.deleteData(item['id']);
                            setState(() {});
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddProductsPage(),
                    ),
                  ).then((value) =>
                      setState(() {})); // Làm mới
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
