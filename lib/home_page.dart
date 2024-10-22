import 'package:flutter/material.dart';
import 'product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
 [
            const Text(
              'Welcome to FavApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
 (context) => const ProductList()),
                );
              },
              child: const Text(
                'Go to Products List',
                style: TextStyle(
                  fontSize: 18,),
                ),
            ),
          ],
        ),
      ),
    );
  }
}