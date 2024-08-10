import 'package:flutter/material.dart';
import 'package:instagram_clone/config/constants.dart';
import 'package:instagram_clone/widgets/home.dart';
import 'package:instagram_clone/models/post.dart';

class HomeV extends StatelessWidget {

  const HomeV({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    theme.scaffoldBackgroundColor == Colors.black ?
                    'assets/logos/instagram_dark.png' :
                    'assets/logos/instagram_light.png',
                    width: size.width * 0.3,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        theme.scaffoldBackgroundColor == Colors.black ?
                        'assets/icons/like_dark.png' :
                        'assets/icons/like_light.png',
                        width: 28,
                        height: 28,
                      ),
                      SizedBox(width: size.width * 0.07,),
                      Image.asset(
                        theme.scaffoldBackgroundColor == Colors.black ?
                        'assets/icons/chat_dark.png' :
                        'assets/icons/chat_light.png',
                        width: 26,
                        height: 26,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              height: size.width * 0.3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, idx) {
                    if (idx == 0) {
                      return const MyPFPW(isInHome: true,);
                    } else {
                      return PFPWithStoryW(idx: idx, isStory: true,);
                    }
                  },
                ),
              ),
            ),
            PostW(post: PostM(
              image: 'assets/images/nexzero_post.png',
              caption: 'NexZero is here!',
              username: 'nexus.estin',
              liked: true,
              likes: 144,
              pfp: 'assets/images/nexus.estin.png',
            ),),
            PostW(post: PostM(
              image: 'assets/images/nexzero_post.png',
              caption: 'NexZero is here!',
              username: 'nexus.estin',
              liked: true,
              likes: 144,
              pfp: 'assets/images/nexus.estin.png',
            ),),
            PostW(post: PostM(
              image: 'assets/images/nexzero_post.png',
              caption: 'NexZero is here!',
              username: 'nexus.estin',
              liked: true,
              likes: 144,
              pfp: 'assets/images/nexus.estin.png',
            ),),
          ],
        ),
    );
  }

}