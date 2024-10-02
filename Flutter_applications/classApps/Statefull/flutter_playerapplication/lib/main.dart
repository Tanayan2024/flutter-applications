import "package:flutter/material.dart";

void main() {
  runApp(const CricketPlayers());
}

class CricketPlayers extends StatefulWidget {
  const CricketPlayers({super.key});

  @override
  State createState() => _CricketPlayersState();
}

class _CricketPlayersState extends State {
  List<String> playerlist = [
    "https://i.pinimg.com/originals/c5/a3/7e/c5a37ef8148b0bc26890b4b19fc13e46.jpg",
    "https://pbs.twimg.com/media/GO7MmltW4AA0BzS.jpg",
    "https://c.ndtvimg.com/2024-05/el9dn8lg_shubman-gill-bcci_625x300_05_May_24.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605",
    "https://allsportsimages.in/images/blogs/fbwerwhrouwh3roy3w8ryhsenflewthlty4ythtahget84gg.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTUL4AcZK385PSD1vBo5PW1bcy_sREcrGk8w&s"
  ];
  int index = 0;
  List nameList = ["Name0", "Name1", "Name2", "Name3", "Name4"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 227, 157, 83),
        appBar: AppBar(
          title: const Text("CricketPlayers"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.network(playerlist[index]),
            ),
            const SizedBox(
              height: 400,
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (index < playerlist.length - 1) {
              index++;
            } else {
              index = 0;
            }
            setState(() {});
          },
          child: const Icon(Icons.skip_next_sharp),
        ),
      ),
    );
  }
}
