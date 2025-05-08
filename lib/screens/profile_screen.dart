import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profil Saya',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 24),

              // Profile Header
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Pengguna',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'georgemisael@email.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Edit profile functionality
                      },
                      child: Text('Edit Profil'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 32),

              // Settings Section
              Text(
                'Pengaturan',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 16),

              _buildSettingsItem(
                context,
                icon: Icons.notifications,
                title: 'Notifikasi',
                subtitle: 'Atur notifikasi aplikasi',
              ),

              _buildSettingsItem(
                context,
                icon: Icons.language,
                title: 'Bahasa',
                subtitle: 'Bahasa Indonesia',
              ),

              _buildSettingsItem(
                context,
                icon: Icons.dark_mode,
                title: 'Tema',
                subtitle: 'Terang',
              ),

              SizedBox(height: 32),

              // App Info Section
              Text(
                'Informasi Aplikasi',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 16),

              _buildSettingsItem(
                context,
                icon: Icons.info,
                title: 'Tentang Aplikasi',
                subtitle: 'Versi 1.0.0',
              ),

              _buildSettingsItem(
                context,
                icon: Icons.help,
                title: 'Bantuan',
                subtitle: 'FAQ dan panduan pengguna',
              ),

              _buildSettingsItem(
                context,
                icon: Icons.privacy_tip,
                title: 'Kebijakan Privasi',
                subtitle: 'Informasi penggunaan data',
              ),

              SizedBox(height: 32),

              // Logout Button
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Logout functionality
                  },
                  icon: Icon(Icons.logout),
                  label: Text('Keluar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(200, 50),
                  ),
                ),
              ),

              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Navigate to respective settings screen
        },
      ),
    );
  }
}
