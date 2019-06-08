//
//  ViewController.swift
//  ValueTransferExampleWIthVC
//
//  Created by dave76 on 31/12/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
  
  @IBOutlet weak var myLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  func sendData(data: String) {
    myLabel.text = data
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "show" {
      let viewController: SendViewController = segue.destination as! SendViewController
        viewController.delegate = self
    }
  }
}

