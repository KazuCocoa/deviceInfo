//
//  ViewController.swift
//  deviceInfo
//
//  Created by 松尾和昭 on 10/04/2016.
//  Copyright © 2016 kazucocoa. All rights reserved.
//

import UIKit
import CoreTelephony

class ViewController: UIViewController {

    @IBOutlet weak var deviceInfos: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setSystemInfo(deviceInfos)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setSystemInfo(_ label: UILabel) {
        var text = ""
        text.append("端末名: " + HandleSystemInfo.getDeviceName() + "\n")
        text.append("OSバージョン: " + HandleSystemInfo.getDeviceVersion() + "\n")
        text.append("MACアドレス: " + HandleSystemInfo.getMACAddress() + "\n")
        text.append("キャリア: " + HandleSystemInfo.getSIMServiceProvider() + "\n")
        text.append("point: " + HandleSystemInfo.getDisplayPoint() + "\n")
        text.append("pixel: " + HandleSystemInfo.getDisplayPixel() + "\n")

        label.numberOfLines = 10

        label.text = text
    }
}

