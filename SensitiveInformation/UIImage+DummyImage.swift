//
//  UIImage+DummyImage.swift
//  SensitiveInformation
//
//  Created by Damien Laughton on 27/04/2018.
//  Copyright © 2018 Mobilology Limited. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    class func dummyImage(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

