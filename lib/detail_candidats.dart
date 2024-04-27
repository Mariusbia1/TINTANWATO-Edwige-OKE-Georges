import 'package:flutter/material.dart';
import 'model.dart';

// Écran 2 : Détails sur chaque candidat
class CandidateDetailsPage extends StatelessWidget {
  final Candidate candidate;

  CandidateDetailsPage({required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du Candidat'),
      ),
      body: Column(
        children: [
          Image(image: candidate.image),
          Text(candidate.name, style: Theme.of(context).textTheme.headline4),
          Text(candidate.details),
        ],
      ),
    );
  }
}

}