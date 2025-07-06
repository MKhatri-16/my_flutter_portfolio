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
          "https://res.cloudinary.com/dtiw09juk/image/upload/v1751799589/Screenshot_20250705_201858_fgnj4h.jpg",
          "https://res.cloudinary.com/dtiw09juk/image/upload/v1751799590/Screenshot_20250705_202056_plrczf.jpg",
          "https://res.cloudinary.com/dtiw09juk/image/upload/v1751799590/Screenshot_20250705_202132_vq7e2v.jpg",
          "https://res.cloudinary.com/dtiw09juk/image/upload/v1751799590/Screenshot_20250705_202107_gtexjg.jpg",],
        projectDetail: [
            'User can draw like a paint in the application.',
          'User can ask friend to join for the drawing and both users can draw at the same time.',
          'As the user paints the instantly the other user gets the update as the firebase realtime database is used for getting the instant update.',
          'The user also changes the thickness and color of the line.'
        ]),

    Project(projectName: 'E-Commerece App',
          projectDescription: 'An eCommerce app where users can browse and order groceries seamlessly. - Built with RESTful API integration for backend communication and Flutter',
        projectImage: [],
        projectDetail: [
          'An  eCommerce app  where users can browse and order  groceries seamlessly',
        'User can browse, search and buy the grocery online.']),

  /*  Project(projectName: 'Cross-Platform Food Ordering System',
          projectDescription: 'Designed and developed a responsive food-ordering application using Flutter for both web and mobile platforms.',
                projectImage: [],
        projectDetail: ['Integrated RESTful APIs for smooth backend communication and dynamic content updates.',
          'Conducted rigorous manual testing and created comprehensive test cases, achieving a 99% defect-free launch.'],
    ),*/

    Project(projectName: 'Real-Time Advertisement & Data Exchange Application',
          projectDescription: 'Engineered a cross-platform solution facilitating real-time data transmission between devices.',
        projectImage: [],
        projectDetail: [
            'Developed a dynamic and responsive UI in Flutter, ensuring seamless interaction across devices.',
          'Integrated Socket.IO for real-time data updates and communication.',
          'Bridged communication between Flutter and native Android using Platform Channels, enhancing app interoperability.',
          'Implemented Nearby Connections API for secure, peer-to-peer device communication.',
          'Ensured data security by incorporating Encryption/Decryption APIs in Android.',
        ]),

    Project(projectName: 'Credit Card Comparison Platform',
          projectDescription: 'Built a user-focused application to help individuals make informed financial decisions through tailored credit card comparisons.',
        projectImage: [],
        projectDetail: ['Enabled secure social login using Firebase for a streamlined onboarding experience.',
          'With the responsive ui and the data which we are getting from RestFul Api the user can compare the two credit cards and decides which one is best to use.',
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