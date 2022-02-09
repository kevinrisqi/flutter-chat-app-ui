import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String desc =
        "macOS Catalina (version 10.15) is the sixteenth major release of macOS, Apple Inc.'s desktop operating system for Macintosh computers. It is the successor to macOS Mojave and was announced at WWDC 2019 on June 3, 2019 and released to the public on October 7, 2019. Catalina is the first version of macOS to support only 64-bit applications and the first to include Activation Lock.[3][4] It is also the last version of macOS to have the major version number of 10; its successor, Big Sur, released on November 12, 2020, is version 11.";

    String systemReq = "macOS Catalina officially runs on all standard configuration Macs that supported Mojave. 2010–2012 Mac Pros, which could run Mojave only with a GPU upgrade, are no longer supported.[4] Catalina requires 4 GB of memory, an increase over the 2 GB required by Lion through Mojave.[7][8]";
    
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/images/catalina.jpg'),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MacOS Catalina',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'California, United State',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text('4.2'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(height: 8),
                        Text('Call'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.navigation,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(height: 8),
                        Text('Route'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(height: 8),
                        Text('Share'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    desc + '\n\n' + systemReq,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
