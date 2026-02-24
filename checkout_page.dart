import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    final nameController = TextEditingController();
    final addressController = TextEditingController();
    final phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Order Summary',
                style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            ...cart.itemsList.map(
              (item) => ListTile(
                title: Text(item.product.name),
                trailing: Text(
                    'Rp ${item.totalPrice.toStringAsFixed(0)}'),
              ),
            ),

            const Divider(),
            Text(
              'Total: Rp ${cart.totalPrice.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),
            const Text('Customer Information',
                style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            TextField(
              controller: nameController,
              decoration:
                  const InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: addressController,
              decoration:
                  const InputDecoration(labelText: 'Address'),
            ),
            TextField(
              controller: phoneController,
              decoration:
                  const InputDecoration(labelText: 'Phone Number'),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                cart.clear();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content:
                          Text('Order placed successfully!')),
                );
                Navigator.pop(context);
              },
              child: const Text('Confirm Order'),
            )
          ],
        ),
      ),
    );
  }
}