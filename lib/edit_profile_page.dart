// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final String currentName;
  final String currentEmail;
  final String currentPhoneNumber;

  const EditProfilePage({
    super.key,
    required this.currentName,
    required this.currentEmail,
    required this.currentPhoneNumber,
  });

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // Updated user profile data
  late String updatedName;
  late String updatedEmail;
  late String updatedPhoneNumber;

  @override
  void initState() {
    super.initState();
    // Initialize updated data with current values
    updatedName = widget.currentName;
    updatedEmail = widget.currentEmail;
    updatedPhoneNumber = widget.currentPhoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Name
            buildDetailTextField(
              label: "Name",
              initialValue: updatedName,
              onChanged: (value) {
                setState(() {
                  updatedName = value;
                });
              },
            ),

            // Email
            buildDetailTextField(
              label: "Email",
              initialValue: updatedEmail,
              onChanged: (value) {
                setState(() {
                  updatedEmail = value;
                });
              },
            ),

            // Phone Number
            buildDetailTextField(
              label: "Phone Number",
              initialValue: updatedPhoneNumber,
              onChanged: (value) {
                setState(() {
                  updatedPhoneNumber = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Save and return the updated profile
                  final updatedProfile = UserProfile(
                    name: updatedName,
                    email: updatedEmail,
                    phoneNumber: updatedPhoneNumber,
                  );
                  Navigator.pop(context, updatedProfile);
                },
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDetailTextField({
    required String label,
    required String initialValue,
    required Function(String) onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            initialValue: initialValue,
            onChanged: onChanged,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfile {
  final String name;
  final String email;
  final String phoneNumber;

  UserProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });
}
