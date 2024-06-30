import 'package:flutter/material.dart';

class ChinhSachPage extends StatelessWidget {
  const ChinhSachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('CHÍNH SÁCH HỖ TRỢ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          child: Column(children: [
            SizedBox(width: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/shield.png'),
                SizedBox(width: 6),
                Text(
                  'CHÍNH SÁCH HỖ TRỢ',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 16),
            const Text(
              'Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt. Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt. Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt. Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.Lorem ipsum dolor sit amet consectetur. Volutpat diam ultrices id in sed vestibulum viverra nullam. In dui sagittis cras nisi ac eget hendrerit vestibulum. Nec ornare vitae enim a gravida. Elit donec proin pretium sem nec mattis sagittis lorem tincidunt.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            )
          ]),
        ),
      )),
    );
  }
}
