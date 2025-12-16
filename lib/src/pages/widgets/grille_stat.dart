import 'package:flutter/material.dart';

class GrilleStat extends StatelessWidget {
  const GrilleStat({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 190, 210, 230),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Ressenti",
                                style: TextStyle(
                                  color: Color.fromARGB(179, 41, 38, 38),
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 78, 56, 155).withOpacity(0.20),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  "24°",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Humidité",
                                style: TextStyle(
                                  color: Color.fromARGB(179, 41, 38, 38),
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 78, 56, 155).withOpacity(0.20),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  "43%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Pression",
                                style: TextStyle(
                                  color: Color.fromARGB(179, 41, 38, 38),
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 78, 56, 155).withOpacity(0.20),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  "1014 hPa",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                      ],
        )
    );
  }
}