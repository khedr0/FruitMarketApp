import 'package:flutter/material.dart';

class sellerCardWidget extends StatelessWidget {
  const sellerCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image(
                image: AssetImage("assets/sellerLogo.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Seller name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/fizba.png"),
                        size: 20,
                      ),
                      Text(
                        " Delivery Charges : 0.5 KD",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/Ellipse 71.png"),
                        color: Colors.grey,
                      ),
                      Text(
                        "status",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ImageIcon(
                        AssetImage("assets/Ellipse 71.png"),
                        color: Colors.grey,
                      ),
                      Text("Type"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
