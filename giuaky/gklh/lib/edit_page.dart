import 'package:flutter/material.dart';
import 'supabasehandler.dart';

class EditPage extends StatefulWidget {
  final int id;
  final String currentName;
  final String currentCategory;
  final double currentPrice;

  const EditPage({
    Key? key,
    required this.id,
    required this.currentName,
    required this.currentCategory,
    required this.currentPrice,
  }) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  Supabasehandler supabasehandler = Supabasehandler();

  @override
  void initState() {
    super.initState();
    // các controller với dữ liệu
    _nameController.text = widget.currentName;
    _categoryController.text = widget.currentCategory;
    _priceController.text = widget.currentPrice.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cập Nhật Sản Phẩm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Tên Sản Phẩm',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _categoryController,
              decoration: const InputDecoration(
                labelText: 'Thể Loại',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Giá',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                String nameValue = _nameController.text;
                String categoryValue = _categoryController.text;
                double priceValue =
                    double.tryParse(_priceController.text) ?? 0.0;

                if (nameValue.isNotEmpty &&
                    categoryValue.isNotEmpty &&
                    priceValue > 0) {
                  await supabasehandler.updateData(
                    widget.id,
                    nameValue,
                    categoryValue,
                    priceValue,
                  );
                  Navigator.pop(context); // Quay về trang home
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Vui lòng nhập dữ liệu hợp lệ')),
                  );
                }
              },
              child: const Text('Cập Nhật'),
            ),
          ],
        ),
      ),
    );
  }
}
