//
//  ToastController.swift
//  iOSToaster
//
//  Created by enes cetinkaya on 18.12.2022.
//

import Foundation
import SwiftUI

class ToastController {
    public static func ShowToast(message: String) {
        DispatchQueue.main.async {
            if let rootViewController = UIApplication.shared.windows.first?.rootViewController {
                let toast = Toast().CreateToast(message: message)
                rootViewController.present(toast, animated: true)
                
                let duration: Double = 1
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + duration){
                    toast.dismiss(animated: true)
                }
            }
        }
    }
}
