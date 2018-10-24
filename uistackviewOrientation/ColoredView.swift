//
//  ColoredView.swift
//  uistackviewOrientation
//
//  Created by User on 18/10/2018.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

class ColoredView: UIView
{
  let id: Int
  
  init(_ id: Int) {
    
    self.id = id
    
    super.init(frame: CGRect.zero)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("This class does not support NSCoding")
  }
  
  override var intrinsicContentSize: CGSize {
    let h = getHeightAccordingToDeviceOrientation()
    printDebug("height is ", h)
    return CGSize(width: 0, height: h)
  }
  
  func getHeightAccordingToDeviceOrientation() -> CGFloat
  {
    let app = UIApplication.shared;
    return app.statusBarOrientation == UIInterfaceOrientation.landscapeLeft
      || app.statusBarOrientation == UIInterfaceOrientation.landscapeRight ? 50 : 100
  }
  
  override func layoutSubviews() {
    printDebug("layoutSubviews. Bounds are ", bounds)
    super.layoutSubviews()
  }
  
  override var bounds: CGRect {
    didSet {
      printDebug("bounds are set", bounds)
    }
  }
  
  func printDebug(_ items: Any...)
  {
    print("[", id, "]", items, separator: "")
  }
}
