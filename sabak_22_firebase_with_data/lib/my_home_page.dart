import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('I Need To write MyDB'),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: _db.collection("data").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      Center(child: Text('Маалымат келген жок')),
                    ],
                  ),
                );
              }
              final user = snapshot.data!.docs;

              return ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    var adam = user[index].data() as Map<String, dynamic>;
                    return ListTile(
                      leading: Text("${index + 1}"),
                      title: Text(adam["name"] ?? "No Name"),
                      subtitle: Text(adam["email"] ?? "No Email"),
                    );
                  });
            }));
  }
}
