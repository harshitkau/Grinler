import 'package:flutter/material.dart';

import 'bottomNavigation.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "15k",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white54),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text(
                                "343",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white54),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 15,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ItzbDI0AhbD0tWSJ36z3Ih1Eg4sH_p9YAw&usqp=CAU"),
                    backgroundColor: Colors.red,
                    radius: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Meme Baba",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "I love to create humors with exciting memes using grinler app",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white54),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(240, 46, 101, 1)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Message",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(text: "All"),
                          Tab(text: "Photos"),
                          Tab(text: "Reels"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints.expand(),
                        child: TabBarView(children: [
                          Center(child: _grid()),
                          Center(child: _grid()),
                          Center(child: _grid()),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }

  Widget _grid() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        shrinkWrap: true,
        children: List.generate(
          20,
          (index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
