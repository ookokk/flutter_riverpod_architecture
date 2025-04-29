import 'package:pick_champ/core/const/app_env.dart';

enum EndPointEnums {
  userProfile('/user/profile'),
  userUpdate('/user/updateProfile'),
  userUpdatePassword('/user/updatePassword'),
  userChangeCountry('user/changeCountry'),
  userList('/user/list'),
  userRemoveAccount('/user/removeAccount'),
  commentAdd('/comment/add'),
  commentGetComments('/comment/getComments'),
  commentDelete('/comment/delete'),
  followFollow('/follow/'),
  followFollowing('/follow/following/'),
  followFollowers('/follow/followers/'),
  followCount('/follow/count/'),
  jobAdd('/job/add'),
  jobDelete('/job/delete'),
  jobComplete('/job/complete'),
  jobGetUserJobs('/job/getUserJobs'),
  jobHomeJobs('/job/homeJobs'),
  jobGetMultipleJobs('/job/getMultipleJobs'),
  jobGet('/job/get'),
  login('/login'),
  loginWithGoogle('/login/google'),
  loginWithApple('/login/apple'),
  messageStartChatRoom('/message/startChatRoom'),
  messageChatRooms('/message/chatRooms'),
  messageDeleteRoom('/message/deleteRoom'),
  photoProfile('/photo/profilePicture'),
  photoCover('/photo/coverPicture'),
  register('/register'),
  registerWithGoogle('/register/google'),
  registerWithApple('/register/apple'),
  searchJob('/search'),
  searchUser('/search/user'),
  supportUser('/support/user'),
  supportComment('/support/comment'),
  supportGeneral('/support/general'),
  block('/block'),
  blockList('/block/list');

  const EndPointEnums(this.value);

  final String value;

  String get fullUrl {
    final baseUrl = AppEnv.baseUrlDev;
    return '$baseUrl$value';
  }
}
