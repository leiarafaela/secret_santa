import 'package:flutter/material.dart';
import 'package:secret_santa/functions/sheet_functions.dart';
import 'package:secret_santa/pages/profile_page.dart';
import 'package:secret_santa/sheets/create_group_sheet.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F76B0),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Bora de amigo secreto!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const Text(
                    'Convide amigos e famíliares para participar!\nSó precisa do nome e WhatsApp dos integrantes.',
                    style: TextStyle(
                      color: Color(
                        0xFF8DACFD,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () async {
                        openSheet(
                          context: context,
                          sheet: const CreateGroupSheet(),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                              textAlign: TextAlign.center,
                              'Você ainda não possui um grupo.\nClique abaixo para criar!'),
                          Icon(
                            Icons.add_box_rounded,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
