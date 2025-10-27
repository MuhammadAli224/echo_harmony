import '../../../../../global_imports.dart';


class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Home')),
body: BlocProvider(
create: (context) => getIt<HomeCubit>(),
child:Container()),

);
}
}