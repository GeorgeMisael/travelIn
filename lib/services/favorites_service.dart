import '../models/attraction.dart';

class FavoritesService {
  static List<Attraction> _favorites = [];
  
  static List<Attraction> getFavorites() {
    return _favorites;
  }
  
  static void addFavorite(Attraction attraction) {
    if (!_favorites.any((fav) => fav.id == attraction.id)) {
      attraction.isFavorite = true;
      _favorites.add(attraction);
    }
  }
  
  static void removeFavorite(Attraction attraction) {
    _favorites.removeWhere((fav) => fav.id == attraction.id);
    attraction.isFavorite = false;
  }
  
  static bool isFavorite(Attraction attraction) {
    return _favorites.any((fav) => fav.id == attraction.id);
  }
}