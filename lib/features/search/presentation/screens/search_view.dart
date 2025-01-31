import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:dalel/features/search/presentation/manager/provider/search_provider.dart';
import 'package:dalel/features/search/presentation/widgets/custom_listveiw_search.dart';

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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryColor,
              ),
              child: TextField(
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    hintText: 'Search deep into the history',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
                onChanged: (value) {
                  context.read<SearchProvider>().filterationListMethod(value);
                },
              ),
            ),
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
