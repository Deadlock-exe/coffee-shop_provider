import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CartCoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onPressed;
  final Icon icon;
  const CartCoffeeTile({
    super.key,
    required this.coffee,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
