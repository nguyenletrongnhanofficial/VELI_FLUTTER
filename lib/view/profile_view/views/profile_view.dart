import 'package:flutter/material.dart';
import '/../utils/color_utils.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

enum Gender { male, female }

class _ProfileViewState extends State<ProfileView> {
  Gender gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 238, 238),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.32,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/photos/imageCover.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  Positioned(
                    bottom: 35,
                    left: 10,
                    child: Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 11, top: 5),
                            child: Text(
                              'Trọng Nhân',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11),
                            child: Text(
                              'UIT',
                              style: TextStyle(
                                fontSize: 9,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 45,
                    left: 20,
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 205, 201, 201)
                            .withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Thay avatar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_applications,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 20,
                    child: CircleAvatar(
                      maxRadius: 30,
                      minRadius: 30,
                      backgroundColor: Colors.grey,
                      backgroundImage:
                          AssetImage('assets/images/photos/avatar.png'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      'Họ tên',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text_Form_Field(),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      'Ngày sinh',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(fontSize: 11),
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.calendar_month,
                          size: 15,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 10),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        isDense: true,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      'Giới tính',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Radio(
                                  value: Gender.male,
                                  groupValue: gender,
                                  activeColor: Color(0xffFFB237),
                                  onChanged: (Gender? newGender) {
                                    setState(
                                      () {
                                        gender = newGender!;
                                      },
                                    );
                                  },
                                ),
                                const Text(
                                  'Nam',
                                  style: TextStyle(
                                    fontFamily: 'AvertaStdCY-Regular',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Radio(
                                  value: Gender.female,
                                  groupValue: gender,
                                  activeColor: Color(0xffFFB237),
                                  onChanged: (Gender? newGender) {
                                    setState(
                                      () {
                                        gender = newGender!;
                                      },
                                    );
                                  },
                                ),
                                const Text(
                                  'Nữ',
                                  style: TextStyle(
                                    fontFamily: 'AvertaStdCY-Regular',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text_Form_Field(),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      'Số điện thoại',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text_Form_Field(),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      'Trường học',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text_Form_Field(),
                    const Text(
                      'Địa chỉ',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text_Form_Field(),
                  ],
                )),
            SizedBox(height: size.height * 0.02),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 50),
                primary: Color(0xFF0EBF7E),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text("Lưu"),
            ),
          ],
        ));
  }
}

class Text_Form_Field extends StatelessWidget {
  const Text_Form_Field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 11),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        isDense: true,
      ),
    );
  }
}
