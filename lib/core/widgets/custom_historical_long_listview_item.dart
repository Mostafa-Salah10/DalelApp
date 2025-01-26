import 'package:dalel/core/model/data_model.dart';
import '../../features/onboarding/presentation/exports_onboarding_feature.dart';

class CustomHistoricalLonglistViewItem extends StatelessWidget {
  final DataModel mylist;
  const CustomHistoricalLonglistViewItem({
    required this.mylist,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! / 4.6,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: double.infinity,
                height: SizeConfig.screenHeight! / 9,
                child: Image.asset(
                  mylist.image,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                textAlign: TextAlign.center,
                mylist.title,
                style: AppTextStyle.poppinsstyle14
                    .copyWith(fontSize: SizeConfig.textSize! * 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
