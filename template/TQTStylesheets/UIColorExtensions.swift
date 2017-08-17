//
//  UIColorExtensions.swift
//  template
//
//  Created by Taqtile on 15/08/17.
//  Copyright © 2017 Taqtile. All rights reserved.
//

import Foundation
import UIKit

let COLOR_MASK_HIGHLIGHTED: Int32 = 0x33000000
let COLOR_MASK_DISABLED: Int32 = 0x66FFFFFF

/*
 * This is a swift version for the existent macros contained in Colors.h
 * the idea is to drop the use of the macros to use this extension instead
 */
extension UIColor {
  static func fromHex(_ fromHex: Int32) -> UIColor {
    return fromHexa(fromHex, alpha: 1.0)
  }
  
  static func fromHexa(_ fromHex: Int32, alpha: Float) -> UIColor {
    let red = redFromHex(fromHex) / 255
    let green = greenFromHex(fromHex) / 255
    let blue = blueFromHex(fromHex) / 255
    let alpha = CGFloat(alpha)
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }
  
  static func highlightedFromHexa(_ fromHex: Int32, alpha: Float) -> UIColor {
    return alphaCompositing(fromHex, alpha: alpha, mask: COLOR_MASK_HIGHLIGHTED)
  }
  
  static func highlightedFromHex(_ fromHex: Int32) -> UIColor {
    return highlightedFromHexa(fromHex, alpha: 1)
  }
  
  static func disabledFromHexa(_ fromHex: Int32, alpha: Float) -> UIColor {
    return alphaCompositing(fromHex, alpha: alpha, mask: COLOR_MASK_DISABLED)
  }
  
  static func disabledFromHex(_ fromHex: Int32) -> UIColor {
    return disabledFromHexa(fromHex, alpha: 1)
  }
  
  // MARK - Privates
  // alpha compositing http://en.wikipedia.org/wiki/Alpha_compositing
  fileprivate static func alphaCompositing(_ fromHex: Int32, alpha: Float, mask: Int32) -> UIColor {
    return UIColor(
      red: redFromHex(fromHex) * alphaFromHex(mask) + redFromHex(fromHex) * CGFloat(alpha) * (1 - alphaFromHex(mask)/255),
      green: greenFromHex(fromHex) * alphaFromHex(mask) + greenFromHex(fromHex) * CGFloat(alpha) * (1 - alphaFromHex(mask)/255),
      blue: blueFromHex(fromHex) * alphaFromHex(mask) + blueFromHex(fromHex) * CGFloat(alpha) * (1 - alphaFromHex(mask)/255),
      alpha: CGFloat(alpha))
  }
  
  // Get RGB components from HEX macros
  fileprivate static func redFromHex(_ fromHex: Int32) -> CGFloat {
    let mask = 0xFF0000 as UInt32
    let color = UInt32(fromHex)
    return CGFloat((color & mask) >> 16)
  }
  
  fileprivate static func greenFromHex(_ fromHex: Int32) -> CGFloat {
    let mask = 0x00FF00 as UInt32
    let color = UInt32(fromHex)
    return CGFloat((color & mask) >> 8)
  }
  
  fileprivate static func blueFromHex(_ fromHex: Int32) -> CGFloat {
    let mask = 0x0000FF as UInt32
    let color = UInt32(fromHex)
    return CGFloat(color & mask)
  }
  
  fileprivate static func alphaFromHex(_ fromHex: Int32) -> CGFloat {
    let mask = 0xFF000000 as UInt32
    let color = UInt32(fromHex)
    return CGFloat(((color & mask) >> 24)/255)
  }
}
