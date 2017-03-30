//
//  ViewController.swift
//  Example
//
//  Created by David Cordero on 30.03.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit
import SwiftyVersion

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myVersion1 = Version("1-5-2", usingSeparator: "-")
        let myVersion2 = Version("1.5.2.1")
        
        print(myVersion1 == myVersion2) // "false"
        print(myVersion1 > myVersion2)  // "false"
        print(myVersion1 >= myVersion2) // "false"
        print(myVersion1 < myVersion2)  // "true"
        print(myVersion1 <= myVersion2) // "true"
    }
}
