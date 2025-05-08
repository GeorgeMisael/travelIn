import 'package:flutter/material.dart';
import '../models/accommodation.dart';
import '../widgets/accommodation_list_item.dart';

class AccommodationsScreen extends StatelessWidget {
  final int attractionId;
  final String attractionName;

  AccommodationsScreen({
    required this.attractionId,
    required this.attractionName,
  });

  List<Accommodation> _getAccommodations() {
    return accommodationsList
        .where((accommodation) => accommodation.attractionId == attractionId)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final accommodations = _getAccommodations();

    return Scaffold(
      appBar: AppBar(
        title: Text('Penginapan di sekitar $attractionName'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:
          accommodations.isEmpty
              ? Center(child: Text('Tidak ada penginapan tersedia'))
              : ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: accommodations.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: AccommodationListItem(
                      accommodation: accommodations[index],
                    ),
                  );
                },
              ),
    );
  }
}
