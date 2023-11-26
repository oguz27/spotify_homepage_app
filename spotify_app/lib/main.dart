import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spotify Ana Ekran',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            children: [top(), middle(), bottom()],
          ),
        ));
  }

  Container bottom() {
    return Container(
      height: 175,
      width: double.infinity,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 18, 18, 18)),
      child: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 160, 108, 19)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/opeth.png"),
                          radius: 35),
                    ),
                    Center(
                      child: Text(
                        "Cusp of Eternity - Opeth",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.devices,
                        color: Colors.grey,
                        size: 45,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.check_circle,
                        color: Color.fromARGB(255, 0, 255, 8),
                        size: 45,
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 45,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "Ana Sayfa",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "Ara",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.library_music_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "Kitaplığın",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded middle() {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        //decoration: const BoxDecoration(color: Color.fromARGB(255, 18, 18, 18)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromARGB(255, 18, 18, 18),
              Color.fromARGB(255, 20, 146, 65)
            ])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title("Merhaba"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      last_played(
                          "assets/images/opeth2.png",
                          "Opeth - Pale Communion",
                          Color.fromARGB(255, 0, 255, 8)),
                      last_played("assets/images/daily_mix1.png", "Daily Mix 1",
                          Color.fromARGB(255, 68, 68, 68)),
                      last_played("assets/images/liked_songs.png",
                          "Beğenilenler", Color.fromARGB(255, 68, 68, 68)),
                      last_played("assets/images/album_absolution.png",
                          "Muse - Absolution", Color.fromARGB(255, 68, 68, 68)),
                    ]),
              ),
              title("Senin İçin Hazırlandı"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    box("assets/images/daily_mix1.png","Daily Mix 1 ","Muse, Mastodon, Korn ve Daha Fazlası"),
                    box("assets/images/daily_mix.png","Daily Mix 2 ","Opeth, Draconian, Katatonia ve Daha Fazlası"),
                    box("assets/images/daily_mix3.png","Daily Mix 3 ","Nightwish, Theatre Of Tragedy, Epica ve Daha Fazlası"),
                    box("assets/images/daily_mix4.png","Daily Mix 4 ","Gojira, Ghost, Iron Maiden ve Daha Fazlası"),
                    box("assets/images/daily_mix5.png","Daily Mix 5 ","Sleep Dealer, Black Hill ve Daha Fazlası"),
                    box("assets/images/discover.png","Haftalık Keşif ","Muse, Mastodon, Korn ve Daha Fazlası")
                  ],
                ),
              ),
              title("Tavsiye Edilen İstasyonlar"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    box("assets/images/radio1.png","Pain of Salvation Radyo","OSI, Riverside, Spock's Beard ve Daha Fazlası ile"),
                    box("assets/images/radio2.png","Katatonia Radyo"," Swallow The Sun, My Dying Bride ve Daha Fazlası ile"),
                    box("assets/images/radio3.png","Mastodon Radyo"," Baroness, Meshuggah, Gojira ve Daha Fazlası ile"),
                    box("assets/images/radio4.png","Draconian Radyo","Trees of Eternity, Saturnus ve Daha Fazlası ile"),
                    box("assets/images/radio5.png","Gojira Radyo"," Meshuggah, Mastodon, Opeth ve Daha Fazlası ile"),
                    box("assets/images/radio6.png","Dream Theater Radyo","Liquid Tension Experiment, John Petrucci ve Daha Fazlası ile")
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Padding box(String asset_image, String name, String name2) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 39, 39, 39)),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          asset_image),
                      fit: BoxFit.fill)),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                              name,
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                              name2,
                              style: TextStyle(color: Color.fromARGB(255,167, 167, 167), fontSize: 6),
                            ),
          ),
          ],
        ),
      ),
    );
  }

  Padding title(String title) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }

  Padding last_played(String asset_image, String song_name, Color color) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(asset_image), fit: BoxFit.fill)),
          ),
          Container(
            height: 75,
            width: 175,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 68, 68, 68),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  song_name,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                Icon(
                  Icons.more_horiz,
                  color: color,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container top() {
    return Container(
      height: 150,
      width: double.infinity,
      //decoration: const BoxDecoration(color: Color.fromARGB(255, 18, 18, 18)),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color.fromARGB(255, 18, 18, 18),
            Color.fromARGB(255, 20, 146, 65)
          ])),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 45,
                    ),
                    SizedBox(width: 15),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 45,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.schedule,
                      color: Colors.white,
                      size: 45,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 45,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 41, 41, 41),
                  ),
                  child: const Text("Tümü",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 252, 252, 252),
                          fontSize: 19)),
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 41, 41, 41),
                  ),
                  child: const Text("Müzik",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 252, 252, 252),
                          fontSize: 19)),
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromARGB(255, 41, 41, 41),
                  ),
                  child: const Text("Podcastler",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 252, 252, 252),
                          fontSize: 19)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
