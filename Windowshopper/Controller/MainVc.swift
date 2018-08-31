//
//  ViewController.swift
//  Windowshopper
//
//  Created by Ashish Raj on 17/05/1940 Saka.
//  Copyright © 1940 Saka Ashish Raj. All rights reserved.
//

import UIKit

class MainVc: UIViewController {
    
    @IBOutlet weak var wagetxt: CurrencyTextfield!
    @IBOutlet weak var pricetxt: CurrencyTextfield!
    @IBOutlet weak var resultlbl: UILabel!
    @IBOutlet weak var hourlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcbtn = UIButton(frame:CGRect(x: 0, y: 0, width : view.frame.size.width, height: 60))
        calcbtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcbtn.setTitle("Calculate", for: .normal)
        calcbtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcbtn.addTarget(self, action: #selector(MainVc.calculate), for: .touchUpInside)
        wagetxt.inputAccessoryView = calcbtn
        pricetxt.inputAccessoryView = calcbtn
        resultlbl.isHidden=true
        hourlbl.isHidden=true
    }

    @objc func calculate(){
     if let wagetxt = wagetxt.text , let pricetxt = pricetxt.text
    {
        if let wage = Double(wagetxt) , let price = Double(pricetxt)
        {
            view.endEditing(true)
            resultlbl.isHidden = false
            hourlbl.isHidden = false
            resultlbl.text = "\(Wage.gethours(forWage: wage, andPrice: price))"
        }
    }
    }
    
    
    @IBAction func calculatebtn(_ sender: Any) {
        resultlbl.isHidden = true
        hourlbl.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
    }
    
}

