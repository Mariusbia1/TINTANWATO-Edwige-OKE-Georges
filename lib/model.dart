import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'formulaire.dart';
import 'detail_candidats.dart';

// Modèle de données pour un candidat
class Candidate {
  final String name;
  final String details;
  final ImageProvider image;

  Candidate({required this.name, required this.details, required this.image});
}

// Classe de composant pour l'élément de la liste des candidats
class CandidateListItem extends StatelessWidget {
  final Candidate candidate;
  final VoidCallback onTap;

  CandidateListItem({required this.candidate, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: candidate.image,
          ),
          title: Text(candidate.name),
          subtitle: Text(candidate.details),
        ),
      ),
    );
  }
}
