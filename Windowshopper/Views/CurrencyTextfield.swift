//
//  CurrencyTextfield.swift
//  Windowshopper
//
//  Created by Ashish Raj on 17/05/1940 Saka.
//  Copyright © 1940 Saka Ashish Raj. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextfield: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencylbl = UILabel(frame:CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencylbl.backgroundColor = #colorLiteral(red: 0.981407943, green: 1, blue: 0.9620844629, alpha: 0.25)
        currencylbl.textAlignment = .center
        currencylbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencylbl.layer.cornerRadius = 5.0
        currencylbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencylbl.text = formatter.currencySymbol
        addSubview(currencylbl)
        
    }
    
    override func prepareForInterfaceBuilder() {//Interface Builder waits until all objects in a graph have been created and initialized before calling this method,Called when a designable object is created in Interface Builder.

        customize()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()//it is guaranteed to have all its outlet and action connections already established.,custom initialization for custom views
        customize()
        
        }
        
        func customize()
        {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            clipsToBounds = true
            textAlignment = .center
            
            if let p = placeholder{
                let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
