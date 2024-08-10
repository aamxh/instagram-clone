class PostM {

  PostM({
    required this.image,
    required this.caption,
    required this.username,
    required this.pfp,
    required this.likes,
    required this.liked,
  });

  final String username;
  final String pfp;
  final String image;
  final String caption;
  final int likes;
  final bool liked;

}