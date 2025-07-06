import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_portfolio/framework/controller/portfolio_controller/portfolio_controller.dart';
import 'package:my_flutter_portfolio/ui/screen/helper/project_list.dart';

class PortfolioWeb extends ConsumerWidget {
  const PortfolioWeb({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final portfolioWatch = ref.watch(portfolioController);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: const [
            SizedBox(width: 10),
            Text(""),
          ],
        ),
        actions: [
          NavItem(title: "Home", onTap: () {
            portfolioWatch.scrollToSection(portfolioWatch.homeKey);
          },),
          NavItem(title: "Projects", onTap: () {
            /// Gets scroll to the projects
            portfolioWatch.scrollToSection(portfolioWatch.projectKey);
          },),
          NavItem(title: "Tech Arsenal", onTap: () {
            /// Gets scroll to the skills
            portfolioWatch.scrollToSection(portfolioWatch.skillsKey); },),
          NavItem(title: "Let’s Connect", onTap: () {
            /// Gets scroll to the contact us
            portfolioWatch.scrollToSection(portfolioWatch.contactKey); },),
        ],
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
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                key: portfolioWatch.homeKey,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("👋 Who I Am",
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: 10),
                        Text(
                          "Hey there! I'm Muskan — a Flutter artisan crafting pixel-perfect, high-performance mobile experiences. Whether it’s sleek interfaces or seamless backend integration, I turn abstract ideas into stunning, scalable applications.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset("assets/images/muskan-removebg-preview.png"),
                  Spacer(),
                ],
              ),

              const SizedBox(height: 30),

              // 🚀 Featured Builds
              SectionTitle(title: "🚀 Projects",key: portfolioWatch.projectKey,),
              ProjectList(),

              const SizedBox(height: 30),

              // 🛠️ Tech Arsenal
              SectionTitle(title: "🛠️ Tech Arsenal",key: portfolioWatch.skillsKey,),
              Wrap(
                spacing: 10,
                runSpacing: 10,
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

              // 📬 Let’s Connect
              SectionTitle(title: "📬 Let’s Connect",key: portfolioWatch.contactKey,),
              ContactInfo(
                  icon: Icons.email,
                  text: "Let’s build something together → muskankhatri1612@gmail.com"),
              ContactInfo(
                  icon: Icons.link, text: "Code playground → github.com/MKhatri-16"),
              // ContactInfo(icon: Icons.phone, text: "Ping me → +91 96019 95550"),

              const SizedBox(height: 40),
              Center(
                child: Text(
                  "Crafted with ❤️ using Flutter",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final GestureTapCallback? onTap;
  const NavItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(title, style: const TextStyle(color: Colors.white)),
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
      child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListTile(
          title: Text(title, style: const TextStyle(color: Colors.white)),
          subtitle: Text(description, style: const TextStyle(color: Colors.white70)),
          trailing: const Icon(Icons.open_in_new, color: Colors.tealAccent),
        ),
      ),
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