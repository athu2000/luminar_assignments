import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget openPopUp() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return List.generate(
            3,
            (index) => const PopupMenuItem(
                  child: Text('Setting'),
                ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            // Widget for the search
            const Icon(Icons.search),
            // Widget for implementing the three-dot menu
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (BuildContext context) {
                return List.empty();
              },
            ),
          ],
          backgroundColor: const Color(0xff128C7E),
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                  iconMargin: EdgeInsets.all(100),
                  child: Icon(
                    Icons.camera_alt_rounded,
                  )),
              Tab(
                child: Text('CHATS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('STATUS', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('CALLS', style: TextStyle(color: Colors.white)),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),

        // ! THE DESIGNED BODY
        body: const TabBarView(
          children: [
            Center(child: Text('Take a Picture')),
            ChatsTab(),
            Center(child: Text('Status Section')),
            Center(child: Text('Call Friends')),
          ],
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleChatWidget(
                chatTitle: "Monkey D. Luffy",
                chatMessage: 'Orewa Monkey D. Luffy, yoroshku',
                imageUrl:
                    'https://i0.wp.com/blog.indiegala.com/wp-content/uploads/2021/09/cover-4.jpg?fit=1200%2C900&ssl=1'),
            SingleChatWidget(
                chatTitle: "Roronoa Zoro",
                chatMessage: 'Im going to be the worlds greatest swordsman! All I have left is my destiny!',
                imageUrl:
                    'https://i.pinimg.com/originals/65/23/43/652343e839c6621c1c4739b89c218948.jpg'),
            SingleChatWidget(
                chatTitle: "Nami",
                chatMessage: "If you think I'm just another cute girl, you're dead wrong!",
                imageUrl:
                    'https://static.wikia.nocookie.net/fairypirates/images/d/dd/Nami.png/revision/latest?cb=20161022095010'),
            SingleChatWidget(
                chatTitle: "Usopp",
                chatMessage: 'I have sunk countless warship! People fear me as Captain Usopp, Lord of Destruction!',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPNNFNB1Ybz-KFEUAo2f5ZUFEhaNbTFa_IMw&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Sanji",
                chatMessage: 'Nami Swaaaaaannnn',
                imageUrl:
                    'https://i.pinimg.com/originals/e9/6f/83/e96f83a6a8c3c859a362470e8abe065f.jpg'),
            SingleChatWidget(
                chatTitle: "Chopper",
                chatMessage: 'I will do the best I can',
                imageUrl:
                    'https://i.ytimg.com/vi/MuxcbHeAz_U/hqdefault.jpg'),
            SingleChatWidget(
                chatTitle: "Nico Robin",
                chatMessage: 'When you have a hard time, just laugh',
                imageUrl:
                    'https://i.pinimg.com/736x/9e/b7/5c/9eb75cd71b4ba9bed3fbd72c00cb9ce7.jpg'),
            SingleChatWidget(
                chatTitle: "Franky",
                chatMessage: 'Suuuuperrr!!!',
                imageUrl:
                    'https://i.pinimg.com/originals/e6/91/50/e69150a83805e32909064a230a0992b0.jpg'),
          ],
        ),
      ),
    );
  }
}

class SingleChatWidget extends StatelessWidget {
  final String? chatMessage;
  final String? chatTitle;
  final String? imageUrl;

  const SingleChatWidget({
    Key? key,
    this.chatMessage,
    this.chatTitle,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl!),
        ),
        Expanded(
          child: ListTile(
            title: Text('$chatTitle',
                style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    '$chatMessage',
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ),
              ),
            ]),
            trailing: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Yesterday',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
