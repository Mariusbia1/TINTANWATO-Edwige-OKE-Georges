// Écran 3 : Formulaire pour ajouter un candidat
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class AddCandidatePage extends StatefulWidget {
  final Function(Candidate) onAdd;

  AddCandidatePage({required this.onAdd});

  @override
  _AddCandidatePageState createState() => _AddCandidatePageState();
}

class _AddCandidatePageState extends State<AddCandidatePage> {
  final _nameController = TextEditingController();
  final _detailsController = TextEditingController();
  ImageProvider? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = NetworkImage(pickedFile.path);
      });
    }
  }

  void _submit() {
    if (_nameController.text.isNotEmpty && _detailsController.text.isNotEmpty && _image != null) {
      final candidate = Candidate(
        name: _nameController.text,
        details: _detailsController.text,
        image: _image!,
      );
      widget.onAdd(candidate);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un Candidat'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Nom'),
          ),
          TextField(
            controller: _detailsController,
            decoration: InputDecoration(labelText: 'Détails'),
          ),
          ElevatedButton(
            onPressed: _pickImage,
            child: Text('Choisir une image'),
          ),
          ElevatedButton(
            onPressed: _submit,
            child: Text('Ajouter'),
          ),
        ],
      ),
    );
  }
  }
