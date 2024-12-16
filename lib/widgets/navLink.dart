import 'package:betatech/appColors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class NavLink extends StatelessWidget {
  final String title;
  final bool isActive;
  final Widget targetPage; // The page to navigate to
  final VoidCallback onTap;

  const NavLink({
    Key? key,
    required this.title,
    this.isActive = false,
    required this.targetPage,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Trigger custom page transition
        Navigator.of(context).push(_createRoute(targetPage));
        onTap(); // Call the provided callback for additional logic
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
            color: isActive
                ? ColorsManager.activeTextColor
                : ColorsManager.inactiveTextColor,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  // Create a custom page transition
  Route _createRoute(Widget targetPage) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => targetPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from the right
        const end = Offset.zero; // End at the current position
        const curve = Curves.easeInOut;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
