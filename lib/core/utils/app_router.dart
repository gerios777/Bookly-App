import 'package:bookly_app/features/Home/Presentation/Views/book_details_view.dart';
import 'package:bookly_app/features/Home/Presentation/Views/home_view.dart';
import 'package:bookly_app/features/Search/Presentation/Views/search_view.dart';
import 'package:bookly_app/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kSplashView = "/";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
