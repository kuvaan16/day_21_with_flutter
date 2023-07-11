import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/story_model.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: getUserStory.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedBorder(
                  dashPattern: [5],
                  borderType: BorderType.Circle,
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        //border: Border.all(style: BorderStyle.solid,color: Colors.white),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.post_add_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(
                        getUserStory[index].img,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      getUserStory[index].name,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage(
                          getUserStory[index].img,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        getUserStory[index].name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
            );
          }
        },
      ),
    );
  }
}
