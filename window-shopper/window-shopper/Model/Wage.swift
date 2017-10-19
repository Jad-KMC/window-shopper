//
//  Wage.swift
//  window-shopper
//
//  Created by Nexion MacBook on 10/19/17.
//  Copyright © 2017 Nexion. All rights reserved.
//

import Foundation

class Wage {
    // you can name your parameters, which is what "forWage" "andPrice" are
    // class functions can be used directly, whereas regular functions need to have their parent class instantiated.
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        // ceil rounds up the answer to the nearest whole number
        return Int(ceil(price / wage))
    }
}
