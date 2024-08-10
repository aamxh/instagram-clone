import 'package:flutter/material.dart';
import 'package:instagram_clone/config/constants.dart';
import 'package:instagram_clone/models/post.dart';

class MyPFPW extends StatelessWidget {

  const MyPFPW({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(right: size.width * 0.03),
      child: SizedBox(
        height: size.width * 0.22,
        width: size.width * 0.22,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * 0.22 - 6.5,
                  height: size.width * 0.22 - 6.5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/my_pfp.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 28,
                    height: 28,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.scaffoldBackgroundColor,
                    ),
                    child: Container(
                      width: 26,
                      height: 26,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                      child: const Icon(Icons.add, color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: size.width * 0.22,
              child: Text(
                'Your Story',
                style: theme.textTheme.bodySmall!.apply(color: MyConstants.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class PFPWithStoryW extends StatelessWidget {

  const PFPWithStoryW({super.key, required this.idx, required this.isStory});

  final int idx;
  final bool isStory;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Padding(
      padding: idx == 5 ?
      EdgeInsets.zero :
      EdgeInsets.only(right: isStory ? size.width * 0.03 : 10),
      child: Column(
        children: [
          Container(
            width: isStory ? size.width * 0.22 : 40,
            height: isStory ? size.width * 0.22 : 40,
            decoration: const BoxDecoration(
              color: MyConstants.rose,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  MyConstants.yellow,
                  MyConstants.rose,
                  MyConstants.violet,
                ],
              ),
            ),
            padding: EdgeInsets.all(isStory ? 3.5 : 1.4),
            child: Container(
              padding: EdgeInsets.all(isStory ? 3 : 1.2),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  MyConstants.usersPFPs[idx],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          isStory ? const SizedBox(height: 5,) : Container(),
          isStory ? SizedBox(
            width: size.width * 0.22,
            child: Text(
              MyConstants.usersNames[idx],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ) : Container(),
        ],
      ),
    );
  }

}

class PostW extends StatelessWidget {

  const PostW({super.key, required this.post});

  final PostM post;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.02,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const PFPWithStoryW(idx: 4, isStory: false),
                  Text(post.username, style: theme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
              const Icon(Icons.more_vert, size: 25),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.015,),
        Image.asset(post.image, width: size.width),
        SizedBox(height: size.height * 0.015,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(post.liked ? 'assets/icons/like_filled.png' :
                  theme.scaffoldBackgroundColor == Colors.black ?
                  'assets/icons/like_dark.png' :
                  'assets/icons/like_light.png',
                    width: size.width * 0.075,
                    height: size.width * 0.075,
                  ),
                  SizedBox(width: size.width * 0.04,),
                  Image.asset(theme.scaffoldBackgroundColor == Colors.black ?
                  'assets/icons/comment_dark.png' :
                  'assets/icons/comment_light.png',
                    width: size.width * 0.075,
                  ),
                  SizedBox(width: size.width * 0.04,),
                  Image.asset(theme.scaffoldBackgroundColor == Colors.black ?
                  'assets/icons/send_dark.png' :
                  'assets/icons/send_light.png',
                    width: size.width * 0.075,
                  ),
                ],
              ),
              Image.asset(theme.scaffoldBackgroundColor == Colors.black ?
              'assets/icons/save_dark_outlined.png' :
              'assets/icons/save_light_outlined.png',
                width: size.width * 0.075,
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.01,),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.03),
          child: Text(
            '${post.likes} likes',
            style: theme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(height: size.height * 0.005,),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.03),
          child: Row(
            children: [
              Text(
                post.username,
                style: theme.textTheme.bodySmall!.
                copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(width: 5,),
              Text(
                post.caption,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }

}