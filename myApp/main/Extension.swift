//
//  Extension.swift
//  myApp
//
//  Created by 杨容清 on 2018/8/25.
//  Copyright © 2018年 royi. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func resizeImage(reSize:CGSize) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(reSize, false, screenScale)
        self.draw(in: CGRect(origin: CGPoint(x: 0, y: 0), size: reSize))
        let resizedImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resizedImage
    }
    
    func scaleImage(scaleSize:CGFloat) -> UIImage {
        let reSize = CGSize(width: self.size.width * scaleSize, height: self.size.height * scaleSize)
        return resizeImage(reSize: reSize)
    }
}
