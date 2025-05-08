import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomAuthStore extends AuthStore {
  static const _key = 'pb_auth';

  CustomAuthStore() : super();

  /// Memuat data autentikasi dari SharedPreferences ke memory
  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final auth = prefs.getString(_key);
    if (auth != null) {
      save(auth, null);
    }
  }

  /// Menyimpan data autentikasi ke SharedPreferences dan memory
  @override
  void save(String data, RecordModel? model) {
    // Simpan ke SharedPreferences
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString(_key, data);
    });

    // Simpan ke memory (panggil bawaan AuthStore)
    super.save(data, model);
  }

  /// Menghapus data autentikasi dari SharedPreferences dan memory
  @override
  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
    super.clear();
  }
}