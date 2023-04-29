import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

import 'bottomNavigation.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Image(image: AssetImage("assets/image/img1.jpg")),
        centerTitle: true,
        title: Text(
          "Grinler",
          style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            FontAwesomeIcons.solidEnvelope,
            size: 30,
          ),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _feed(),
            _feed(),
            _feed(),
            _feed(),
            _feed(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  Widget _feed() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    // backgroundColor: Colors.amber,
                    backgroundImage: AssetImage("assets/img.jpg"),
                  ),
                  SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Meme_baba",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "IERT, Prayagraj",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                // height= MediaQuery.of(context).size.height * 0.4,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 5),
                      Text(
                        "65K",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.retweet),
                      SizedBox(width: 8),
                      Text(
                        "2.2K",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.comment),
                      SizedBox(width: 5),
                      Text(
                        "2.2K",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.noteSticky,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
