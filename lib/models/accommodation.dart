class Accommodation {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String location;
  final double rating;
  final double price;
  final List<String> amenities;
  final double latitude;
  final double longitude;
  final int attractionId;

  Accommodation({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.location,
    required this.rating,
    required this.price,
    required this.amenities,
    required this.latitude,
    required this.longitude,
    required this.attractionId,
  });
}

// Sample data
List<Accommodation> accommodationsList = [
  // Accommodations near Pantai Kuta (attractionId: 1)
  Accommodation(
    id: 1,
    name: 'Kuta Beach Resort',
    description: 'Resort mewah dengan pemandangan langsung ke Pantai Kuta. Dilengkapi dengan kolam renang infinity dan restoran tepi pantai.',
    imageUrl: 'https://picsum.photos/id/1048/600/400',
    location: 'Jl. Pantai Kuta No. 123, Bali',
    rating: 4.7,
    price: 1500000,
    amenities: ['Kolam Renang', 'WiFi', 'Sarapan', 'Spa', 'Gym'],
    latitude: -8.7180,
    longitude: 115.1680,
    attractionId: 1,
  ),
  Accommodation(
    id: 2,
    name: 'Kuta Sunset Hotel',
    description: 'Hotel nyaman dengan harga terjangkau, berjarak 5 menit berjalan kaki dari Pantai Kuta. Menawarkan kamar yang bersih dan nyaman.',
    imageUrl: 'https://picsum.photos/id/1049/600/400',
    location: 'Jl. Bakung Sari No. 45, Kuta, Bali',
    rating: 4.2,
    price: 750000,
    amenities: ['WiFi', 'Sarapan', 'Kolam Renang'],
    latitude: -8.7210,
    longitude: 115.1720,
    attractionId: 1,
  ),
  
  // Accommodations near Candi Borobudur (attractionId: 2)
  Accommodation(
    id: 3,
    name: 'Manohara Borobudur Resort',
    description: 'Resort yang terletak tepat di samping Candi Borobudur. Menawarkan akses khusus untuk melihat matahari terbit di candi.',
    imageUrl: 'https://picsum.photos/id/1050/600/400',
    location: 'Jl. Badrawati, Borobudur, Magelang',
    rating: 4.8,
    price: 1200000,
    amenities: ['WiFi', 'Sarapan', 'Tur Candi', 'Restoran'],
    latitude: -7.6075,
    longitude: 110.2040,
    attractionId: 2,
  ),
  Accommodation(
    id: 4,
    name: 'Plataran Heritage Borobudur',
    description: 'Hotel bergaya kolonial dengan pemandangan Candi Borobudur dan Gunung Merapi. Menawarkan pengalaman menginap yang mewah dan elegan.',
    imageUrl: 'https://picsum.photos/id/1051/600/400',
    location: 'Jl. Candi Borobudur No. 10, Magelang',
    rating: 4.6,
    price: 1800000,
    amenities: ['Kolam Renang', 'WiFi', 'Sarapan', 'Spa', 'Restoran'],
    latitude: -7.6100,
    longitude: 110.2030,
    attractionId: 2,
  ),
  
  // Accommodations near Taman Nasional Komodo (attractionId: 3)
  Accommodation(
    id: 5,
    name: 'Komodo Resort',
    description: 'Resort tepi pantai dengan bungalow pribadi. Menawarkan paket diving dan tur ke Pulau Komodo untuk melihat komodo.',
    imageUrl: 'https://picsum.photos/id/1052/600/400',
    location: 'Pulau Sebayur, Labuan Bajo',
    rating: 4.9,
    price: 2500000,
    amenities: ['Diving Center', 'WiFi', 'Restoran', 'Tur Komodo'],
    latitude: -8.5800,
    longitude: 119.4400,
    attractionId: 3,
  ),
  Accommodation(
    id: 6,
    name: 'Labuan Bajo Inn',
    description: 'Penginapan sederhana di pusat Labuan Bajo. Lokasi strategis dekat dengan pelabuhan untuk perjalanan ke Taman Nasional Komodo.',
    imageUrl: 'https://picsum.photos/id/1053/600/400',
    location: 'Jl. Soekarno Hatta No. 15, Labuan Bajo',
    rating: 4.0,
    price: 500000,
    amenities: ['WiFi', 'Sarapan', 'Tur Komodo'],
    latitude: -8.5500,
    longitude: 119.8800,
    attractionId: 3,
  ),
  
  // Accommodations near other attractions...
  // Danau Toba (attractionId: 4)
  Accommodation(
    id: 7,
    name: 'Samosir Villa Resort',
    description: 'Villa dengan pemandangan langsung ke Danau Toba. Dibangun dengan arsitektur tradisional Batak.',
    imageUrl: 'https://picsum.photos/id/1054/600/400',
    location: 'Tuktuk Siadong, Pulau Samosir',
    rating: 4.5,
    price: 900000,
    amenities: ['WiFi', 'Sarapan', 'Kayak', 'Tur Budaya'],
    latitude: 2.6200,
    longitude: 98.8350,
    attractionId: 4,
  ),
  
  // Raja Ampat (attractionId: 5)
  Accommodation(
    id: 8,
    name: 'Papua Paradise Eco Resort',
    description: 'Eco resort dengan bungalow di atas air. Menawarkan pengalaman menginap yang unik dengan akses langsung ke laut.',
    imageUrl: 'https://picsum.photos/id/1055/600/400',
    location: 'Pulau Birie, Raja Ampat',
    rating: 4.9,
    price: 3500000,
    amenities: ['Diving Center', 'WiFi', 'Restoran', 'Kayak'],
    latitude: -0.5100,
    longitude: 130.5100,
    attractionId: 5,
  ),
  
  // Kawah Ijen (attractionId: 6)
  Accommodation(
    id: 9,
    name: 'Ijen Resort & Villas',
    description: 'Resort pegunungan dengan pemandangan spektakuler ke Kawah Ijen. Titik awal yang sempurna untuk hiking ke kawah.',
    imageUrl: 'https://picsum.photos/id/1056/600/400',
    location: 'Desa Licin, Banyuwangi',
    rating: 4.7,
    price: 1300000,
    amenities: ['WiFi', 'Sarapan', 'Tur Kawah Ijen', 'Restoran'],
    latitude: -8.0550,
    longitude: 114.2450,
    attractionId: 6,
  ),
  
  // TMII (attractionId: 7)
  Accommodation(
    id: 10,
    name: 'Jakarta East Hotel',
    description: 'Hotel modern yang terletak 10 menit berkendara dari TMII. Menawarkan kamar yang nyaman dengan harga terjangkau.',
    imageUrl: 'https://picsum.photos/id/1057/600/400',
    location: 'Jl. Raya Bekasi Km. 25, Jakarta Timur',
    rating: 4.2,
    price: 650000,
    amenities: ['WiFi', 'Sarapan', 'Kolam Renang', 'Gym'],
    latitude: -6.3000,
    longitude: 106.9000,
    attractionId: 7,
  ),
  
  // Gunung Bromo (attractionId: 8)
  Accommodation(
    id: 11,
    name: 'Bromo Tengger Cottage',
    description: 'Cottage sederhana dengan pemandangan langsung ke Gunung Bromo. Lokasi ideal untuk melihat matahari terbit.',
    imageUrl: 'https://picsum.photos/id/1058/600/400',
    location: 'Desa Cemoro Lawang, Probolinggo',
    rating: 4.4,
    price: 800000,
    amenities: ['WiFi', 'Sarapan', 'Tur Bromo', 'Pemanas Ruangan'],
    latitude: -7.9420,
    longitude: 112.9540,
    attractionId: 8,
  ),
];

