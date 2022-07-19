import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 50, 0, 25),
                      child: const CircleAvatar(
                        backgroundColor: Color.fromARGB(127, 189, 255, 215),
                        radius: 80,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/Hama2.jpg'),
                          radius: 75,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        "MOHAMMED JAMAL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 25),
                      width: 280,
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.3,
                          fontSize: 15,
                          color: Color(0xff727272),
                        ),
                      ),
                    ),
                    //------------------------------------------------------
                    Container(
                      width: 320,
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all<Color>(
                              const Color(0xff000000)),
                          elevation: MaterialStateProperty.all<double>(1),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffF3F2FF)),
                        ),
                        onPressed: () async {
                          const url =
                              'https://www.linkedin.com/in/mohammed-jamal-60ba8119a';
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const ListTile(
                          leading: Icon(
                            FontAwesomeIcons.linkedinIn,
                            color: Colors.black,
                          ),
                          title: Text(
                            "LinkedIn Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 320,
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all<Color>(
                              const Color(0xff000000)),
                          elevation: MaterialStateProperty.all<double>(1),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffC7E4FF)),
                        ),
                        onPressed: () async {
                          const url = 'https://www.facebook.com/Ga99.mb/';
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const ListTile(
                          leading: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Facebook Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      width: 320,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all<Color>(
                              const Color(0xff000000)),
                          elevation: MaterialStateProperty.all<double>(1),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffFFF2F2)),
                        ),
                        onPressed: () async {
                          const url =
                              'https://www.instagram.com/hamajamal____/';
                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const ListTile(
                          leading: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Instagram Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      width: 320,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all<Color>(
                              const Color(0xff000000)),
                          elevation: MaterialStateProperty.all<double>(1),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffFFFBF2)),
                        ),
                        onPressed: null,
                        child: const ListTile(
                          leading: Icon(
                            FontAwesomeIcons.safari,
                            color: Colors.black,
                          ),
                          title: Text(
                            "My Website",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //----------------------------------------
            Container(
              height: 170,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      onSurface: Colors.green,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      minimumSize: const Size(70, 70),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 40,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      onSurface: Colors.lightBlueAccent,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      minimumSize: const Size(70, 70),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.award,
                      color: Colors.blue,
                      size: 40,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/chat");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      onSurface: Colors.orangeAccent,
                      padding: const EdgeInsets.all(10),
                      minimumSize: const Size(70, 70),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.message,
                      color: Colors.orange,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
