//
//  TagCellLayout+Helper.swift
//  TagCellLayout
//
//  Created by Ritesh-Gupta on 20/11/15.
//  Copyright © 2015 Ritesh. All rights reserved.
//

import Foundation
import UIKit

extension Float {
  func cgValue() -> CGFloat {
    return CGFloat(self)
  }
}

extension CGFloat {
  func floatValue() -> Float {
    return Float(self)
  }
}

protocol TagCellLayoutDelegate: NSObjectProtocol {
  func tagCellLayoutTagWidth(layout: TagCellLayout, atIndex index:Int) -> Float
  func tagCellLayoutTagFixHeight(layout: TagCellLayout) -> Float
}

class TagCellLayoutInfo: NSObject {
  var layoutAttribute: UICollectionViewLayoutAttributes?
  var whiteSpace: Float?
}

enum TagAlignmentType:Int {
  case Left
  case Center
  case Right
  
  var distributionFactor:Float {
    var factor = Float(1.0)
    switch self {
    case .Left, .Right:
      factor = Float(1.0)
    case .Center:
      factor = Float(2.0)
    }
    return factor
  }
}
