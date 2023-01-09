import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        width: 490,
        child: Padding(
          padding: const EdgeInsets.only(left: 90, top: 100, bottom: 60),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Container(height: 60,child: Text("Drawer",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.deepOrange,
                        Colors.deepOrangeAccent,
                        Colors.orange
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 40, right: 5),
                    child: ListView(
                      children:  [
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/35af6a41332353.57a1ce913e889.jpg"),
                          ),
                          title: const Text(
                            "Joseph Stein",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          subtitle: const Text(
                            "Admin",
                            style:
                                TextStyle(fontSize: 15, color: CupertinoColors.white),
                          ),
                          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.close_outlined),color: Colors.white,),
                        ),
                        const ListTile(
                          title: Text(
                            "Dashboard",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading:
                              Icon(Icons.dashboard_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Leads",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading:
                              Icon(Icons.leaderboard_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Clients",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading:
                              Icon(Icons.people_alt_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Projects",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading: Icon(Icons.rocket_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Partners",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading:
                              Icon(Icons.handshake_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Subscription",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading:
                              Icon(Icons.subscriptions_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Payments",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading: Icon(Icons.payment_outlined, color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Users",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading: Icon(Icons.supervised_user_circle_outlined,
                              color: Colors.white),
                        ),
                        const ListTile(
                          title: Text(
                            "Library",
                            style:
                                TextStyle(fontSize: 20, color: CupertinoColors.white),
                          ),
                          leading: Icon(Icons.menu_book_sharp, color: Colors.white),
                        ),
                        const SizedBox(height: 140,),
                        ListTile(
                          leading:
                              SizedBox(
                                height: 38,
                                width: 310,
                                child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                    ), child: const Text("Logout",style: TextStyle(fontSize: 20),),
                                ),
                              ),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
