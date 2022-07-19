import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            child: const Text("MESSAGES"),
          ),
          const Expanded(
            child: Text("hello"),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Color(0xffE9E9E9),
                ),
              ),
            ),
            height: 300,
            width: double.infinity,
            child: Column(
              children: [
                const Text("SEND ME MESSAGE"),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      fillColor: Color(0xffF6F6F6),
                      filled: true,
                      hintText: "MESSAGE",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffE9E9E9),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 250,
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            hintText: "MESSAGE",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xffE9E9E9),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: null, child: Icon(Icons.send_rounded))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
