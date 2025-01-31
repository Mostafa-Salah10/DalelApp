import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:dalel/features/search/presentation/widgets/custom_listveiw_search.dart';
import 'package:dalel/features/search/presentation/widgets/custom_search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const VerticalSpace(height: 3),
            const CustomSearchTextField(),
            const VerticalSpace(height: 2),
            Expanded(
              child: CustomListViewSearch(runtimeType: runtimeType),
            ),
          ],
        ),
      ),
    ));
  }
}


