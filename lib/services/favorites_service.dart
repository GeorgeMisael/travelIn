import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/attraction.dart';

class FavoritesService {
  static const String _favoritesKey = 'favorites';
  static List<Attraction> _favorites = [];
  static bool _initialized = false;

  // Inisialisasi service
  static Future<void> _init() async {
    if (_initialized) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = prefs.getStringList(_favoritesKey) ?? [];
      
      _favorites = favoritesJson.map((json) {
        final Map<String, dynamic> data = jsonDecode(json);
        return Attraction(
          id: data['id'],
          name: data['name'],
          description: data['description'],
          location: data['location'],
          imageUrl: data['imageUrl'],
          rating: data['rating'].toDouble(),
          categories: List<String>.from(data['categories']),
          latitude: data['latitude'].toDouble(),
          longitude: data['longitude'].toDouble(),
        );
      }).toList();
      
      _initialized = true;
      print('FavoritesService initialized with ${_favorites.length} favorites');
    } catch (e) {
      print('Error initializing FavoritesService: $e');
      _favorites = [];
      _initialized = true;
    }
  }

  // Simpan favorit ke SharedPreferences
  static Future<void> _saveFavorites() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final favoritesJson = _favorites.map((attraction) => 
        jsonEncode({
          'id': attraction.id,
          'name': attraction.name,
          'description': attraction.description,
          'location': attraction.location,
          'imageUrl': attraction.imageUrl,
          'rating': attraction.rating,
          'categories': attraction.categories,
          'latitude': attraction.latitude,
          'longitude': attraction.longitude,
        })
      ).toList();
      
      await prefs.setStringList(_favoritesKey, favoritesJson);
      print('Saved ${_favorites.length} favorites to SharedPreferences');
    } catch (e) {
      print('Error saving favorites: $e');
    }
  }

  // Dapatkan semua favorit
  static Future<List<Attraction>> getFavorites() async {
    await _init();
    return List.from(_favorites);
  }

  // Cek apakah atraksi ada di favorit
  static Future<bool> isFavorite(Attraction attraction) async {
    await _init();
    return _favorites.any((fav) => fav.id == attraction.id);
  }

  // Tambah atraksi ke favorit
  static Future<void> addFavorite(Attraction attraction) async {
    await _init();
    if (!_favorites.any((fav) => fav.id == attraction.id)) {
      _favorites.add(attraction);
      await _saveFavorites();
      print('Added ${attraction.name} to favorites');
    }
  }

  // Hapus atraksi dari favorit
  static Future<void> removeFavorite(Attraction attraction) async {
    await _init();
    _favorites.removeWhere((fav) => fav.id == attraction.id);
    await _saveFavorites();
    print('Removed ${attraction.name} from favorites');
  }
}