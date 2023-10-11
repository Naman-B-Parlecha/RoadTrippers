// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UserProfile {
  final String name;
  final String email;
  final String phoneNumber;
  final String dob;
  final String gender;
  final File? profileImage;

  UserProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.dob,
    required this.gender,
    this.profileImage,
  });
}

class EditYourProfilePage extends StatefulWidget {
  const EditYourProfilePage({Key? key}) : super(key: key);

  @override
  _EditYourProfilePageState createState() => _EditYourProfilePageState();
}

class _EditYourProfilePageState extends State<EditYourProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  File? _profileImage;

  // Icon to indicate selected gender
  Icon? _selectedGenderIcon;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  void _saveChanges(BuildContext context) {
    final String newName = _nameController.text;
    final String newEmail = _emailController.text;
    final String newPhoneNumber = _phoneNumberController.text;
    final String newDOB = _dobController.text;
    final String newGender = _genderController.text;

    final updatedUserProfile = UserProfile(
      name: newName,
      email: newEmail,
      phoneNumber: newPhoneNumber,
      dob: newDOB,
      gender: newGender,
      profileImage: _profileImage,
    );

    Navigator.pop(context, updatedUserProfile);
  }

  // Function to show a gender selection dialog
  void _showGenderSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Gender'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text('Male'),
                onTap: () {
                  _genderController.text = 'Male';
                  // Set the selected gender icon
                  setState(() {
                    _selectedGenderIcon = const Icon(Icons.male);
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Female'),
                onTap: () {
                  _genderController.text = 'Female';
                  // Set the selected gender icon
                  setState(() {
                    _selectedGenderIcon = const Icon(Icons.female);
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Your Profile",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _profileImage != null
                      ? FileImage(
                          _profileImage!,
                        )
                      : const NetworkImage(
                          "https://c4.wallpaperflare.com/wallpaper/350/552/37/anime-anime-boys-monkey-d-luffy-one-piece-red-hd-wallpaper-preview.jpg",
                        ) as ImageProvider<Object>,
                ),
              ),
              const SizedBox(height: 14.0),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 14.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 14.0),
              TextFormField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
              const SizedBox(height: 14.0),
              TextFormField(
                controller: _dobController,
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                ),
              ),
              const SizedBox(height: 14.0),
              // Gender selection text field
              TextFormField(
                controller: _genderController,
                decoration: InputDecoration(
                  labelText: 'Gender',
                  // Display the selected gender icon as a prefix
                  prefixIcon: _selectedGenderIcon,
                ),
                onTap: () {
                  _showGenderSelectionDialog(context);
                },
              ),
              const SizedBox(height: 14.0),
              ElevatedButton(
                onPressed: () {
                  _saveChanges(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                child: Text(
                  'Save Changes',
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _dobController.dispose();
    _genderController.dispose();
    super.dispose();
  }
}
