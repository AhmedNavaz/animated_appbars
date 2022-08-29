import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EcommerceAppbar extends StatefulWidget {
  const EcommerceAppbar({Key? key}) : super(key: key);

  @override
  State<EcommerceAppbar> createState() => _EcommerceAppbarState();
}

class _EcommerceAppbarState extends State<EcommerceAppbar> {
  List<String> carouselImages = [
    'https://images.olx.com.pk/thumbnails/267000683-400x300.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwewJkQqGeQ-EjXTkXXsBHjl1qKM9Ex_guk3T5i3k974xGernQJTFxdzAS3ZpWxQrX_nk&usqp=CAU',
    'https://images.olx.com.pk/thumbnails/262165746-400x300.jpeg'
  ];

  int carouselIndex = 0;
  List<Widget> bodyWidgets = [
    Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: const Text(
          'Publis sdf 12:9',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )),
    const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        'Applicane Name',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: const [
          Text(
            '123 USD',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(width: 10),
          Text(
            'Negotiable',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    ),
    const SizedBox(height: 10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: const Color(0xff3576FF)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.car_rental),
            SizedBox(width: 10),
            Text('Deliver something')
          ],
        ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Icon(
          Icons.train_sharp,
          color: Colors.yellow,
        ),
        title: Text('Some dsfl sedflkj'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Icon(
          Icons.train_sharp,
          color: Colors.yellow,
        ),
        title: Text('Some dsfl sedflkj'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Icon(
          Icons.train_sharp,
          color: Colors.yellow,
        ),
        title: Text('Some dsfl sedflkj'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ),
    TextButton(
        onPressed: () {}, child: const Text('GUM FUNC TONEDA LIVEWDF OLX?')),
    Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.25))),
          child: const Text(
            'Funsdf sdofijs sdf',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.25))),
          child: const Text('Brand: All', style: TextStyle(fontSize: 16)),
        )
      ],
    ),
    const SizedBox(height: 10),
    Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.25))),
          child: const Text(
            'Steafe : wer',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.25))),
          child: const Text('Hsdf sdf Olkf', style: TextStyle(fontSize: 16)),
        )
      ],
    ),
    const Padding(
      padding: EdgeInsets.only(left: 10, top: 20),
      child: Text(
        '(P) invdvslkjvfs;afjio sdf',
        style: TextStyle(color: Colors.green),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 10, top: 20),
      child: Text(
        'Description',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Aslkfjas sodfjsljfo we;fksdjf se;fklsjdf s;odifj sldfjouwesf lksjdf os;idjfkjs foisjd fk sefjoisjfklsj f;osijf  sfkljsf.',
        style: TextStyle(fontSize: 14),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.flag_outlined,
              color: Colors.redAccent,
            ),
            SizedBox(width: 5),
            Text('Report')
          ],
        ),
      ),
    ),
    const SizedBox(height: 10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Image.network(
        'https://codecanyon.img.customer.envatousercontent.com/files/381640592/preview.jpg?auto=compress%2Cformat&q=80&fit=crop&crop=top&max-h=8000&max-w=590&s=227cf577dc096326586dce501debaf96',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              primary: const Color(0xff002E34),
              side: const BorderSide(color: Color(0xff002E34)),
              fixedSize: const Size(150, 40)),
          child: const Text(
            'Apel/SMS',
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff002E34), fixedSize: const Size(150, 40)),
          child: const Text('Scri'),
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          TransitionAppBar(
            extent: 300,
            avatar: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 400.0,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, _) {
                        setState(() {
                          carouselIndex = index;
                        });
                      }),
                  items: carouselImages.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Image.network(
                            i,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  bottom: 10,
                  left: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: carouselImages.map(
                      (image) {
                        int index = carouselImages.indexOf(image);
                        return Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: carouselIndex == index
                                  ? Border.all(width: 3, color: Colors.white)
                                  : Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.75)),
                              color: Colors.transparent),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
            title: "",
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return bodyWidgets[index];
          }, childCount: 19)),
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

    final appbarHeight = (1 - progress) * 300 + 32;

    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: progress > 0.9 ? 1 : 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: appbarHeight,
            constraints: BoxConstraints(minHeight: minExtent),
            color:
                progress > 0.9 ? Colors.white.withOpacity(0.9) : Colors.black,
          ),
        ),
        Container(
          color: Colors.black,
          height: progress > 0.9 ? 0 : double.infinity,
          width: double.infinity,
          child: avatar,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: progress > 0.9 ? Colors.black : Colors.white,
            ),
          ),
        ),
        Padding(
          padding: progress < 0.9
              ? const EdgeInsets.only(top: 42.5, right: 15)
              : const EdgeInsets.only(top: 42.5, right: 55),
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.share_outlined,
                size: 20,
                color: progress > 0.9 ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
        Visibility(
          visible: progress < 0.9 ? false : true,
          child: Padding(
            padding: progress < 0.9
                ? const EdgeInsets.only(top: 42.5)
                : const EdgeInsets.only(top: 42.5, right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.favorite_border_outlined,
                  size: 20,
                  color: progress > 0.9 ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: progress > 0.9 ? false : true,
          child: Transform.translate(
            offset: const Offset(-10, 25),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Color(0xffFF593E),
                radius: 25,
                child:
                    Icon(Icons.favorite_border_outlined, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
