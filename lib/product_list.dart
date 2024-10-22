import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';
import 'favorites_screen.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext 
 context) {
    // ignore: unused_local_variable
    final favorites = Provider.of<Favorites>(context);

    return Scaffold(
      appBar: AppBar(
        title:
 const Text(
  'Product List',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,),
  ),
      ),
      body: ListView.builder(
        itemCount: 12, 
        itemBuilder: (context, index) {
          final product = 'Product $index';
          return Card(
            child: ListTile(
              title: Text(product),
              trailing: FavoriteIconButton(product: product),
            ),
          );
        },
      ),
          floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const
    FavoritesScreen()),
        );
      },
      child: const Icon(Icons.star),
    ),
    );
  }
}

class FavoriteIconButton extends StatefulWidget {
  final String product;

  const FavoriteIconButton({super.key, required this.product});

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteIconButtonState createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> 
 {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context)
 {
    final favorites = Provider.of<Favorites>(context);

    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: isFavorite ? Colors.lightGreen : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
          if (isFavorite) {
            favorites.addItem(widget.product);
          } else {
            favorites.removeItem(widget.product);
          }
        });
      },
    );
  }
}