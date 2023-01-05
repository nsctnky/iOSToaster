//
//  ToasterBridging.swift
//  iOSToaster
//
//  Created by enes cetinkaya on 18.12.2022.
//

import Foundation

@_cdecl("iOSToaster_ShowToast")
public func ShowToast(message: UnsafePointer<CChar>, isShortDuration: Bool) {
    let msg = String(cString: message)
    ToastController.ShowToast(message: msg, isShortDuration: isShortDuration)
}
