//
//  Wage.swift
//  Windowshopper
//
//  Created by Ashish Raj on 19/05/1940 Saka.
//  Copyright © 1940 Saka Ashish Raj. All rights reserved.
//

import Foundation

class Wage  {
    class func gethours(forWage wage : Double , andPrice price : Double)-> Int {
        return Int(ceil(price/wage))
    }
}
