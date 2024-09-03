import 'package:derana_multipart/presentation/shared/const.dart';
import 'package:derana_multipart/presentation/shared/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'model_bottom_widget.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});
  static const routeName = "/formPage";

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulir Bahasa",
          style: blackTextStyle.copyWith(fontWeight: extraBold),
        ),
      ),
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                    top: deviceHeight * 0.03,
                    left: deviceWidth * 0.06,
                    right: deviceWidth * 0.06,
                  ),
                  width: deviceWidth,
                  height: deviceHeight * 0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [
                        0.9,
                        0.1
                      ], // Membagi layar menjadi dua bagian
                      colors: [
                        primaryColor, // Warna awal
                        lightBackgroundColor, // Warna akhir
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: deviceWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bantu Kami",
                                  style: whiteTextStyle.copyWith(
                                    fontSize: deviceWidth * 0.05,
                                    fontWeight: extraBold,
                                  ),
                                ),
                                SizedBox(
                                  height: deviceHeight * 0.01,
                                ),
                                Text(
                                  "Kami sedang mengumpulkan\n200 kosakata bahasa daerah\ndi Indonesia",
                                  style: whiteTextStyle,
                                )
                              ],
                            ),
                            Image.asset(
                              "assets/image/form.png",
                              scale: 1.3,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: deviceWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: deviceHeight * 0.01,
                          horizontal: deviceWidth * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset(
                              "assets/image/icon_derana.png",
                              scale: 3,
                            ),
                            Text(
                              "Unduh playbook untuk tahu\nbagaimana caranya",
                              style: lightGreyTextStyle,
                            ),
                            Container(
                              width: deviceWidth * 0.2,
                              padding: EdgeInsets.symmetric(
                                vertical: deviceHeight * 0.005,
                                horizontal: deviceWidth * 0.005,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor,
                              ),
                              child: Center(
                                  child: Text(
                                "Unduh",
                                style: whiteTextStyle,
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.06),
                width: deviceWidth,
                height: deviceHeight * 0.48,
                decoration: BoxDecoration(color: lightBackgroundColor),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      //kotak tengah///////////
                      Container(
                        margin: EdgeInsets.only(top: deviceHeight * 0.02),
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.05,
                          vertical: deviceHeight * 0.02,
                        ),
                        width: deviceWidth,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Kami membutuhkanmu!",
                              style: blackTextStyle.copyWith(
                                color: const Color.fromRGBO(117, 117, 117, 1),
                                fontSize: deviceWidth * 0.044,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: deviceHeight * 0.02,
                            ),
                            ListTile(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ModalBottomWidget(
                                      title: "Data Responden",
                                      items: [
                                        ModalBottomItem(
                                            image: "account",
                                            sentences:
                                                "Kamu perlu mengisi identitasmu yang berisi (nama, jenis kelamin, usia, tempat lahir, pendidikan terakhir dan pekerjaan)"),
                                        ModalBottomItem(
                                            image: "text_image",
                                            sentences:
                                                "Kamu perlu mengisi beberapa kondisi kebahasaan yang terdapat di daerah kamu.")
                                      ],
                                    );
                                  },
                                );
                              },
                              contentPadding: EdgeInsets.zero,
                              leading: Image.asset(
                                "assets/image/isi_formulir.png",
                                scale: 1.5,
                              ),
                              title: Text(
                                "Isi formulir data responden",
                                style: greyFormTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: deviceWidth * 0.035,
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: deviceHeight * 0.01),
                                child: Text(
                                  "Kamu sebagai responden dan kontributor kami",
                                  style: greyFormTextStyle.copyWith(
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                size: deviceWidth * 0.08,
                              ),
                            ),
                            //DATA BAHASA
                            ListTile(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ModalBottomWidget(
                                      title: "Data Bahasa",
                                      items: [
                                        ModalBottomItem(
                                            image: "papan",
                                            sentences:
                                                "Data bahasa yang terdapat di dalam formulir berjumlah >200 kosakata dasar yang telah dikategorikan"),
                                        ModalBottomItem(
                                            image: "translate",
                                            sentences:
                                                "Kamu hanya perlu menerjemahkan kosakata tersebut ke dalam bahasa daerahmu.")
                                      ],
                                    );
                                  },
                                );
                              },
                              contentPadding: EdgeInsets.zero,
                              leading: Image.asset(
                                "assets/image/isi_bahasa.png",
                                scale: 1.5,
                              ),
                              title: Text(
                                "Isi data bahasa",
                                style: greyFormTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: deviceWidth * 0.035,
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: deviceHeight * 0.01),
                                child: Text(
                                  "Bantu kami mengisi kosakata dalam bahasa daerahmu.",
                                  style: greyFormTextStyle.copyWith(
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                size: deviceWidth * 0.08,
                              ),
                            ),
                            // DATABASE
                            ListTile(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ModalBottomWidget(
                                      title: "Kirim Data Bahasa",
                                      items: [
                                        ModalBottomItem(
                                            image: "message",
                                            sentences:
                                                "Setelah kamu selesai mengisi formulir data bahasa dengan terjemahan bahasa daerah, kamu bisa submit formulir tersebut"),
                                        ModalBottomItem(
                                            image: "inventaris",
                                            sentences:
                                                "Selamat, kamu sudah menginventarisasi bahasa daerah kamu. Hasil data yang terkumpul akan dikembangkan menjadi produk")
                                      ],
                                    );
                                  },
                                );
                              },
                              contentPadding: EdgeInsets.zero,
                              leading: Image.asset(
                                "assets/image/isi_database.png",
                                scale: 1.5,
                              ),
                              title: Text(
                                "Kirim data bahasa",
                                style: greyFormTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: deviceWidth * 0.035,
                                ),
                              ),
                              subtitle: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: deviceHeight * 0.01),
                                child: Text(
                                  "Data kamu akan tersimpan di database kami.",
                                  style: greyFormTextStyle.copyWith(
                                    fontWeight: light,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.chevron_right,
                                size: deviceWidth * 0.08,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //KOTAK BAWAH
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        margin: EdgeInsets.symmetric(
                          vertical: deviceHeight * 0.02,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.05,
                          vertical: deviceHeight * 0.02,
                        ),
                        width: deviceWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/image/icon_derana.png",
                              scale: 3,
                            ),
                            Image.asset(
                              "assets/image/two_arrow.png",
                              scale: 1.5,
                            ),
                            Icon(
                              Icons.account_circle,
                              color: primaryColor,
                              size: deviceWidth * 0.07,
                            ),
                            Text(
                              "Kami membutuhkan nama, email,\ndan nomor telepon kamu",
                              style: greyFormTextStyle,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          bottom: deviceHeight * 0.02,
                        ),
                        width: deviceWidth,
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 0.05,
                          vertical: deviceHeight * 0.02,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset("assets/image/privacy.png"),
                          title: Text(
                            "Privacy is matter",
                            style: greyFormTextStyle.copyWith(
                                fontStyle: FontStyle.italic, fontWeight: bold),
                          ),
                          subtitle: Text(
                            "Tenang, data kamu aman dan terjaga bersama kami",
                            style:
                                greyFormTextStyle.copyWith(fontWeight: light),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: deviceWidth,
                color: whiteColor,
                height: deviceHeight * 0.145,
                padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.06,
                  vertical: deviceHeight * 0.01,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'Saya telah membaca dan menyetujui ',
                              style: greyFormTextStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Syarat dan ketentuan Derana Indonesia',
                                  style: const TextStyle(color: Colors.blue),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Aksi ketika teks di-klik
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight * 0.01,
                    ),
                    Container(
                      width: deviceWidth,
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.01,
                        horizontal: deviceWidth * 0.1,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Lanjutkan",
                          style: whiteTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
