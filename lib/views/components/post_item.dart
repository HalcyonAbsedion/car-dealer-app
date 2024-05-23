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
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      // BoxDecoration
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
          Text("${car.price!.toString()}\$",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontStyle: FontStyle.italic,
                  fontSize: 19,
                  fontWeight: FontWeight.w300)),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      car.name!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(car.description!)
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(12.0))),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
