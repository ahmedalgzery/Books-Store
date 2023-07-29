// Importing required libraries and files
import 'package:bookstore/constants.dart';
import 'package:bookstore/core/utils/app_router.dart';
import 'package:bookstore/features/Home/data/repo/home_repo_impl.dart';
import 'package:bookstore/features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookstore/features/Home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/service_locator.dart';

// The entry point of the application
void main() {
  // Initializing the service locator for dependency injection
  setupServiceLocator();

  // Running the BooksStore widget wrapped in the Flutter app
  runApp(const BooksStore());
}

// The main widget of the application
class BooksStore extends StatelessWidget {
  const BooksStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Providing the FeaturedBooksCubit to the widget tree
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(), // Fetching featured books data
        ),
        // Providing the NewsetBooksCubit to the widget tree
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(), // Fetching newest books data
        )
      ],
      // MaterialApp.router is used for declarative navigation
      child: MaterialApp.router(
        routerConfig: AppRouter.router, // The router configuration
        debugShowCheckedModeBanner: false, // Removing debug banner
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor, // Setting primary scaffold background color
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          // Using GoogleFonts Montserrat for the app's text theme
        ),
      ),
    );
  }
}
