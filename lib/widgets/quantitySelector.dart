import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _quantity = 1;

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) _quantity--;
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36, // ↓ Reduced height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25), // ↓ Slightly smaller radius
        border: Border.all(color: Colors.grey.shade300, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // --- Decrement Button ---
          SizedBox(
            width: 40, // ↓ Smaller button width
            height: 32,
            child: IconButton(
              icon: const Icon(Icons.remove, size: 18),
              color:
                  _quantity > 1 ? Colors.grey.shade700 : Colors.grey.shade400,
              onPressed: _decrementQuantity,
              padding: EdgeInsets.zero, // ↓ Removes extra padding
              splashRadius: 18,
            ),
          ),

          // --- Quantity Text ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '$_quantity',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // --- Increment Button ---
          SizedBox(
            width: 40,
            height: 32,
            child: IconButton(
              icon: const Icon(Icons.add, size: 18),
              color: Colors.grey.shade700,
              onPressed: _incrementQuantity,
              padding: EdgeInsets.zero,
              splashRadius: 18,
            ),
          ),
        ],
      ),
    );
  }
}
