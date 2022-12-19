import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //Liked By....
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(children: [
            Text('Liked by '),
            Text(
              'New User ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('and'),
            Text(
              ' 69 others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],)
        ),

        //Caption....
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text:
                    ' This is my first Sociogram post ever...'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}