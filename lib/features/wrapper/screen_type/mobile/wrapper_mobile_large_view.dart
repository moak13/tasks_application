import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../../../generated/l10n.dart';
import '../../route_delegate/delegates.dart';

class WrapperMobileLargeView extends ConsumerStatefulWidget {
  const WrapperMobileLargeView({super.key});

  @override
  ConsumerState<WrapperMobileLargeView> createState() =>
      _WrapperMobileLargeViewState();
}

class _WrapperMobileLargeViewState
    extends ConsumerState<WrapperMobileLargeView> {
  @override
  Widget build(BuildContext context) {
    // Get locale state
    LocaleState localeState = ref.read(localeStateProvider.notifier);
    // Get supported locales
    List<Locale> supportedLocales = localeState.supportedLocales;
    // Get current locale
    String languageCode = localeState.state.languageCode;

    // Get wrapper route delegates
    List<BeamerDelegate> routeDelegates =
        ref.watch(wrapperRouterDelegatesProvider);

    // Get current index
    int currentindex = ref.watch(wrapperIndexStateProvider);

    // Get index state
    WrapperindexState indexState = ref.read(wrapperIndexStateProvider.notifier);

    void setIndex(int index) {
      indexState.updateIndex(index);
      routeDelegates[index].update(rebuild: false);
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.white,
            alignment: Alignment.topRight,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Locale>(
                items: supportedLocales
                    .map<DropdownMenuItem<Locale>>(
                      (e) => DropdownMenuItem<Locale>(
                        value: e,
                        child: Text(e.languageCode),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  localeState.setLocale(value);
                },
                hint: Text(languageCode),
              ),
            ),
          ),
          Container(
            height: 3,
            color: Colors.blueGrey,
          ),
          Expanded(
            child: IndexedStack(
              index: currentindex,
              children: [
                Beamer(
                  routerDelegate: routeDelegates[0],
                ),
                Beamer(
                  routerDelegate: routeDelegates[1],
                ),
                Beamer(
                  routerDelegate: routeDelegates[2],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.darkBlue,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.task),
            label: S.of(context).tasks,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.work),
            label: S.of(context).projects,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.people),
            label: S.of(context).teams,
          ),
        ],
        currentIndex: currentindex,
        onTap: setIndex,
      ),
    );
  }
}
