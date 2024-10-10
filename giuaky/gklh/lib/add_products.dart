import 'package:flutter/material.dart';
import 'supabasehandler.dart';

class AddProductsPage extends StatefulWidget {
  const AddProductsPage({Key? key}) : super(key: key);

  @override
  _AddProductsPageState createState() => _AddProductsPageState();
}

class _AddProductsPageState extends State<AddProductsPage> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  Supabasehandler supabasehandler = Supabasehandler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thêm Sản Phẩm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: const InputDecoration(
                labelText: 'Nhập Tên Sản Phẩm',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _categoryController,
              decoration: const InputDecoration(
                labelText: 'Nhập Thể Loại',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Nhập Giá',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                String taskValue = _taskController.text;
                String categoryValue = _categoryController.text;
                double priceValue = double.tryParse(_priceController.text) ?? 0.0;

                if (taskValue.isNotEmpty && categoryValue.isNotEmpty && priceValue > 0) {
                  await supabasehandler.addData(taskValue, categoryValue, priceValue);
                  _taskController.clear();
                  _categoryController.clear();
                  _priceController.clear();
                  Navigator.pop(context); // Quay lại trang home
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Vui lòng nhập tên, thể loại và giá hợp lệ'),
                    ),
                  );
                }
              },
              child: const Text('Thêm Sản Phẩm'),
            ),
          ],
        ),
      ),
    );
  }
}
