import 'package:foodapp/state_management/presentation/home/home_binding.dart';
import 'package:foodapp/state_management/presentation/home/home_screen.dart';
import 'package:foodapp/state_management/presentation/login/login_binding.dart';
import 'package:foodapp/state_management/presentation/login/login_screen.dart';
import 'package:foodapp/state_management/presentation/register/register_binding.dart';
import 'package:foodapp/state_management/presentation/register/register_screen.dart';
import 'package:get/get.dart';
import '../splash/splash_binding.dart';
import '../splash/splash_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.register,
        page: () => const RegisterScreen(),
        binding: RegisterBinding()),
    GetPage(
        name: AppRoutes.home,
        page: () => const HomeScreen(),
        binding: HomeBinding())
  ];
}
