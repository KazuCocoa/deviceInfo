//
//  HandleSystemInfo.swift
//  deviceInfo
//
//  Created by 松尾和昭 on 11/04/2016.
//  Copyright © 2016 kazucocoa. All rights reserved.
//

import UIKit
import CoreTelephony

class HandleSystemInfo {

    static func getDeviceName() -> String {
        return UIDevice.currentDevice().systemName
    }

    static func getDeviceVersion() -> String {
        return UIDevice.currentDevice().systemVersion
    }

    static func getMACAddress() -> String {
        return UIDevice.currentDevice().identifierForVendor?.UUIDString ?? ""
    }

    static func getSIMServiceProvider() -> String {
        return CTTelephonyNetworkInfo().subscriberCellularProvider?.carrierName ?? ""
    }

    static func getDisplayPoint() -> String {
        let screen = UIScreen.mainScreen().bounds.size
        return "\(Int(screen.width))x\(Int(screen.height))"
    }

    static func getDisplayPixel() -> String {
        let wihdow = UIScreen.mainScreen().nativeBounds.size
        return "\(Int(wihdow.width))x\(Int(wihdow.height))"
    }
}

