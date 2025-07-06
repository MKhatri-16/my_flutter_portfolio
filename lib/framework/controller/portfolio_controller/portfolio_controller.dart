import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final portfolioController  = ChangeNotifierProvider((ref) => PortfolioController());

/// Controller for the portfolio
class PortfolioController extends ChangeNotifier{

  /// Global keys for the sections
  final projectKey = GlobalKey();
  final skillsKey = GlobalKey();
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();

  /// Function to use scrolling to particular section
  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
  /// List of the projects
  final projectList= <Project>[
    Project(projectName: 'Draw Flawless',
        projectDescription: 'A drawing application which allow two users to draw together using room code. - Built with Firebase and Flutter',
        projectImage: [
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",], projectDetail: []),

    Project(projectName: 'E-Commerece App',
          projectDescription: 'An eCommerce app where users can browse and order groceries seamlessly. - Built with RESTful API integration for backend communication and Flutter',
        projectImage: [
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",], projectDetail: []),

  /*  Project(projectName: 'Cross-Platform Food Ordering System',
          projectDescription: 'Designed and developed a responsive food-ordering application using Flutter for both web and mobile platforms.',
        projectImage: [
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",],
        projectDetail: ['Integrated RESTful APIs for smooth backend communication and dynamic content updates.',
          'Conducted rigorous manual testing and created comprehensive test cases, achieving a 99% defect-free launch.'],
    ),*/

    Project(projectName: 'Real-Time Advertisement & Data Exchange Application',
          projectDescription: 'Engineered a cross-platform solution facilitating real-time data transmission between devices.',
        projectImage: [
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",], projectDetail: [
            'Developed a dynamic and responsive UI in Flutter, ensuring seamless interaction across devices.',
          'Integrated Socket.IO for real-time data updates and communication.',
          'Bridged communication between Flutter and native Android using Platform Channels, enhancing app interoperability.',
          'Implemented Nearby Connections API for secure, peer-to-peer device communication.',
          'Ensured data security by incorporating Encryption/Decryption APIs in Android.',
        ]),

    Project(projectName: 'Credit Card Comparison Platform',
          projectDescription: 'Built a user-focused application to help individuals make informed financial decisions through tailored credit card comparisons.',
        projectImage: [
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",
          "https://drive.google.com/uc?export=view&id=1sQeEb-1DbGATKUeoxhGRHXqQU5WkG6eg",],
        projectDetail: ['Enabled secure social login using Firebase for a streamlined onboarding experience.','With the responsive ui and the data which we are getting from RestFul Api the user can compare the two credit cards and decides which one is best to use.',
        'The user also check the offers for the credit cards and the lounges offers for the airport.'])
  ];
  /// Function to add value into the project list
  void addValueProjectList (Project project)
  {
    projectList.add(project);
    notifyListeners();
  }
}

class Project
{
  final String projectName;
  final String projectDescription;
  final List<String> projectDetail;
  final List<String> projectImage;
  Project({required this.projectName,required this.projectDetail, required this.projectDescription, required this.projectImage});
}