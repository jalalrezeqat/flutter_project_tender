
import 'package:project2/Screen_Add/companyadd.dart';
import 'package:project2/Screen_Home/categories.dart';
import 'package:project2/Screen_Add/categorisadd.dart';
import 'package:project2/Screen_Home/companyhome.dart';
import 'package:project2/Screen_Home/home.dart';
import 'package:project2/Screen_Home/login.dart';
import 'package:project2/Screen_Home/prodact.dart';
import 'package:project2/Screen_Add/productadd.dart';
import 'package:project2/Screen_Add/useradd.dart';
import 'package:project2/Screen_Home/userhome.dart';





getRoutes(){
  return {
    Login.routeName:(context) => Login(),
  Home.routeName: (context) => Home(),
  UserHome.routeName: (context) => UserHome(),
  UserAdd.routeName: (context) => UserAdd(),
  CompanyHome.routeName: (context) => CompanyHome(),
  CompanyAdd.routeName: (context) => CompanyAdd(),
    ProductHome.routeName: (context) => ProductHome(),
    ProductAdd.routeName:(context)=> ProductAdd(),
    CategoriesHome.routeName:(context)=> CategoriesHome(),
    CategoriesAdd.routeName:(context)=> CategoriesAdd(),


  };
}