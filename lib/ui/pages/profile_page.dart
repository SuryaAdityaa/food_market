part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 110,
              height: 110,
              margin: EdgeInsets.only(top: 26),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/photo_border.png'),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        (context.bloc<UserCubit>().state as UserLoaded)
                            .user
                            .picturePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, bottom: defaultMargin),
              child: Column(
                children: [
                  Text(
                    (context.bloc<UserCubit>().state as UserLoaded).user.name,
                    style: blackFontStyle1,
                  ),
                  Text(
                    (context.bloc<UserCubit>().state as UserLoaded).user.email,
                    style: greyFontStyle,
                  ),
                ],
              ),
            )
          ],
        ),

        //Body
        CustomTabBar(
          titles: ['Account', 'FoodMarket'],
          selectedIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        SizedBox(height: 16),
        Column(
          children: ((selectedIndex == 0)
                  ? ['Edit Profile', 'Home Address', 'Security', 'Payments']
                  : [
                      'Rate App',
                      'Help Center',
                      'Privacy & Policy',
                      'Terms & Conditions'
                    ])
              .map(
                (e) => Padding(
                  padding: EdgeInsets.only(
                      bottom: 16, left: defaultMargin, right: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e,
                        style: blackFontStyle3,
                      ),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          'assets/right_arrow.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
