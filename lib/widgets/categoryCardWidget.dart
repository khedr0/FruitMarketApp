import 'package:flutter/cupertino.dart';

class CategoryCardWidget extends StatelessWidget {
  final String image;
  const CategoryCardWidget({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Image(
      image: AssetImage(image),
      height: 80,
    ));
  }
}
