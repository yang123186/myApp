//
//   TabbarViewController.swift
//  myApp
//
//  Created by yangrongqing on 2018/9/1.
//  Copyright © 2018年 royi. All rights reserved.
//

import Foundation


import UIKit

class TabBarViewController: UITabBarController {
    var _backView:UIView? = nil
    var  items:NSArray = []
    let NameArr = ["首页","分类","购物车","我的"]
    let PicArr = ["main","grid","cart","me"]
    let PicSelectArr = ["main_blue","grid_blue","cart_blue","me_blue"]

    //初始化数组
    var NavVCArr:[NSObject] = [NSObject]()
    
    var nav:UINavigationController = UINavigationController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.CreatTabBar()
    }
    
    //创建tabBar
    func CreatTabBar()  {
        
        _backView = UIView(frame:CGRect(x:0,y:0,width:kScreenWidth,height:49))
        
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        let vc4 = UIViewController()
        
        vc1.view.backgroundColor = UIColor.red
        vc2.view.backgroundColor = UIColor.blue
        vc3.view.backgroundColor = UIColor.brown
        vc4.view.backgroundColor = UIColor.green
        
        _ = [vc1, vc2, vc3, vc4]
        
        vc1.title = "首页"
        let MainNav = UINavigationController(rootViewController:vc1)
        MainNav.tabBarItem.title = "首页"
        MainNav.tabBarItem.image = UIImage(named:"home")
        MainNav.tabBarItem.selectedImage = UIImage(named:"home_clicked")
        
        vc2.title = "分类"
        let ClassNav = UINavigationController(rootViewController:vc2)
        ClassNav.tabBarItem.title = "分类"
        ClassNav.tabBarItem.image = UIImage(named:"message")
        ClassNav.tabBarItem.selectedImage = UIImage(named:"message_clicked")
        
        vc3.title = "购物车"
        let CartNav = UINavigationController(rootViewController:vc3)
        CartNav.tabBarItem.title = "购物车"
        CartNav.tabBarItem.image = UIImage(named:"person")
        CartNav.tabBarItem.selectedImage = UIImage(named:"person_clicked")
        
        vc4.title = "我的"
        let MyNav = UINavigationController(rootViewController:vc4)
        MyNav.tabBarItem.title = "我的"
        MyNav.tabBarItem.image = UIImage(named:"circle")
        MyNav.tabBarItem.selectedImage = UIImage(named:"circle_clicked")
        
        // 添加工具栏
        items = [vc1,vc2,vc3,vc4]
        self.viewControllers = items as? [UIViewController]
//        for  i in 0 ..< items.count {
//            /*
//             (items[i] as AnyObject) 相当于 self.navigationController?
//             **/
//            //设置导航栏的背景图片 （优先级高）
//            (items[i] as AnyObject).navigationBar.setBackgroundImage(UIImage(named:"NavigationBar"), for:.default)
//            //设置导航栏的背景颜色 （优先级低）
//            (items[i] as AnyObject).navigationBar.barTintColor = UIColor.orange
//            //设置导航栏的字体颜色
//            (items[i] as AnyObject).navigationBar.titleTextAttributes =
//                [kCTForegroundColorAttributeName: UIColor.red] as [NSAttributedStringKey : Any]
//        }
        
        
        /**
         for循环控制器数组 写法
         
         for  M in 0 ..< VCArr.count {
         nav = UINavigationController(rootViewController:(VCArr[M] as AnyObject as! UIViewController))
         
         nav.tabBarItem.title = NameArr[M]
         nav.tabBarItem.image = UIImage(named:PicArr[M])
         nav.tabBarItem.selectedImage = UIImage(named:PicSelectArr[M])
         VCArr[M].title = NameArr[M]
         NavVCArr.append(nav)
         }
         // 添加工具栏
         // items = [MainNav,ClassNav,CartNav,MyNav]
         self.viewControllers = NavVCArr as? [UIViewController]
         for  i in 0 ..< NavVCArr.count {
         /*
         (items[i] as AnyObject) 相当于 self.navigationController?
         **/
         //设置导航栏的背景图片 （优先级高）
         (NavVCArr[i] as AnyObject).navigationBar.setBackgroundImage(UIImage(named:"NavigationBar"), for:.default)
         //设置导航栏的背景颜色 （优先级低）
         (NavVCArr[i] as AnyObject).navigationBar.barTintColor = UIColor.orange
         //设置导航栏的字体颜色
         (NavVCArr[i] as AnyObject).navigationBar.titleTextAttributes =
         [NSForegroundColorAttributeName: UIColor.red]
         
         }
         */
        //tabBar 底部工具栏背景颜色 (以下两个都行)
        self.tabBar.barTintColor = UIColor.orange
        self.tabBar.backgroundColor = UIColor.brown
        //设置 tabBar 工具栏字体颜色 (未选中  和  选中)
//        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.white, forKey:kCTForegroundColorAttributeName as! NSCopying) as? [String : AnyObject], for:UIControlState.normal);
//        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.red, forKey:kCTForegroundColorAttributeName as! NSCopying) as? [String : AnyObject], for:UIControlState.selected);
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
