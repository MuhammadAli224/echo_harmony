import '../../../../../global_imports.dart';
import '../widget/home_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: const Text('Home')),
      body: BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: const HomeBottomBar(),
      ),
    );
  }
}
