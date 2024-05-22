// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../view_models/car_view_model.dart';

class PostTile extends StatelessWidget {
  final PostViewModel car;
  const PostTile({
    Key? key,
    required this.car,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      // BoxDecoration
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // car pic
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  car.imageUrl!,
                  width: 400,
                  height: 300,
                ),
              ),
            ),
            // ClipRRect
            // description
            Text(car.description!, style: TextStyle(color: Colors.black)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text(car.name!), Text(car.price.toString())],
                ),
                Icon(Icons.add)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
