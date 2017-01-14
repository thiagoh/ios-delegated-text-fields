//
//  RandomTextFieldDelegate.swift
//  TextFields
//
//  Created by Thiago Andrade on 2017-01-13.
//  Copyright © 2017 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomTextFieldDelegate: NSObject, UITextFieldDelegate {

  let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]

  override init() {
    super.init();
  }

  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                 replacementString string: String) -> Bool {

    let randomValue = arc4random();

    print("there are ", colors.count, " colors", " random value ", randomValue, " converted ", Int(randomValue));

    let color = colors[Int(randomValue) % colors.count];

    textField.textColor = color;

    return true;
  }
}
