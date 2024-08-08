import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/grocery_item_tile.dart';
import 'package:flutter_application_1/modal/cart_model.dart';
import 'package:flutter_application_1/screens/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Menuepage extends StatelessWidget {
  const Menuepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[400],
        child: Icon(
          Icons.shopping_bag,
          color: Colors.white, // Set the icon color to white
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
      ),
      
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),

            // Welcome Text:
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Welcome To The Gorcery Store!",
                    style: GoogleFonts.cairo(
                        fontSize: 20.0, fontWeight: FontWeight.bold))),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Divider(),
            ),
            const SizedBox(height: 24),
                      Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      itemPath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index),
                    );
                  },
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
