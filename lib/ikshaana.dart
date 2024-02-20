import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikshaana/login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimationCard;
  late Animation<Offset> _offsetAnimationText;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1), // Adjust the duration as needed
      vsync: this,
    );
    _offsetAnimationCard = Tween<Offset>(
      begin: Offset(-1.0, 0.0), // Drift in from the left
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _offsetAnimationText = Tween<Offset>(
      begin: Offset(1.0, 0.0), // Drift in from the right
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage()));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(209, 130, 63, 255),
              Color.fromARGB(255, 255, 172, 206),
              Color.fromARGB(209, 130, 63, 255),
              // Adjust colors as needed
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 8.0),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _opacityAnimation.value,
                      child: SlideTransition(
                        position: _offsetAnimationCard,
                        child: child,
                      ),
                    );
                  },
                  child: Card(
                      elevation: 10,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('eye.jpg'))),
                ),
              ),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Opacity(
                    opacity: _opacityAnimation.value,
                    child: SlideTransition(
                      position: _offsetAnimationText,
                      child: child,
                    ),
                  );
                },
                child: Text(
                  "IKSHAANA",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.marcellus(
                    textStyle: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
