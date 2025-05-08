class Attraction {
  final int id;
  final String name;
  final String description;
  final String location;
  final String imageUrl;
  final double rating;
  final List<String> categories;
  final double latitude;
  final double longitude;

  Attraction({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.imageUrl,
    required this.rating,
    required this.categories,
    required this.latitude,
    required this.longitude,
  });
}

// Data contoh untuk aplikasi
List<Attraction> attractionsList = [
  Attraction(
    id: 1,
    name: 'Pantai Kuta',
    description: 'Pantai terkenal di Bali dengan pemandangan sunset yang indah. Pantai ini merupakan salah satu destinasi wisata paling populer di Bali dengan pasir putih dan ombak yang cocok untuk berselancar.',
    location: 'Bali, Indonesia',
    imageUrl: 'https://picsum.photos/id/1036/800/600',
    rating: 4.5,
    categories: ['Pantai', 'Alam'],
    latitude: -8.7185,
    longitude: 115.1686,
  ),
  Attraction(
    id: 2,
    name: 'Candi Borobudur',
    description: 'Candi Buddha terbesar di dunia yang dibangun pada abad ke-9. Candi ini merupakan warisan budaya dunia yang dilindungi UNESCO dan menjadi salah satu keajaiban dunia.',
    location: 'Magelang, Jawa Tengah',
    imageUrl: 'https://picsum.photos/id/1037/800/600',
    rating: 4.8,
    categories: ['Budaya', 'Sejarah'],
    latitude: -7.6079,
    longitude: 110.2038,
  ),
  Attraction(
    id: 3,
    name: 'Gunung Bromo',
    description: 'Gunung berapi aktif yang terkenal dengan pemandangan matahari terbitnya yang spektakuler. Gunung Bromo terletak di Taman Nasional Bromo Tengger Semeru.',
    location: 'Jawa Timur, Indonesia',
    imageUrl: 'https://picsum.photos/id/1039/800/600',
    rating: 4.7,
    categories: ['Gunung', 'Alam'],
    latitude: -7.9425,
    longitude: 112.9530,
  ),
  Attraction(
    id: 4,
    name: 'Taman Mini Indonesia Indah',
    description: 'Taman rekreasi yang menampilkan keragaman budaya Indonesia dengan replika bangunan tradisional dari berbagai provinsi.',
    location: 'Jakarta, Indonesia',
    imageUrl: 'https://picsum.photos/id/1040/800/600',
    rating: 4.3,
    categories: ['Budaya', 'Sejarah'],
    latitude: -6.3022,
    longitude: 106.8951,
  ),
  Attraction(
    id: 5,
    name: 'Raja Ampat',
    description: 'Kepulauan dengan keindahan bawah laut yang luar biasa, menjadi surga bagi para penyelam dan pecinta alam.',
    location: 'Papua Barat, Indonesia',
    imageUrl: 'https://picsum.photos/id/1041/800/600',
    rating: 4.9,
    categories: ['Pantai', 'Alam'],
    latitude: -0.5000,
    longitude: 130.0000,
  ),
];