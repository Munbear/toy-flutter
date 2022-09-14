import 'package:basic_layout/widgets/mypage/profile_calendar.dart';
import 'package:basic_layout/widgets/mypage/profile_demo.dart';
import 'package:basic_layout/widgets/mypage/profile_input.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  late List<String> sexs;
  late String groupValue;
  late bool _isAgree;
  late bool isChecked;
  bool _value = false;

  @override
  void initState() {
    sexs = ["남", "여"];
    groupValue = sexs[0];
    isChecked = false;
    _isAgree = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin trang cá nhân'),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ProfileDemo(),
                const SizedBox(height: 30),
                ProfileInput(
                  label: 'Nick name',
                  hint: 'Vui lòng nhâp nick name',
                  comment:
                      'Có thê nhâp toàn bô tù 2~ 10 ky tu bao gom tieng Han,tieng Anh chu hoa va chu viet thuong, so,',
                  onChange: (value) => {},
                ),
                const SizedBox(height: 30),
                ProfileInput(
                  label: 'Email',
                  hint: 'Vui lòng nhâp email.',
                  onChange: (value) => {},
                ),
                const SizedBox(height: 30),
                Container(
                  child: const Text(
                    'Glói tính',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (String sex in sexs) ...{
                      Flexible(
                        flex: 1,
                        child: RadioListTile<String>(
                          title: const Text('Nam'),
                          value: sex,
                          groupValue: groupValue,
                          onChanged: (value) => {
                            setState(() {
                              groupValue = value!;
                            })
                          },
                        ),
                      ),
                    }
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Ngay thang nam sinh',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const SetCalendar(),
                const SizedBox(height: 10),
                const Text(
                  '- Email duoc de thong bao khi thay doi thong tin ca nhan.',
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontSize: 12,
                  ),
                ),
                const Text(
                  '- Gloi tinh va ngay nam sinh dung chodu lieu thong ke nham cung dich vu tot',
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Tai sao can thong tin ngay sinh?',
                      style: TextStyle(
                        color: Color(0xffFF552C),
                        fontSize: 14,
                      ),
                    ),
                    Image.asset('images/arrow_orange.png'),
                  ],
                ),
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: -10, horizontal: -50),
                  title: const Text(
                    'Toi dong y voi Quy dinh xu ly thong tin canhan va dieu khonan su dung cua KoKIRI',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  leading: Checkbox(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    value: _isAgree,
                    onChanged: (value) {
                      setState(() {
                        _isAgree = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 19, horizontal: 111),
                  height: 54,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffFF552C),
                  ),
                  // color: Color(0xffFF552C),
                  child: const Text(
                    "Dang ky thanh vien",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
