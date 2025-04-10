import 'package:flutter/material.dart';
import '../models/attraction.dart';
import '../models/accommodation.dart';
import '../services/favorites_service.dart';
import '../widgets/accommodation_card.dart';
import 'accommodations_screen.dart';

class AttractionDetailsScreen extends StatefulWidget {
  final Attraction attraction;
  
  AttractionDetailsScreen({required this.attraction});
  
  @override
  _AttractionDetailsScreenState createState() => _AttractionDetailsScreenState();
}

class _AttractionDetailsScreenState extends State<AttractionDetailsScreen> {
  late bool _isFavorite;
  
  @override
  void initState() {
    super.initState();
    _isFavorite = FavoritesService.isFavorite(widget.attraction);
  }
  
  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        FavoritesService.removeFavorite(widget.attraction);
      } else {
        FavoritesService.addFavorite(widget.attraction);
      }
      _isFavorite = !_isFavorite;
    });
  }
  
  List<Accommodation> _getNearbyAccommodations() {
    return accommodationsList.where((accommodation) => 
      accommodation.attractionId == widget.attraction.id
    ).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    List<Accommodation> nearbyAccommodations = _getNearbyAccommodations();
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Image
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                widget.attraction.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: _isFavorite ? Colors.red : Colors.white,
                ),
                onPressed: _toggleFavorite,
              ),
            ],
          ),
          
          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.attraction.name,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 4),
                          Text(
                            widget.attraction.rating.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  // Location
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey, size: 16),
                        SizedBox(width: 4),
                        Text(
                          widget.attraction.location,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  
                  // Categories
                  Wrap(
                    spacing: 8,
                    children: widget.attraction.categories.map((category) {
                      return Chip(
                        label: Text(category),
                        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                      );
                    }).toList(),
                  ),
                  
                  // Description
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      widget.attraction.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  
                  // Map Placeholder
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.map, size: 48, color: Colors.grey),
                          Text('Peta Lokasi'),
                          Text(
                            'Lat: ${widget.attraction.latitude}, Long: ${widget.attraction.longitude}',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Nearby Accommodations
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Penginapan Terdekat',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AccommodationsScreen(
                                  attractionId: widget.attraction.id,
                                  attractionName: widget.attraction.name,
                                ),
                              ),
                            );
                          },
                          child: Text('Lihat Semua'),
                        ),
                      ],
                    ),
                  ),
                  
                  // Accommodations List
                  Container(
                    height: 220,
                    child: nearbyAccommodations.isEmpty
                        ? Center(
                            child: Text('Tidak ada penginapan terdekat'),
                          )
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: nearbyAccommodations.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: AccommodationCard(
                                  accommodation: nearbyAccommodations[index],
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

