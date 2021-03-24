part of 'shared.dart';

Color mainColor = "FFC700".toColor();
Color greyColor = "8D9263".toColor();

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

/* Black Text Style */
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(color: Colors.black);

/* Grey Font Style*/
TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);

const double defaultMargin = 24;
