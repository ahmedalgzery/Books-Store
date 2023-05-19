import 'package:bookstore/core/utils/service_locator.dart';
import 'package:bookstore/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookstore/features/Home/data/repo/home_repo.dart';
import 'package:bookstore/features/Home/presentation/manger/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookstore/features/Home/presentation/view/book_details_view.dart';
import 'package:bookstore/features/Home/presentation/view/home_view.dart';
import 'package:bookstore/features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>  BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
