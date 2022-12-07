//

import 'package:elcom_app/helpers/app_theme/app_theme.dart';
import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/screens/onboarding_screen/models/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/page_indicator/page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _controller;
  int selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _pageChanged(int page) {
    setState(() => selectedPage = page);
  }

  _goForward() {
    if (mounted) {
      if (selectedPage < OnBoardingPage.allPages.length - 1) {
        selectedPage++;
      }
    }

    _controller.animateToPage(
      selectedPage,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  _goBackward() {
    if (mounted) {
      if (selectedPage > 0) {
        selectedPage -= 1;
      }
    }

    _controller.animateToPage(
      selectedPage,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: height),
          _pages(context),
          _controlButtons(context),
        ],
      ),
    );
  }

  Widget _pages(BuildContext context) {
    return Expanded(
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        onPageChanged: (page) => _pageChanged(page),
        children: OnBoardingPage.allPages
            .map((page) => OnBoardingPageCard(page: page))
            .toList(),
      ),
    );
  }

  Widget _controlButtons(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  child: selectedPage == 0
                      ? TextButton(
                          onPressed: () =>
                              context.read<AuthCubit>().endOnboarding(),
                          child: const Text('Ignore'),
                        )
                      : OnboardingButton(
                          onPressed: () => _goBackward(),
                          icon: Icons.chevron_left),
                ),
                selectedPage == OnBoardingPage.allPages.length - 1
                    ? TextButton(
                        onPressed: () =>
                            context.read<AuthCubit>().endOnboarding(),
                        child: const Text('Continue'),
                      )
                    : OnboardingButton(
                        onPressed: () => _goForward(),
                        icon: Icons.chevron_right),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: PageIndicatorView(
                selectedPage: selectedPage,
                pageCount: OnBoardingPage.allPages.length,
                activeColor: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingPageCard extends StatelessWidget {
  const OnBoardingPageCard({
    Key? key,
    required this.page,
  }) : super(key: key);

  final OnBoardingPage page;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * page.height,
            child: Image.asset(
              page.image,
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            page.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Text(
            page.description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
