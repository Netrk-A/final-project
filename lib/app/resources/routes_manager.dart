// import 'package:FireBox/app/di.dart';
// import 'package:FireBox/presentation/add_new_device/add_new_device_view.dart';
// import 'package:FireBox/presentation/add_new_trainee_screen/view.dart';
// import 'package:FireBox/presentation/exercises/view.dart';
// import 'package:FireBox/presentation/login_screen/view/login_view.dart';
// import 'package:FireBox/presentation/training_screen/in_training.dart';
//
// import 'package:FireBox/presentation/reset_password_screen/view/recover_password_view.dart';
// import 'package:FireBox/presentation/reset_password_screen/view/verify_code_view.dart';
//
// import 'package:FireBox/presentation/resources/string_manager.dart';
//
// import 'package:FireBox/presentation/signup_screen/view/signup_view.dart';
// import 'package:FireBox/presentation/trainees/view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
// import '../main_screen/main_view.dart';
// import '../profile_details_screen/view.dart';
//
// class Routes {
//   static const String splashScreen = "/";
//   static const String onBoardingScreen = "/onBoarding";
//   static const String loginScreen = "/login";
//   static const String registerScreen = "/register";
//   static const String privacyScreen = "/privacy";
//   static const String recoverPasswordScreen = "/recoverPassword";
//   static const String verifyCodeScreen = "/verifyCodeScreen";
//   static const String changePasswordScreen = "/changePasswordScreen";
//   static const String mainScreen = "/main";
//   static const String searchScreen = '/searchScreen';
//   static const String profileDetailsScreen = "/profileDetails";
//   static const String settingScreen = "/setting";
//   static const String exercisesScreen = "/exercises";
//   static const String inTrainingScreen = '/inTraining';
//   static const String trainersScreen = '/trainersScreen';
//   static const String addNewDeviceScreen = '/addNewDevice';
// }
//
// //
// class RouteGenerator {
//   static Route<dynamic> getRoute(RouteSettings settings) {
//     switch (settings.name) {
//       // case Routes.splashScreen:
//       //   return MaterialPageRoute(builder: (_) => const SplashView());
//       case Routes.loginScreen:
//         return MaterialPageRoute(
//           builder: (_) {
//             initLoginModule();
//             return const LoginView();
//           },
//         );
//       case Routes.registerScreen:
//         return MaterialPageRoute(
//           builder: (_) {
//             initRegisterModule();
//             return const SignupView();
//           },
//         );
//       case Routes.recoverPasswordScreen:
//         return MaterialPageRoute(
//           builder: (_) {
//             initRecoverPasswordModule();
//             return const RecoverPasswordView();
//           },
//         );
//       case Routes.verifyCodeScreen:
//         return MaterialPageRoute(
//           builder: (_) {
//             initVerifyCodeModule();
//             return const VerifyCodeView();
//           },
//         );
//       case Routes.inTrainingScreen:
//         return MaterialPageRoute(
//           builder: (_) {
//             return TrainingViewBar(
//               device: settings.arguments as BluetoothDevice,
//             );
//           },
//         );
//       // case Routes.changePasswordScreen:
//       //   return MaterialPageRoute(
//       //     builder: (_) {
//       //       initChangePasswordModule();
//       //       return const ChangePasswordView();
//       //     },
//       //   );
//       case Routes.mainScreen:
//         return MaterialPageRoute(builder: (_) {
//           initMainModule();
//           return const MainView();
//         });
//       case Routes.profileDetailsScreen:
//         return MaterialPageRoute(builder: (_) {
//           initProfileDetailsModule();
//           return const ProfileDetailsView();
//         });
//       case Routes.exercisesScreen:
//         return MaterialPageRoute(
//           builder: (_) => const ExercisesView(),
//         );
//       case Routes.settingScreen:
//         return MaterialPageRoute(builder: (_) => const AddNewTraineeView());
//       case Routes.trainersScreen:
//         return MaterialPageRoute(builder: (_) => const TrainersView());
//       case Routes.addNewDeviceScreen:
//         return MaterialPageRoute(builder: (_) => const AddNewDeviceView());
//       default:
//         return unDefinedRoute();
//     }
//   }
//
//   static Route unDefinedRoute() {
//     return MaterialPageRoute(
//       builder: (_) => Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             AppStrings.noRouteFound,
//           ),
//         ),
//         body: const Center(
//           child: Text(AppStrings.noRouteFound),
//         ),
//       ),
//     );
//   }
// }
