import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const AdvanceUI());
}

class AdvanceUI extends StatelessWidget {
  const AdvanceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Sizedbox(
                height:80,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Icon(Icons.logo_dev_outlined),
                      TextButton.icon(
                        onPressed: (){},
                        label: Text("Close"),
                        )
                    ],
                  ),  
                ),
              ),

              ListTile(
                leading: Icon(Iconsax.image_outline),
                title: Text("Images"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Iconsax.circle_outline),
                title: Text("Videos"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Advance UI-UX"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(124, 212, 432, 123),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network("https://i.quotev.com/klqyz2bgaaaa.jpg"),
              Image.network(
                  "https://static.wikia.nocookie.net/naruto/images/2/27/Kakashi_Hatake.png/revision/latest/scale-to-width-down/300?cb=20230803224121"),
              CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

