//
//  SendViewController.swift
//  ValueTransferExampleWIthVC
//
//  Created by dave76 on 31/12/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
  func sendData(data: String)
}

class SendViewController: UIViewController {
  
  var delegate: SendDataDelegate?

  @IBOutlet weak var myTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
  }
  
  @IBAction func myButtonTouched(_ sender: Any) {
    if let data = myTextField.text {
      delegate?.sendData(data: data)
      dismiss(animated: true, completion: nil)
    }
    
  }
}
