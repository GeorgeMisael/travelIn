import 'package:flutter/material.dart';
// import 'package:pocketbase/pocketbase.dart';
import '../models/attraction.dart';
import '../widgets/attraction_card.dart';
import '../widgets/category_chip.dart';
import 'attraction_details_screen.dart';
import 'login_screen.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Attraction> _filteredAttractions = attractionsList;
  String _selectedCategory = 'Semua';

  final List<String> _categories = [
    'Semua',
    'Pantai',
    'Gunung',
    'Budaya',
    'Sejarah',
    'Alam',
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterAttractions);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterAttractions() {
    setState(() {
      if (_searchController.text.isEmpty && _selectedCategory == 'Semua') {
        _filteredAttractions = attractionsList;
      } else {
        _filteredAttractions =
            attractionsList.where((attraction) {
              bool matchesSearch =
                  _searchController.text.isEmpty ||
                  attraction.name.toLowerCase().contains(
                    _searchController.text.toLowerCase(),
                  ) ||
                  attraction.description.toLowerCase().contains(
                    _searchController.text.toLowerCase(),
                  );

              bool matchesCategory =
                  _selectedCategory == 'Semua' ||
                  attraction.categories.contains(_selectedCategory);

              return matchesSearch && matchesCategory;
            }).toList();
      }
    });
  }

  void _selectCategory(String category) {
    setState(() {
      _selectedCategory = category;
      _filterAttractions();
    });
  }

  Future<void> _signOut(BuildContext context) async {
    pb.authStore.clear();
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = pb.authStore.model;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Bar with User Info and Logout
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jelajahi',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        'Selamat datang, ${user?.data['email'] ?? 'Pengguna'}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () => _signOut(context),
                    tooltip: 'Logout',
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Cari tempat wisata...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // Categories
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CategoryChip(
                      label: _categories[index],
                      isSelected: _selectedCategory == _categories[index],
                      onTap: () => _selectCategory(_categories[index]),
                    ),
                  );
                },
              ),
            ),

            // Attractions List
            Expanded(
              child:
                  _filteredAttractions.isEmpty
                      ? const Center(
                        child: Text('Tidak ada hasil yang ditemukan'),
                      )
                      : ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: _filteredAttractions.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: AttractionCard(
                              attraction: _filteredAttractions[index],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AttractionDetailsScreen(
                                          attraction:
                                              _filteredAttractions[index],
                                        ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
