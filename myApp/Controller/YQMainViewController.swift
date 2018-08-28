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
        self.view.backgroundColor = UIColor.red
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addChildVC(tag:Int, imagePath:String, selectedPath:String, title:String, vc:UIViewController) {
        
//        var tabbarImage              = UIImage(named: imagePath)
//        var selectedImage            = UIImage(named: selectedPath)
//        let resizeScale:CGFloat      = (tabbarImage?.size.height)! / kTabbarHeight*2/3
//        tabbarImage                  = tabbarImage?.scaleImage(scaleSize: resizeScale)
//        selectedImage                = selectedImage?.scaleImage(scaleSize: resizeScale)
//        
//        vc.tabBarItem.image          = tabbarImage
//        vc.tabBarItem.selectedImage  = selectedImage
        
    }

}

