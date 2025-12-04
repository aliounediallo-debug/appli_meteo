import 'package:flutter/material.dart';

class GrandMeteo extends StatelessWidget {
  const GrandMeteo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF3B2E9B),
                            const Color(0xFF81ADD0),
                          ],
                        ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),

                            child: Wrap(
                              spacing: 8,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Dakar, Sénégal",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          "Jeudi, 4 FéDécembrevrier 2025",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.12),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.wb_sunny_outlined,
                                          color: Color.fromARGB(255, 240, 216, 6),
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "25°",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 92,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),

                                    
                                  ],
                                ),
                              ],
                            ),
    );
  }
}
