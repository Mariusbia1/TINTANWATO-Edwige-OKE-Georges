import 'package:flutter/material.dart';
import 'detail_candidats.dart';
import 'model.dart';
// Écran 1 : Liste des candidats
class CandidatesListPage extends StatefulWidget {
  @override
  _CandidatesListPageState createState() => _CandidatesListPageState();
}

class _CandidatesListPageState extends State<CandidatesListPage> {
  List<Candidate> candidates = [];

  void _addCandidate(Candidate candidate) {
    setState(() {
      candidates.add(candidate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Candidats'),
      ),
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (context, index) {
          return CandidateListItem(
            candidate: candidates[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CandidateDetailsPage(candidate: candidates[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCandidatePage(onAdd: _addCandidate),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
