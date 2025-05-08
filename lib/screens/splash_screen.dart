import 'package:flutter/material.dart';
import '../main.dart';
import 'login_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2), () {
        // Tambahkan log untuk debugging
        print("Auth state: ${pb.authStore.isValid}");
        return pb.authStore.isValid;
      }),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // Gunakan Navigator.pushReplacement untuk navigasi
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (snapshot.hasData && snapshot.data == true) {
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (_) => const HomeScreen())
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen())
            );
          }
        });

        // Tampilkan loading screen sementara
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}