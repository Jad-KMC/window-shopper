//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Nexion MacBook on 10/18/17.
//  Copyright © 2017 Nexion. All rights reserved.
//

import UIKit
// This will allow the interface builder to display what is programmed in
// as long as the "prepare for interface builder" function is implemented
@IBDesignable
class CurrencyTxtField: UITextField {

    // custom currency label
    // if you implement draw rect, you need to set clip to bounds for everything that you want rounded/modified
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8354593863, green: 0.8354593863, blue: 0.8354593863, alpha: 0.796286387)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        // NumberFormatter allows for different currencies automatically based on locale
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl) // adds this custom drawing to the text field
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    // calling this function makes sure this code is called when the interface builder is building your app, before it is displayed to the user
    override func awakeFromNib() {
        customizeView()
    }

    func customizeView() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2532641267)
        layer.cornerRadius = 5.0 // This rounds the corners of an object
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place // this will override the original placeholder
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
