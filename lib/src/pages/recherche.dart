import 'package:flutter/material.dart';

class Recherche extends StatefulWidget {
  const Recherche({super.key});

  @override
  State<Recherche> createState() => _SearchPageState();
}

class _SearchPageState extends State<Recherche> {
  final TextEditingController controller = TextEditingController();

  void submit() {
    final city = controller.text.trim();
    if (city.isEmpty) return;
    Navigator.pop(context, city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 247),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 244, 247),
        title: const Text("Rechercher une ville"),titleTextStyle: const TextStyle(color: Color.fromARGB(255, 22, 22, 34)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Entrer le nom d’une ville",
                hintStyle: const TextStyle(color: Colors.white70),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: const Color.fromARGB(255, 89, 81, 97),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: (_) => submit(),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: submit,
                child: const Text(
                  "Rechercher",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
