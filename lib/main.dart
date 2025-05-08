import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_store.dart';

// Inisialisasi PocketBase dengan CustomAuthStore
final pb = PocketBase(
  'http://127.0.0.1:8090', // Ganti dengan URL PocketBase Anda yang sebenarnya
  authStore: CustomAuthStore(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Tambahkan log untuk debugging
  print('Starting application...');
  
  try {
    // Muat data autentikasi yang tersimpan
    await (pb.authStore as CustomAuthStore).load();
    print('Auth store loaded. Is valid: ${pb.authStore.isValid}');
  } catch (e) {
    print('Error loading auth store: $e');
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}