//
//  ViewController.swift
//  myApp
//
//  Created by 杨容清 on 2018/8/25.
//  Copyright © 2018年 royi. All rights reserved.
//

import UIKit

class YQMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        let vc4 = UIViewController()
        
        vc1.view.backgroundColor = UIColor.red
        vc2.view.backgroundColor = UIColor.blue
        vc3.view.backgroundColor = UIColor.brown
        vc4.view.backgroundColor = UIColor.green

        self.addChildVC(tag: 0, imagePath: "home", title: "主页", vc: vc1)
        self.addChildVC(tag: 1, imagePath: "person", title: "个人", vc: vc2)
        self.addChildVC(tag: 2, imagePath: "circle", title: "朋友圈", vc: vc3)
        self.addChildVC(tag: 3, imagePath: "message", title: "消息", vc: vc4)
        self.selectedIndex = 3
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addChildVC(tag:Int, imagePath:String, title:String, vc:UIViewController) {
        
        let selectedPath             = imagePath + "_clicked"
        let tabbarImage              = UIImage(named: imagePath)
        let selectedImage            = UIImage(named: selectedPath)
        let resizeScale:CGFloat      = kTabbarHeight / tabbarImage!.size.height*2/3
        
    
        vc.tabBarItem.tag            = tag
        vc.tabBarItem.title          = title
        vc.tabBarItem.image          = tabbarImage?.scaleImage(scaleSize: resizeScale)
        vc.tabBarItem.selectedImage  = selectedImage?.scaleImage(scaleSize: resizeScale)
    
        self.addChildViewController(vc)
    }
    
    
}
