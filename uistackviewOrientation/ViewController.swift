//
//  ViewController.swift
//  uistackviewOrientation
//
//  Created by User on 18/10/2018.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

  var stackView: UIStackView?
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    stackView = UIStackView()
    stackView!.axis = NSLayoutConstraint.Axis.vertical
    stackView!.distribution = UIStackView.Distribution.fill
    stackView!.alignment = UIStackView.Alignment.fill
    
    view.addSubview(stackView!)
    
    //filling stackView
    var coloredView = ColoredView(0)
    coloredView.backgroundColor = UIColor.gray
    stackView!.addArrangedSubview(coloredView)
    
    coloredView = ColoredView(1)
    coloredView.backgroundColor = UIColor.lightGray
    stackView!.addArrangedSubview(coloredView)
    
    coloredView = ColoredView(2)
    coloredView.backgroundColor = UIColor.gray
    stackView!.addArrangedSubview(coloredView)
    
    coloredView = ColoredView(3)
    coloredView.backgroundColor = UIColor.lightGray
    stackView!.addArrangedSubview(coloredView)
  }
  
  override func viewDidLayoutSubviews() {
    
    print("viewDidLayoutSubviews is called in ViewController!")
    super.viewDidLayoutSubviews()
    
    stackView!.frame = view.bounds
  }
}

