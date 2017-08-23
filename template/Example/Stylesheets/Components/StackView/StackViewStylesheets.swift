//
//  StackViewStylesheets.swift
//  template
//
//  Created by Taqtile on 17/08/17.
//  Copyright © 2017 Taqtile. All rights reserved.
//

import Foundation

@objc class StackViewStylesheet: NSObject {
  static func stylesheet() -> [String : Any] {
    return [ "MediumSpace_StackView": [PK_STACK_VIEW_SPACING, SPACE_SIZE_SMALL]]
  }
}
