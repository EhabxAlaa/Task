import 'package:flutter/material.dart';

void main() {
  runApp(const ContactsApp());
}

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts App',
      home: ContactsScreen(
        contacts: [
          {'name': 'Lucas Smith', 'email': 'lucas.smith@example.com'},
          {'name': 'Natalie Patel', 'email': 'natalie.patel@example.com'},
          {'name': 'Isaac Brown', 'email': 'isaac.brown@example.com'},
          {'name': 'Sophia Davis', 'email': 'sophia.davis@example.com'},
          {'name': 'Ethan Wilson', 'email': 'ethan.wilson@example.com'},
          {'name': 'Chloe Lee', 'email': 'chloe.lee@example.com'},
          {'name': 'Mason Martinez', 'email': 'mason.martinez@example.com'},
          {'name': 'Avery Johnson', 'email': 'avery.johnson@example.com'},
          {'name': 'Madison Anderson', 'email': 'madison.anderson@example.com'},
          {'name': 'Alexander Wright', 'email': 'alexander.wright@example.com'},
          {'name': 'Olivia Lewis', 'email': 'olivia.lewis@example.com'},
          {'name': 'Liam Campbell', 'email': 'liam.campbell@example.com'}
        ],
      ),
    );
  }
}

class ContactsScreen extends StatelessWidget {
  final List<Map<String, String>> contacts;

  const ContactsScreen({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(contact['name']![0]),
            ),
            title: Text(contact['name']!),
            subtitle: Text(contact['email']!),
          );
        },
      ),
    );
  }
}
