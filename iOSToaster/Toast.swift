//
//  Toast.swift
//  iOSToaster
//
//  Created by enes cetinkaya on 18.12.2022.
//

import Foundation
import SwiftUI

class Toast{
    
    let _toast: UIAlertController
    let _duration: Double

    init(message: String, isShortDuration: Bool) {
        
        _toast = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        if isShortDuration {
            _duration = 1
        }
        else {
            _duration = 2
        }
    }
    
    public func Show(context: DispatchQueue, rootView: UIViewController) {

        context.async {
            rootView.present(self._toast, animated: true)
            
            let duration = DispatchTime.now() + self._duration
            context.asyncAfter(deadline: duration){
                self._toast.dismiss(animated: true)
            }
        }
    }
}
