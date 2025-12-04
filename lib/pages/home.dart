import 'package:flutter/material.dart';
import 'package:appli_meteo/widgets/grand_meteo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),

      appBar: AppBar(
                      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
                      centerTitle: true,
                      toolbarHeight: 120,

        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Row(
                  children: [
                    Image.asset("img/sun.png",
                      width: 28,
                      height: 28,
                      color: const Color.fromARGB(255, 223, 190, 3),
                    ),
                    const SizedBox(width: 6),
                    const Text(
                      "MÉTÉO",
                      style: TextStyle(
                        color: Color.fromARGB(255, 223, 190, 3),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

              
                TextButton(
                  onPressed: () {},

                  child: Wrap(
                    spacing: 7,
                      children: [
                        const Icon(  
                          Icons.settings,
                          color: Colors.white,
                        ),
                        const Text(
                          "Units",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 53, 46, 59), 
                    
                  ),
                ),
              ],
            ),

            
            

            const Text(
              "Comment va\nle temps\naujourd'hui ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color.fromARGB(255, 20, 20, 20),
              ),
            )
          ],
        ),
      ),

      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 16,
          children: [
            TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Entrer le nom d’une ville",
                        hintStyle: const TextStyle(
                          color: Colors.white,  
                          fontSize: 16,
                        ),
                         prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,   
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 53, 46, 59),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(),
                        ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},

                child: const Text(
                  "Rechercher",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const GrandMeteo(),
          ],
        ),
      ),
      
    );
  }
}
