import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget newsItem({context, index}) => InkWell(
  child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
    height: 280,
    width: 400,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue[200]),
              width: 400,
              height: 200,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue[200]),
              )
                 ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: Text(
                    " ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " ",
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);

