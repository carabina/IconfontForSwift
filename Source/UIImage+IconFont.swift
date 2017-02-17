//
//  UIImage+IconFont.swift
//  SwiftIconfont
//
//  Created by HY on 2017/2/17.
//  Copyright © 2017年 zeroLL. All rights reserved.
//

import UIKit
import CoreText

extension String {
   func unicode() -> String{
      let strunicode = Int(self, radix: 16).map { str -> String in
         guard let unicode = UnicodeScalar(str) else{
            return ""
         }
         return String(describing: unicode)
      }
      
      return strunicode ?? ""
   }
}

extension UIImage{
   class func icon(text: String, size: CGFloat, color: UIColor, ttfname:String = "iconfont") -> UIImage{
      let iconFont = ttfname
      let scale = UIScreen.main.scale
      let realSize = size * scale
      let font = UIFont(name: iconFont, size: realSize) ?? UIFont()
      
      UIGraphicsBeginImageContext(CGSize(width: realSize, height: realSize))
      text.unicode().draw(at: CGPoint.zero, withAttributes: [NSFontAttributeName:font, NSForegroundColorAttributeName: color])
      let image = UIImage(cgImage: (UIGraphicsGetImageFromCurrentImageContext()?.cgImage)!, scale: scale, orientation: UIImageOrientation.up)
      return image
   }
}
