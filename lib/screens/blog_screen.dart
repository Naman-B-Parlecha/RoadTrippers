import 'package:flutter/material.dart';
import 'package:test/models/post.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen(this.post, {super.key});
  Post post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Blog'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue[50],
                ),
                child: Text(post.title,
                    style:
                        TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(post.description, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 25),
                    Container(
                      height: 200,
                      width: double.infinity,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        post.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 25),
                    for (int i = 0; i < post.subtitle.length; i++)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(post.subtitle[i],
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500)),
                          SizedBox(height: 5),
                          Text(post.subdescription[i],
                              style: TextStyle(fontSize: 16)),
                          SizedBox(height: 20),
                        ],
                      )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
