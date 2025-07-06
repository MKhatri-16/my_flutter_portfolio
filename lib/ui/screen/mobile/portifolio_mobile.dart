import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/screen/helper/portfolio_list_mobile.dart';
import 'package:my_flutter_portfolio/ui/screen/helper/project_list.dart';

class PortfolioMobile extends ConsumerWidget {
  const PortfolioMobile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        elevation: 0,
        title: const Text("Muskan's Portfolio", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                key: portfolioWatch.homeKey,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("👋 Who I Am", style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
                   SizedBox(height: 10.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Hey there! I'm Muskan — a Flutter artisan crafting pixel-perfect, high-performance mobile experiences. Whether it’s sleek interfaces or seamless backend integration, I turn abstract ideas into stunning, scalable applications.",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                        ),
                      ),
                      Expanded(child: Image.asset("assets/images/muskan-removebg-preview.png", width: double.infinity)),
                    ],
                  ),
                   SizedBox(height: 20.h),
                ],
              ),
              const SizedBox(height: 30),
              SectionTitle(title: "🚀 Projects", key: portfolioWatch.projectKey),
              ProjectListMobile(),
              const SizedBox(height: 30),
              SectionTitle(title: "🛠️ Tech Arsenal", key: portfolioWatch.skillsKey),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: const [
                  SkillChip(label: "Flutter & Dart"),
                  SkillChip(label: "Firebase Suite"),
                  SkillChip(label: "RESTful Integrations"),
                  SkillChip(label: "State Management (Riverpod)"),
                  SkillChip(label: "Version Control (GitHub)"),
                  SkillChip(label: "Socket.Io"),
                  SkillChip(label: "Nearby Connections Google API"),
                  SkillChip(label: "Wireframing (Figma)"),
                  SkillChip(label: "Clean Architecture"),
                  SkillChip(label: "Micro-animations"),
                ],
              ),
              const SizedBox(height: 30),
              SectionTitle(title: "📬 Let’s Connect", key: portfolioWatch.contactKey),
              const ContactInfo(icon: Icons.email, text: "Let’s build something together → muskankhatri1612@gmail.com"),
              const ContactInfo(icon: Icons.link, text: "Code playground → github.com/MKhatri-16"),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  "Crafted with ❤️ using Flutter",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white)),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  const SkillChip({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.tealAccent.withOpacity(0.9),
      labelStyle: const TextStyle(color: Colors.black),
      elevation: 3,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContactInfo({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.tealAccent),
      title: Text(text, style: const TextStyle(color: Colors.white70)),
    );
  }
}
