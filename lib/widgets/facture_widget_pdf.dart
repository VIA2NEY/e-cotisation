import 'package:flutter/material.dart';

class AssignedPdfWidget extends StatelessWidget {
  const AssignedPdfWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.etat,
    this.pdfId,
    this.pdfUrl,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String date;
  final int etat;

  final int? pdfId;
  final String? pdfUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      tileColor: Colors.blue.withOpacity(0.05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      leading: Image.asset(imageUrl),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(date),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          getIconType(etat),
          const SizedBox(
            width: 10,
          ),
          Text(getTxtType(etat)),
          
        ],
      ),
    );
  }

  Widget getIconType(int etat) {
    switch (etat) {
      case -1: // Réjété
        return const Icon(Icons.dangerous,
            color: Color.fromARGB(255, 205, 33, 33));
      case 0: // En cours (En cours de redaction)
        return const Icon(Icons.priority_high, color: Colors.yellow);
      case 1: // En attente (Publié et en attente des signatires)
        return const Icon(Icons.help, color: Color.fromARGB(255, 55, 76, 161));
      case 2: // Signé
        return const Icon(Icons.check, color: Colors.green);
      default:
        return const Icon(Icons.priority_high, color: Colors.yellow);
    }
  }

  String getTxtType(int etat) {
    switch (etat) {
      case -1:
        return "Refusé";
      case 0:
        return "en cours";
      case 1:
        return "En Attent";
      case 2:
        return "signe";
      default:
        return "Signé";
    }
  }
}
