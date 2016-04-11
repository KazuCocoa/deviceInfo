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

    func setSystemInfo(label: UILabel) {
        var text = ""
        text.appendContentsOf("端末名: " + HandleSystemInfo.getDeviceName() + "\n")
        text.appendContentsOf("OSバージョン: " + HandleSystemInfo.getDeviceVersion() + "\n")
        text.appendContentsOf("MACアドレス: " + HandleSystemInfo.getMACAddress() + "\n")
        text.appendContentsOf("キャリア: " + HandleSystemInfo.getSIMServiceProvider() + "\n")
        text.appendContentsOf("point: " + HandleSystemInfo.getDisplayPoint() + "\n")
        text.appendContentsOf("pixel: " + HandleSystemInfo.getDisplayPixel() + "\n")

        label.numberOfLines = 10

        label.text = text
    }
}

