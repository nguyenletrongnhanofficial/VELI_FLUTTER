import 'package:flutter/material.dart';

class ColorInPage {
  static const blackColor = Color(0xFF0D0D26);
  static const backgroudColor = Color(0xFFF9F9F9);
  // static const backgroudColor = Color(0xFFFAFAFD);
  static const textColor = Color(0xFF150B3D);
  static const Color inputFoucusColor = Color(0xFF150B3D);
  static const Color iconColor = Color(0xFF95969D);
}

class SchoolContent {
  String imgURL;
  String name;
  bool isSelected;

  SchoolContent(
      {required this.imgURL, required this.name, required this.isSelected});
}

class AddSchool extends StatefulWidget {
  const AddSchool({Key? key}) : super(key: key);

  @override
  State<AddSchool> createState() => _AddSchoolState();
}

class _AddSchoolState extends State<AddSchool> {
  late List<SchoolContent> schools;
  late List<bool> isCurrentSelected;
  late int amountCurrentSelected = 0;
  late String query = '';
  @override
  void initState() {
    super.initState();
    amountCurrentSelected = 0;
    isCurrentSelected = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];
    schools = [
      SchoolContent(
          imgURL: 'assets/images/photos/uit.png',
          name: 'Đại học Công nghệ Thông tin (UIT)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/uel.png',
          name: 'Đại học Kinh tế - Luật (UEL)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/ufm.png',
          name: 'Đại học Tài chính Marketing (UFM)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/ftu.png',
          name: 'Đại học Ngoại thương (FTU)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/hcmut.png',
          name: 'Đại học Bách khoa (HCMUT)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/ussh.png',
          name: 'Đại học Khoa học Xã hội và Nhân văn (USSH)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/hcmus.png',
          name: 'Đại học Khoa học Tự nhiên (HCMUS)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/iu.png',
          name: 'Đại học Quốc tế (IU)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/nttu.png',
          name: 'Đại học Nguyễn Tất Thành (NTTU)',
          isSelected: false),
      SchoolContent(
          imgURL: 'assets/images/photos/hcmute.jpg',
          name: 'Đại học Sư phạm Kỹ Thuật (HCMUTE)',
          isSelected: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isLandscape = mediaQuery.orientation == Orientation.landscape;
    final bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    final PreferredSizeWidget appBar = AppBar(
        elevation: 0.0,
        backgroundColor: ColorInPage.backgroudColor,
        leading: Container(
          margin: const EdgeInsets.fromLTRB(24, 0, 0, 0),
          child: IconButton(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Image(
                image: AssetImage('assets/images/photos/arrow.png')),
          ),
        ));
    return Scaffold(
      backgroundColor: ColorInPage.backgroudColor,
      appBar: appBar,
      body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.fromLTRB(24, 12, 24, 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Thêm trường',
                      style: TextStyle(
                          color: Color(0xFF150B3D),
                          fontSize: 20,
                          wordSpacing: 3,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                        onChanged: (value) {
                          setState(() {
                            query = value;
                          });
                        },
                        cursorColor: ColorInPage.inputFoucusColor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Image(
                              image: AssetImage(
                                  'assets/images/photos/search_ic.png')),
                          border: const OutlineInputBorder(),
                          hintText: 'Tìm kiếm tên trường',
                          hintStyle: const TextStyle(
                              fontSize: 15.0,
                              color: Color(0xFFE4E5E7),
                              fontWeight: FontWeight.w400),
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.fromLTRB(54, 15, 26, 14),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    for (int index = 0; index < schools.length; index++)
                      if ((query == '') ||
                          (schools[index]
                              .name
                              .toLowerCase()
                              .contains(query.toLowerCase()))) ...[
                        ListTile(
                            onTap: () {
                              setState(() {
                                bool res = false;
                                print(
                                    '$amountCurrentSelected ${isCurrentSelected[index]}');
                                if ((!isCurrentSelected[index]) &&
                                    (amountCurrentSelected < 1)) {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  res = true;
                                  amountCurrentSelected++;
                                }
                                if (isCurrentSelected[index] == true) {
                                  amountCurrentSelected--;
                                }
                                isCurrentSelected[index] = res;
                              });
                            },
                            selected: isCurrentSelected[index],
                            selectedTileColor: Color(0xFFA993FF),
                            tileColor: Colors.white,
                            shape: !isCurrentSelected[index]
                                ? const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))
                                : const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                            leading: Image(
                                width: 30,
                                height: 26,
                                image: AssetImage(schools[index].imgURL)),
                            title: !isCurrentSelected[index]
                                ? Text(
                                    schools[index].name,
                                    style: const TextStyle(
                                        color: Color(0xFF150B3D),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  )
                                : Text(
                                    schools[index].name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                            trailing: (schools[index].isSelected)
                                ? const Image(
                                    width: 32,
                                    height: 32,
                                    image: AssetImage(
                                        'assets/images/photos/tick.png'))
                                : null),
                        const SizedBox(height: 8)
                      ],
                    const SizedBox(height: 80),
                  ]))),
    );
  }
}
