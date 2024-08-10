import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/home.dart';

class ProfileV extends StatelessWidget {

  const ProfileV({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.02),
                child: Text(
                  'a.a.mxh',
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    theme.scaffoldBackgroundColor == Colors.black ?
                    'assets/icons/add_dark_outlined.png' :
                    'assets/icons/add_light_outlined.png',
                    width: size.width * 0.08,
                  ),
                  SizedBox(width: size.width * 0.06),
                  Image.asset(
                    theme.scaffoldBackgroundColor == Colors.black ?
                    'assets/icons/lines_dark.png' :
                    'assets/icons/lines_light.png',
                    width: size.width * 0.08,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: size.height * 0.06),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyPFPW(isInHome: false,),
              Row(
                children: [
                  Column(
                    children: [
                      Text('0', style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w800,
                      )),
                      Text(
                        'posts',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(width: size.width * 0.08,),
                  Column(
                    children: [
                      Text('20', style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w800,
                      )),
                      Text(
                        'followers',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(width: size.width * 0.08,),
                  Column(
                    children: [
                      Text('94', style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w800,
                      )),
                      Text(
                        'following',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 3,),
          Text(
            'مُحَمَّدٌ',
            style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: size.height * 0.04,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit profile',
                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.015),
              Expanded(
                child: SizedBox(
                  height: size.height * 0.04,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Share profile',
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.015),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  child: Container(
                    width: size.height * 0.04,
                    height: size.height * 0.04,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Image.asset(
                      theme.scaffoldBackgroundColor == Colors.black ?
                      'assets/icons/add_user_dark.png' :
                      'assets/icons/add_user_light.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}