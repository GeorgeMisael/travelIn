class Attraction {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String location;
  final double rating;
  final List<String> categories;
  final double latitude;
  final double longitude;
  bool isFavorite;

  Attraction({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.location,
    required this.rating,
    required this.categories,
    required this.latitude,
    required this.longitude,
    this.isFavorite = false,
  });
}

// Sample data
List<Attraction> attractionsList = [
  Attraction(
    id: 1,
    name: 'Pantai Kuta',
    description: 'Pantai Kuta adalah salah satu pantai paling terkenal di Bali. Terkenal dengan pemandangan matahari terbenamnya yang indah, ombak yang cocok untuk berselancar, dan kehidupan malam yang ramai.',
    imageUrl: 'https://picsum.photos/id/1036/600/400',
    location: 'Bali, Indonesia',
    rating: 4.5,
    categories: ['Pantai', 'Surfing', 'Sunset'],
    latitude: -8.7184,
    longitude: 115.1686,
  ),
  Attraction(
    id: 2,
    name: 'Candi Borobudur',
    description: 'Candi Borobudur adalah candi Buddha terbesar di dunia yang dibangun pada abad ke-9. Monumen ini terdiri dari sembilan tumpukan platform dengan tiga tingkatan yang mewakili dunia Buddha.',
    imageUrl: 'https://picsum.photos/id/1037/600/400',
    location: 'Magelang, Jawa Tengah',
    rating: 4.8,
    categories: ['Sejarah', 'Budaya', 'Candi'],
    latitude: -7.6079,
    longitude: 110.2038,
  ),
  Attraction(
    id: 3,
    name: 'Taman Nasional Komodo',
    description: 'Taman Nasional Komodo adalah rumah bagi komodo, kadal terbesar di dunia. Taman ini juga memiliki pantai dengan pasir merah muda yang indah dan kehidupan bawah laut yang kaya.',
    imageUrl: 'https://picsum.photos/id/1039/600/400',
    location: 'Nusa Tenggara Timur',
    rating: 4.7,
    categories: ['Alam', 'Satwa Liar', 'Pantai'],
    latitude: -8.5852,
    longitude: 119.4413,
  ),
  Attraction(
    id: 4,
    name: 'Danau Toba',
    description: 'Danau Toba adalah danau vulkanik terbesar di dunia yang terbentuk dari letusan supervulkanik. Di tengah danau terdapat Pulau Samosir yang menawarkan budaya Batak yang kaya.',
    imageUrl: 'https://picsum.photos/id/1040/600/400',
    location: 'Sumatera Utara',
    rating: 4.6,
    categories: ['Danau', 'Budaya', 'Alam'],
    latitude: 2.6158,
    longitude: 98.8333,
  ),
  Attraction(
    id: 5,
    name: 'Raja Ampat',
    description: 'Raja Ampat adalah surga bagi penyelam dengan keanekaragaman hayati laut terkaya di dunia. Terdiri dari ratusan pulau kecil dengan laguna biru, pantai berpasir putih, dan terumbu karang yang menakjubkan.',
    imageUrl: 'https://picsum.photos/id/1041/600/400',
    location: 'Papua Barat',
    rating: 4.9,
    categories: ['Diving', 'Pulau', 'Alam'],
    latitude: -0.5000,
    longitude: 130.5000,
  ),
  Attraction(
    id: 6,
    name: 'Kawah Ijen',
    description: 'Kawah Ijen terkenal dengan fenomena api biru yang dapat dilihat di malam hari. Kawah ini juga memiliki danau asam terbesar di dunia dengan warna turquoise yang menakjubkan.',
    imageUrl: 'https://picsum.photos/id/1043/600/400',
    location: 'Jawa Timur',
    rating: 4.7,
    categories: ['Gunung', 'Hiking', 'Fenomena Alam'],
    latitude: -8.0583,
    longitude: 114.2417,
  ),
  Attraction(
    id: 7,
    name: 'Taman Mini Indonesia Indah',
    description: 'Taman Mini Indonesia Indah (TMII) adalah taman rekreasi budaya yang menampilkan berbagai aspek dari 34 provinsi Indonesia dalam bentuk replika bangunan tradisional.',
    imageUrl: 'https://picsum.photos/id/1044/600/400',
    location: 'Jakarta',
    rating: 4.3,
    categories: ['Budaya', 'Edukasi', 'Rekreasi'],
    latitude: -6.3022,
    longitude: 106.8951,
  ),
  Attraction(
    id: 8,
    name: 'Gunung Bromo',
    description: 'Gunung Bromo adalah gunung berapi aktif yang terkenal dengan pemandangan matahari terbitnya yang spektakuler. Terletak di Taman Nasional Bromo Tengger Semeru.',
    imageUrl: 'https://picsum.photos/id/1045/600/400',
    location: 'Jawa Timur',
    rating: 4.8,
    categories: ['Gunung', 'Sunrise', 'Hiking'],
    latitude: -7.9425,
    longitude: 112.9530,
  ),
];

