//
//  ViewController.swift
//  UISegmentedControlPractice
//
//  Created by dave76 on 29/12/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let radiusSegmentedControl: UISegmentedControl = {
    let items = ["1Km", "2Km", "3Km", "5Km"]
    let segmentedControl = UISegmentedControl(items: items)
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    segmentedControl.setImage(UIImage(named: "oil_gun"), forSegmentAt: 1)

//    segmentedControl.setTitle("2Km", forSegmentAt: 1)
    return segmentedControl
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  fileprivate func setupViews() {
    view.addSubview(radiusSegmentedControl)
    NSLayoutConstraint.activate([
      radiusSegmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
      radiusSegmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
      radiusSegmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
      radiusSegmentedControl.heightAnchor.constraint(equalToConstant: 100)
      ])
  }


}

