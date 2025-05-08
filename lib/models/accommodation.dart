class Accommodation {
  final int id;
  final String name;
  final String description;
  final String location;
  final String imageUrl;
  final double price;
  final double rating;
  final int attractionId; // ID atraksi terdekat
  final List<String> facilities;

  Accommodation({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.attractionId,
    required this.facilities,
  });
}

// Data contoh untuk aplikasi
List<Accommodation> accommodationsList = [
  // Akomodasi dekat Pantai Kuta (ID: 1)
  Accommodation(
    id: 101,
    name: 'Kuta Beach Resort',
    description: 'Resort mewah dengan pemandangan langsung ke Pantai Kuta.',
    location: 'Jl. Pantai Kuta No. 123, Bali',
    imageUrl: 'https://picsum.photos/id/1048/800/600',
    price: 1500000,
    rating: 4.6,
    attractionId: 1,
    facilities: ['Kolam Renang', 'WiFi', 'Sarapan', 'Spa'],
  ),
  Accommodation(
    id: 102,
    name: 'Kuta Paradiso Hotel',
    description: 'Hotel bintang 4 dengan lokasi strategis dekat Pantai Kuta.',
    location: 'Jl. Kartika Plaza No. 45, Bali',
    imageUrl: 'https://picsum.photos/id/1049/800/600',
    price: 1200000,
    rating: 4.4,
    attractionId: 1,
    facilities: ['Kolam Renang', 'WiFi', 'Restoran', 'Gym'],
  ),
  
  // Akomodasi dekat Candi Borobudur (ID: 2)
  Accommodation(
    id: 201,
    name: 'Manohara Hotel',
    description: 'Hotel dengan akses terdekat ke Candi Borobudur.',
    location: 'Jl. Badrawati, Magelang, Jawa Tengah',
    imageUrl: 'https://picsum.photos/id/1050/800/600',
    price: 950000,
    rating: 4.7,
    attractionId: 2,
    facilities: ['WiFi', 'Sarapan', 'Tur Candi'],
  ),
  Accommodation(
    id: 202,
    name: 'Plataran Heritage Borobudur',
    description: 'Resort mewah dengan pemandangan Candi Borobudur dan Gunung Merapi.',
    location: 'Jl. Candi Borobudur No. 10, Magelang',
    imageUrl: 'https://picsum.photos/id/1051/800/600',
    price: 1800000,
    rating: 4.8,
    attractionId: 2,
    facilities: ['Kolam Renang', 'WiFi', 'Spa', 'Restoran'],
  ),
  
  // Akomodasi dekat Gunung Bromo (ID: 3)
  Accommodation(
    id: 301,
    name: 'Bromo Cottage',
    description: 'Penginapan sederhana dengan lokasi strategis untuk melihat sunrise Bromo.',
    location: 'Desa Cemoro Lawang, Probolinggo',
    imageUrl: 'https://picsum.photos/id/1052/800/600',
    price: 500000,
    rating: 4.2,
    attractionId: 3,
    facilities: ['WiFi', 'Pemandangan Gunung', 'Tur Jeep'],
  ),
  Accommodation(
    id: 302,
    name: 'Jiwa Jawa Resort Bromo',
    description: 'Resort bergaya Eropa dengan pemandangan spektakuler Gunung Bromo.',
    location: 'Wonotoro, Sukapura, Probolinggo',
    imageUrl: 'https://picsum.photos/id/1053/800/600',
    price: 1600000,
    rating: 4.7,
    attractionId: 3,
    facilities: ['Restoran', 'WiFi', 'Teras Pemandangan', 'Tur Gunung'],
  ),
  
  // Akomodasi dekat TMII (ID: 4)
  Accommodation(
    id: 401,
    name: 'TMII Guest House',
    description: 'Penginapan nyaman dengan akses mudah ke Taman Mini Indonesia Indah.',
    location: 'Jl. Raya TMII, Jakarta Timur',
    imageUrl: 'https://picsum.photos/id/1054/800/600',
    price: 600000,
    rating: 4.0,
    attractionId: 4,
    facilities: ['WiFi', 'Parkir', 'Sarapan'],
  ),
  
  // Akomodasi dekat Raja Ampat (ID: 5)
  Accommodation(
    id: 501,
    name: 'Raja Ampat Dive Resort',
    description: 'Resort dengan akses langsung ke spot diving terbaik di Raja Ampat.',
    location: 'Pulau Waigeo, Raja Ampat',
    imageUrl: 'https://picsum.photos/id/1055/800/600',
    price: 2500000,
    rating: 4.9,
    attractionId: 5,
    facilities: ['Diving Center', 'WiFi', 'Restoran', 'Tur Pulau'],
  ),
  Accommodation(
    id: 502,
    name: 'Papua Paradise Eco Resort',
    description: 'Eco resort dengan bungalow di atas air dan pemandangan laut yang indah.',
    location: 'Pulau Birie, Raja Ampat',
    imageUrl: 'https://picsum.photos/id/1056/800/600',
    price: 3000000,
    rating: 4.8,
    attractionId: 5,
    facilities: ['Bungalow Air', 'Diving', 'Spa', 'Restoran'],
  ),
];