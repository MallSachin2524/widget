import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contact extends StatefulWidget {
  final String name;
  final String mobile;
  const Contact({super.key, required this.name, required this.mobile});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 143, 142, 142),
        elevation: 0,
        actions: const [
          SizedBox(
            height: 5,
            // width: 45,
            // color: Colors.blue,
            child: Text(
              "Edit",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 141, 141)),

              width: 500,
              // color: Color.fromARGB(255, 141, 141, 141),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 99, 99, 99),
                    radius: 130,
                    child: Text(
                      widget.name.substring(0, 1),
                      style: const TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "always use: Primary >",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.name.toString(),
                    style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.message_rounded, color: Colors.white),
                              SizedBox(height: 3),
                              Text(
                                "messages",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              SizedBox(height: 3),
                              Text(
                                "mobile",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(height: 3),
                              Text(
                                "video",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.mail_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(height: 3),
                              Text(
                                "mail",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 246, 243, 243),
              height: 10,
            ),
            Container(
              // color: Color.fromARGB(255, 153, 153, 153),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),

                          // width: 400,
                          // height: 50,
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                                child: const Text(
                                  "A",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  "Contact Photo & Poster",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),

              width: Get.width,
              // height: 10,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      widget.mobile.toString(),
                      style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),

              width: Get.width,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Social Profile",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "+91 9623678461",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("social profile (Siri found in Whatsapp)"),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Aniket Godambe",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
