import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final color;
  void Function() ? onPressed;

   GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemPath,
    required this.onPressed,

    required this.color

  });

  @override
   Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Image.asset(
                itemPath,
                height: 64,
              ),
            ),

            // item name
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            MaterialButton(
              onPressed: onPressed, // Use the passed callback
              color: color,
              child: Text(
                '\$' + itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
