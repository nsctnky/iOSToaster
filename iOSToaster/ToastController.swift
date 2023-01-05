//
//  ToastController.swift
//  iOSToaster
//
//  Created by enes cetinkaya on 18.12.2022.
//

import Foundation
import SwiftUI

class ToastController {
    public static func ShowToast(message: String, isShortDuration: Bool) {
    
        if let rootViewController = UIApplication.shared.windows.first?.rootViewController {
            let toast = Toast(message: message, isShortDuration: isShortDuration)
            let mainDispatchQueue = DispatchQueue.main
            
            toast.Show(context: mainDispatchQueue, rootView: rootViewController)
        }
    }
}
