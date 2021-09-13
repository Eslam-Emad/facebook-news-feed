import 'package:facebook_feed/models/models.dart';

const UserModel currentUser = UserModel(
  name: 'Islam Emad',
  imageUrl: 'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/61775182_1331743753655070_1199931231626592256_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=kNcegKkZBPcAX9lUdyq&_nc_ht=scontent.fcai20-6.fna&oh=d90cd9a10ee137ea81f37cf7846ea5c6&oe=615FFD6F',
);


final List<PostModel> posts = [
  const PostModel(
    user: currentUser,
    caption: 'New Pic!',
    timeAgo: '58m',
    imageUrls: [   'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/61775182_1331743753655070_1199931231626592256_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=kNcegKkZBPcAX9lUdyq&_nc_ht=scontent.fcai20-6.fna&oh=d90cd9a10ee137ea81f37cf7846ea5c6&oe=615FFD6F',
    ],
    likes: 5000,
    comments: 4500,
    shares: 404,
  ),
  PostModel(
    user: onlineUsers[3],
    caption:
    'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    imageUrls: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  PostModel(
    user: onlineUsers[4],
    caption: 'Rocket.',
    timeAgo: '8hr',
    imageUrls: [
      'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/44023904_1175535662609214_8321517432560680960_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=LuZO-ShesnoAX-cCeFB&_nc_ht=scontent.fcai20-6.fna&oh=6443aeb72201eb470180cb117203f3c9&oe=6166B572',
      'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/44023904_1175535662609214_8321517432560680960_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=LuZO-ShesnoAX-cCeFB&_nc_ht=scontent.fcai20-6.fna&oh=6443aeb72201eb470180cb117203f3c9&oe=6166B572',
      'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/44023904_1175535662609214_8321517432560680960_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=LuZO-ShesnoAX-cCeFB&_nc_ht=scontent.fcai20-6.fna&oh=6443aeb72201eb470180cb117203f3c9&oe=6166B572',
      'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/44023904_1175535662609214_8321517432560680960_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=174925&_nc_ohc=LuZO-ShesnoAX-cCeFB&_nc_ht=scontent.fcai20-6.fna&oh=6443aeb72201eb470180cb117203f3c9&oe=6166B572',
    ],
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  PostModel(
    user: onlineUsers[2],
    caption: 'don\'t give up until you be mo salah :) ',
    timeAgo: '15hr',
    imageUrls: [
      'https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-9/33745820_1050952558400859_8548585859509649408_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=174925&_nc_ohc=MzcDaGVzBr4AX9uw8g5&_nc_ht=scontent.fcai20-6.fna&oh=8f4decc5a8bb8753d479173a4fec4e79&oe=61638DE3',
    ],
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  PostModel(
    user: onlineUsers[6],
    caption:
    'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    imageUrls: null,

    likes: 482,
    comments: 37,
    shares: 9,
  ),
  PostModel(

    user: onlineUsers[9],
    caption: '惱 也懊悔不了 饒爾去罷」 ',
    timeAgo: '1d',
    imageUrls: null,
    likes: 1523,
    shares: 129,
    comments: 301,
  )
];

const List<UserModel> onlineUsers = [
  UserModel(
    name: 'David Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'Matthew Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  UserModel(
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  UserModel(
    name: 'Ed Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  UserModel(
    name: 'Carolyn Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  UserModel(
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  UserModel(
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  UserModel(
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'David Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'Matthew Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  UserModel(
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  UserModel(
    name: 'Ed Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  UserModel(
    name: 'Carolyn Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  UserModel(
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  UserModel(
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  UserModel(
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  UserModel(
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<StoryModel> stories = [
  StoryModel(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  StoryModel(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  StoryModel(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  StoryModel(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  StoryModel(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
  StoryModel(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  StoryModel(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewed: true,
  ),
  StoryModel(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  StoryModel(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewed: true,
  ),
  StoryModel(
    user: onlineUsers[7],
    imageUrl:
        'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
  ),
];


