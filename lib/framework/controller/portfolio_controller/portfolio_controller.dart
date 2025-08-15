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
  final projectList = <Project>[

    Project(
      projectName: 'Dasher - Multi-Functional Delivery Robot',
      projectDescription:
      'A multi-functional delivery robot with two Android displays, featuring nine integrated panels for control, advertisement, order management, and more.',
      projectImage: [],
      projectDetail: [
        'The project consists of 9 panels, 2 of which were led by me.',
        'Main Panel: Allows robot control via serial commands based on ROS SDK integrated with an Android app.',
        'Advertisement Panel: Displays dynamic content (videos, animations, images) linked to robot actions. Includes a remote application for file transfer and scheduling.',
        'User Panel: Enables customers to place orders.',
        'Operator Panel: Allows order management and delivery.',
        'Admin Panel: Manages configurations for other panels.',
        'Technologies Used: ROS SDK, BLE, Nearby Connections API, Firebase Tools, Dynamic Theme & Forms, Platform Channels, Platform View, Socket.IO.',
      ],
    ),
    Project(
      projectName: 'Odigo',
      projectDescription:
      'A robot designed for advertisement display in public spaces such as malls and airports.',
      projectImage: [],
      projectDetail: [
        'Features two mirrored displays managed through a single controller.',
        'Includes a single control panel for robot operations.',
        'Technologies Used: Flutter, Platform Channels, ROS SDK, Socket.IO.',
      ],
    ),
    Project(
      projectName: 'Medigo',
      projectDescription:
      'A healthcare application that connects to medical devices via Bluetooth for patient monitoring and reminders.',
      projectImage: [],
      projectDetail: [
        'Track blood pressure and ECG data from connected devices.',
        'Receive medication reminders and health notifications.',
        'Technologies Used: Flutter, BLE integration, Medigo SDK Integration.',
      ],
    ),
    Project(
      projectName: 'Be My Hand',
      projectDescription:
      'An academic project aimed at connecting disabled students with writers for exams.',
      projectImage: [],
      projectDetail: [
        'Facilitates pairing between students and writers during exams.',
        'Technologies Used: Flutter, Firebase.',
      ],
    ),
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