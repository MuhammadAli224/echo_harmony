import 'dart:async';

import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';
import '../../global_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final String appName = "Echo Harmony";
  int currentIndex = 0;
  Timer? _timer;

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    );

    _startLetterAnimation();
  }

  void _startLetterAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 90), (timer) async {
      if (currentIndex < appName.length) {
        setState(() {
          currentIndex++;
        });
      } else {
        _timer?.cancel();
        _fadeController.forward();
        await _initializeApp();

        await Future.delayed(const Duration(milliseconds: 1500));

        if (!mounted) return;
        context.go(AppRoutes.home);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _fadeController.dispose();

    super.dispose();
  }

  Future<void> _initializeApp() async {
    try {
      await EnvConstant.init();

      await HiveServices().init();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      initGetIt();
      await getIt<AppServices>().initAppServices();

      HttpOverrides.global = MyHttpOverrides();
      Bloc.observer = AppBlocObserver();
    } catch (e) {
      logger.e("Init error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    String firstWord = 'Echo';
    String visibleText = appName.substring(0, currentIndex);
    String firstVisible = '';
    String secondVisible = '';

    if (currentIndex <= firstWord.length) {
      firstVisible = visibleText;
    } else {
      firstVisible = visibleText.substring(0, firstWord.length);
      secondVisible = visibleText.substring(firstWord.length);
    }

    if (currentIndex <= firstWord.length) {
      firstVisible = visibleText;
    } else {
      firstVisible = visibleText.substring(0, firstWord.length);
      secondVisible = visibleText.substring(firstWord.length);
    }
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                children: [
                  TextSpan(
                    text: firstVisible,
                    style: const TextStyle(
                      // color: Color(0xFF002754),
                      color: Color(0xFF000000),
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Color(0xFF000080),
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: secondVisible,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF000000),
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Color(0xFF000000),
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            10.gap,
            FadeTransition(
              opacity: _fadeAnimation,
              child: const Text(
                "Social Committee Elections",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
