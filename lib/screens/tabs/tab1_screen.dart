import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Tournaments'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('MAIN CUP', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 11)),
                      ),
                      const Text('Quarter-Final', style: TextStyle(color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text('Champions Cup 2026', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  const Text('16 Teams • Prize Pool \$50,000 • 8 eliminated', style: TextStyle(color: Colors.white60, fontSize: 13)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_events, color: Colors.black, size: 18),
                          label: const Text('Tournament Bracket'),
                          style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            const Text('Active Tournaments', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _buildTournamentCard('European Challenge Cup', 'Group Stage • Round 5 of 6', '32 teams', Icons.public),
            _buildTournamentCard('Capital Super Cup', 'Semi-Finals • Tomorrow 20:00', '4 teams', Icons.military_tech),
            _buildTournamentCard('Youth Premier League', 'Regular Season', '18 teams', Icons.sports_soccer),
          ],
        ),
      ),
    );
  }

  Widget _buildTournamentCard(String name, String stage, String count, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
            child: Icon(icon, color: AppTheme.primaryColor, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                Text(stage, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          ),
          Text(count, style: const TextStyle(color: AppTheme.secondaryColor, fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
