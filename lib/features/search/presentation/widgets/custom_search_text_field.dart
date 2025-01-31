import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';
import 'package:dalel/features/search/presentation/manager/provider/search_provider.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}