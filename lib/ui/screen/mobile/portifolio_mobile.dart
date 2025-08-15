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
        title: const Text("Uvesh Portfolio", style: TextStyle(color: Colors.white)),
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
                  Text(
                    "Flutter & Android Developer Experienced in building responsive Flutter MOBILE & WEB applications with a focus on creating user- friendly designs and smooth functionality. Proficient in working with MVVM and DDD architectures, I ensure applications are well- structured, maintainable, and scalable. I’m passionate about crafting practical solutions that meet both user needs and project goals.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),
                    maxLines: 10,
                  ),
                   SizedBox(height: 20.h),
                ],
              ),
              const SizedBox(height: 30),
              SectionTitle(title: "🚀 Projects", key: portfolioWatch.projectKey),
              ProjectListMobile(),
              const SizedBox(height: 30),
              SectionTitle(title: "🛠️ Skills",key: portfolioWatch.skillsKey),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: const [
                  SkillChip(label: "Flutter & Dart"),
                  SkillChip(label: "Flutter Web"),
                  SkillChip(label: "Flutter Desktop"),
                  SkillChip(label: "State Management (Riverpod,Bloc)"),
                  SkillChip(label: "Socket.Io"),
                  SkillChip(label: "Responsive Design"),
                  SkillChip(label: "Custom Animations"),
                  SkillChip(label: "MVVM Architectures"),
                  SkillChip(label: "Firebase"),
                  SkillChip(label: "Git/Github"),
                  SkillChip(label: "Postman"),
                  SkillChip(label: "Socket.io"),
                  SkillChip(label: "Platform Channels"),
                  SkillChip(label: "Third Party SDKs"),
                  SkillChip(label: "BLE & Nearby Share"),
                  SkillChip(label: "Java"),
                  SkillChip(label: "Kotlin"),
                  SkillChip(label: "SQL"),
                  SkillChip(label: "Python"),
                  SkillChip(label: "HTML"),
                  SkillChip(label: "CSS"),
                  SkillChip(label: "JavaScript"),
                ],
              ),
              const SizedBox(height: 30),
              SectionTitle(title: "📬 Let’s Connect", key: portfolioWatch.contactKey),
              const ContactInfo(icon: Icons.email, text: "Let’s build something together → uveshmenpur.03@gmail.com"),
              const ContactInfo(icon: Icons.link, text: "Code playground → github.com/uveshm003"),
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
