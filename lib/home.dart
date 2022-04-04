import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controler.dart';

class IteamCart extends StatefulWidget {
  const IteamCart({required this.title, required this.price});

  final String title;
  final int price;

  @override
  State<IteamCart> createState() => _IteamCartState();
}

class _IteamCartState extends State<IteamCart> {
  final Controller cartController = Get.find();
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: ListTile(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.blue),
        ),
        trailing: Container(
          width: 200,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  counter != 0
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              counter--;
                              cartController.descrement(widget.price);
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: Colors.blue,
                          ))
                      : Container(),
                  Text(
                    "$counter",
                    style: TextStyle(color: Colors.blue),
                  ),
                  IconButton(
                      onPressed: (() => setState(() {
                            counter++;
                            cartController.increment(widget.price);
                          })),
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
