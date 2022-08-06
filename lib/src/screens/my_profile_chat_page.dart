import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  void addANameAndATextToTheDB({
    required String name,
    required String text,
  }) async {
    await firebaseFirestore.collection('Messages').add({
      "Name": name,
      "Message": text,
    });
  }

  Future<QuerySnapshot<Map<String, dynamic>>> readTheMessages() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await firebaseFirestore
        .collection('Messages')
        .orderBy('timestamp', descending: false)
        .get();

    return querySnapshot;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide()),
              ),
              height: 50,
              child: const Center(
                child: Text(
                  "MESSAGES",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: firebaseFirestore.collection('Messages').snapshots(),
                  builder: ((context, snapshot) {
                    if (snapshot.data == null) {
                      return const Text('no data');
                    }
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            color: const Color(0xffF6F6F6),
                            border: Border.all(
                              color: const Color(0xff12BF42),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${snapshot.data!.docs[index]['Name']}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "${snapshot.data!.docs[index]['Message']}"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    );
                  }),

                  /*child: ListView.builder(
                    itemCount: mymessages.length,
                    itemBuilder: ((context, index) {
                      return Text(
                          '${mymessages[index].name} ${mymessages[index].message}');
                    }),
                  ),*/
                ),
              ),
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
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("SEND ME MESSAGE"),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      controller: messageController,
                      maxLines: 5,
                      decoration: const InputDecoration(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 275,
                          child: TextField(
                            controller: nameController,
                            maxLines: 1,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              fillColor: Color(0xffF6F6F6),
                              filled: true,
                              hintText: "NAME",
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
                        TextButton(
                          onPressed: () {
                            addANameAndATextToTheDB(
                              name: nameController.text,
                              text: messageController.text,
                            );

                            messageController.text = '';
                            nameController.text = '';
                          },
                          child: Container(
                            child: const Icon(
                              Icons.send_rounded,
                              size: 50,
                              color: Color(0xff00FF85),
                            ),
                          ),
                        ),
                      ],
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
