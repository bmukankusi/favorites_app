import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext
 context) {
    final favorites = Provider.of<Favorites>(context);

    return Scaffold(
      appBar: AppBar(
        title: 
 const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favorites.items.length,
        itemBuilder: (context, index) {
          final item = favorites.items[index];
          return Card(

            child: ListTile(
              title: Text(item),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  favorites.removeItem(item);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}