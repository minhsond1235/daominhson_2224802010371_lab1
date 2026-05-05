import 'package:flutter/material.dart';

void main() {
  // Hàm main là điểm bắt đầu của ứng dụng
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tắt biểu tượng debug ở góc màn hình
      title: 'Flutter Lab 1.3',
      home: Scaffold(
        // AppBar là thanh tiêu đề phía trên ứng dụng
        appBar: AppBar(
          title: const Text('Exploration of Widgets'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          // Column dùng để sắp xếp các widget theo hàng dọc
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Widget hiển thị văn bản
              const Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              
              // Tạo khoảng cách giữa các thành phần
              const SizedBox(height: 20),
              
              // Widget hiển thị hình ảnh từ thư mục assets
              // Đảm bảo bạn đã khai báo assets trong file pubspec.yaml
              Image.asset(
                'assets/images/flutter_logo.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
                // Hiển thị lỗi nếu không tìm thấy ảnh
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image_not_supported, size: 100, color: Colors.grey);
                },
              ),
              
              const SizedBox(height: 20),
              
              // Container đóng vai trò như một hộp chứa để tùy chỉnh giao diện
              Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.blue, // Màu nền của hộp
                  borderRadius: BorderRadius.circular(8), // Bo góc
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}