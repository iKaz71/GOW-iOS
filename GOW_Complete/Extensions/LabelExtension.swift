//
//  UILabelExtension.swift
//  GOW_Complete
//
//  Created by Lex Santos on 08/03/25.
// import Foundation

import UIKit

extension UILabel {
    func customFont(fontFamily : String, fontSize : Int, fontStyle : UIFont.TextStyle) {
        let myFont = UIFont(name: fontFamily, size: CGFloat(fontSize))
        let bodyMetrics = UIFontMetrics(forTextStyle: fontStyle)
        self.font = bodyMetrics.scaledFont(for: myFont ?? UIFont.systemFont(ofSize: CGFloat(fontSize)))
        
        /*
         self.font = customFont
         
         if #available(iOS 11.0, *) {
             let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
             self.font = fontMetrics.scaledFont(for: customFont)
             self.adjustsFontForContentSizeCategory = true
         }
         */
        
    }
}


