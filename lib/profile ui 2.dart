import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: ProfileUI2(),
  ));
}

class ProfileUI2 extends StatelessWidget {
  static String id = 'ProfileUiTwoHome';

  const ProfileUI2({super.key});

  @override
  Widget build(BuildContext context) {
    List list1 = [
      ['Privacy', Icons.privacy_tip_outlined],
      ['Purchase History', Icons.history],
      ['Help & Support', Icons.help_outline],
      ['Settings', Icons.settings_outlined],
      ['Invite Friends', Icons.person_add_alt_outlined],
      ['Logout', Icons.logout],
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back,size: 30,)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.segment, size: 30,))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdFwkKpx7khQI7RYi5-JhdCQv8ckx2PiPxbWY3zn0yVg&s'),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
                const SizedBox(width: 18),
                const CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 18),
                CircleAvatar(
                  backgroundColor: Colors.blue.shade700,
                  child: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 18),
                const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                  size: 40,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              title: Text(
                'Jonathan Duncan',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                '@Developer',style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Mobile App Developer',
              style: TextStyle(fontSize: 30, color: Colors.grey.shade800),
            ),
            Expanded(
                child: ListView.separated(
              itemCount: list1.length,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(50)),
                child: ListTile(
                  leading: Icon(list1[index][1]),
                  title: Text(list1[index][0],style: TextStyle(fontSize: 20),),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 15),
            ))
          ],
        ),
      ),
    );
  }
}
