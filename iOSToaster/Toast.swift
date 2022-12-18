//
//  Toast.swift
//  iOSToaster
//
//  Created by enes cetinkaya on 18.12.2022.
//

import Foundation
import SwiftUI

class Toast{
    
    init(){
        
    }
    
    public func CreateToast(message: String) -> UIAlertController {
        let toast = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        return toast
    }
}
