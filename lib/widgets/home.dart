import 'package:flutter/material.dart';
import 'package:instagram_clone/config/constants.dart';

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

  const PFPWithStoryW({super.key, required this.idx});

  final int idx;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Padding(
      padding: idx == 5 ?
      EdgeInsets.zero :
      EdgeInsets.only(right: size.width * 0.03),
      child: Column(
        children: [
          Container(
            width: size.width * 0.22,
            height: size.width * 0.22,
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
            padding: const EdgeInsets.all(3.5),
            child: Container(
              padding: const EdgeInsets.all(3),
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
          const SizedBox(height: 5,),
          SizedBox(
            width: size.width * 0.22,
            child: Text(
              MyConstants.usersNames[idx],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

}