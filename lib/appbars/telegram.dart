import 'package:flutter/material.dart';

class TelegramAppbar extends StatefulWidget {
  const TelegramAppbar({Key? key}) : super(key: key);

  @override
  State<TelegramAppbar> createState() => _TelegramAppbarState();
}

class _TelegramAppbarState extends State<TelegramAppbar> {
  bool notifications = false;
  List<Widget> bodyWidgets = [
    Container(
      color: const Color(0xff18212C),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            dense: true,
            visualDensity: VisualDensity(vertical: -4),
            title: Text(
              'Info',
              style: TextStyle(
                  color: Color(0xff6186A5),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text(
              't.me/dartlang_group',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Invite Link',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code,
                color: Color(0xff6186A5),
              ),
            ),
          ),
        ],
      ),
    ),
    const SizedBox(height: 2.5),
    const SizedBox(height: 12.5),
    ListTile(
      onTap: () {},
      tileColor: const Color(0xff18212C),
      leading: const Icon(
        Icons.person_add_outlined,
        color: Color(0xff6186A5),
      ),
      title: const Text(
        'Add Members',
        style: TextStyle(color: Color(0xff6186A5)),
      ),
    ),
    const SizedBox(height: 12.5),
    const Material(
      color: Color(0xff18212C),
      child: TabBar(
        splashFactory: NoSplash.splashFactory,
        isScrollable: true,
        indicatorColor: Color(0xff6186A5),
        indicatorWeight: 2.5,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.symmetric(vertical: 5),
        labelColor: Color(0xff6186A5),
        labelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: ('Members')),
          Tab(text: ('Media')),
          Tab(text: ('Files')),
          Tab(text: ('Links')),
          Tab(text: ('Voice')),
          Tab(text: ('Gif')),
        ],
      ),
    ),
    TabList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121A23),
      body: CustomScrollView(
        slivers: <Widget>[
          TransitionAppBar(
            extent: 300,
            avatar: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://play-lh.googleusercontent.com/qbeCduZblOk80GaY164lw47gIRjXq9QIzSmgFwqQj1PyhNhTWxYR0OqPzm8BumnmJQ'), // NetworkImage(user.imageUrl),
                      fit: BoxFit.cover)),
            ),
            title: "",
          ),
          DefaultTabController(
            length: 6,
            child: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return index == 3
                  ? ListTile(
                      tileColor: const Color(0xff18212C),
                      title: const Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        notifications ? 'On' : 'Off',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: Switch.adaptive(
                        value: notifications,
                        onChanged: (vlaue) {
                          setState(() {
                            notifications = !notifications;
                          });
                        },
                        activeColor: const Color(0xff6186A5),
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: const Color(0xff222C3C),
                      ),
                    )
                  : bodyWidgets[index];
            }, childCount: 7)),
          )
        ],
      ),
    );
  }
}

class TransitionAppBar extends StatelessWidget {
  const TransitionAppBar({
    required this.avatar,
    required this.title,
    this.extent = 250,
    Key? key,
  }) : super(key: key);

  final Widget avatar;
  final double extent;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TransitionAppBarDelegate(
        avatar: avatar,
        title: title,
        extent: extent > 200 ? extent : 200,
      ),
    );
  }
}

class _TransitionAppBarDelegate extends SliverPersistentHeaderDelegate {
  _TransitionAppBarDelegate(
      {required this.avatar, required this.title, this.extent = 250})
      : assert(extent >= 200, '');

  final Widget avatar;
  final double extent;
  final String title;

  final _avatarAlignTween =
      AlignmentTween(begin: Alignment.bottomCenter, end: Alignment.topLeft);
  final _avatarMarginTween = EdgeInsetsTween(
    end: const EdgeInsets.only(left: 50, top: 36),
  );

  final _iconAlignTween =
      AlignmentTween(begin: Alignment.bottomRight, end: Alignment.topRight);
  final _titleMarginTween = EdgeInsetsTween(
    begin: const EdgeInsets.only(top: 240, right: 175),
    end: const EdgeInsets.only(left: 90, top: 35),
  );

  @override
  double get maxExtent => extent;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(_TransitionAppBarDelegate oldDelegate) {
    return avatar != oldDelegate.avatar || title != oldDelegate.title;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final tempVal = maxExtent * 72 / 100;
    final progress = shrinkOffset > tempVal ? 1.0 : shrinkOffset / tempVal;
    final avatarMargin = _avatarMarginTween.lerp(progress);
    final titleMargin = _titleMarginTween.lerp(progress);

    final avatarAlign = _avatarAlignTween.lerp(progress);
    final iconAlign = _iconAlignTween.lerp(progress);

    final avatarSize = (1 - progress) * 200 + 32;

    final appbarHeight = (1 - progress) * 300 + 32;

    return Stack(
      children: <Widget>[
        AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: appbarHeight,
          constraints: BoxConstraints(minHeight: minExtent),
          color: const Color(0xff222C3C),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: avatarMargin,
          child: Align(
            alignment: avatarAlign,
            child: SizedBox(
              height: progress > 0.75 ? avatarSize : double.infinity,
              width: progress > 0.75 ? avatarSize : double.infinity,
              child: ClipRRect(
                  borderRadius: progress > 0.75
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(0),
                  child: avatar),
            ),
          ),
        ),
        Padding(
          padding: titleMargin,
          child: Align(
            alignment: avatarAlign,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dart/Flutter',
                  style: TextStyle(
                      fontSize: progress > 0.9 ? 18 : 28,
                      height: 1.25,
                      color: progress > 0.9 ? Colors.white : Colors.black),
                ),
                const Text(
                  '9,588 members, 986 online',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 42.5),
          child: Align(
            alignment: iconAlign,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class TabList extends StatelessWidget {
  TabList({Key? key}) : super(key: key);

  List<Map<String, String>> users = [
    {'username': 'Dorin', 'profile_pic': '', 'status': 'online', 'tag': ''},
    {
      'username': 'Halashinin',
      'profile_pic': '',
      'status': 'has access to messages',
      'tag': 'SPAM SLAYER'
    },
    {
      'username': 'Flutter',
      'profile_pic': '',
      'status': 'last seen recently',
      'tag': ''
    },
    {
      'username': 'Muzammil Khan',
      'profile_pic': '',
      'status': 'last seen recently',
      'tag': ''
    },
    {
      'username': 's alarali',
      'profile_pic': '',
      'status': 'last seen recently',
      'tag': ''
    },
    {
      'username': 'iPoni',
      'profile_pic': '',
      'status': 'last seen recently',
      'tag': 'Vodka army'
    },
    {
      'username': 'Flipini Lokibana',
      'profile_pic': '',
      'status': 'last seen recently',
      'tag': ''
    },
    {
      'username': 'Abey Burgenum',
      'profile_pic': '',
      'status': 'last seen recently',
      'tag': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDiWgvVHGvXLyUukQ1QTUQyheHMEHPuQ5FBw&usqp=CAU'),
            ),
            title: Text(
              users[index]['username']!,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            subtitle: Text(
              users[index]['status']!,
              style: TextStyle(
                  color: users[index]['status']! == 'online'
                      ? const Color(0xff6186A5)
                      : Colors.grey,
                  fontSize: 12),
            ),
            trailing: Text(
              users[index]['tag']!,
              style: const TextStyle(color: Color(0xff6186A5), fontSize: 12),
            ),
          );
        });
  }
}
