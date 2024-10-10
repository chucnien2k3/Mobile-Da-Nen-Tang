import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:gklh/login_page.dart';

Future<void> main() async {
  // khởi tạo UI
  WidgetsFlutterBinding.ensureInitialized();
  // khởi tạo database
  await Supabase.initialize(
    url: 'https://citqlsqpcccnukoavtxg.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNpdHFsc3FwY2NjbnVrb2F2dHhnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjgwNTE5NzksImV4cCI6MjA0MzYyNzk3OX0.-VmgpMpQx2_bIeT7kTotPv0msbf60G49U1Eyv8VK0i4',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
