//
//  PageViewController.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 27.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
  var controllers: [UIViewController]
  
  func makeUIViewController(context: Context) -> UIPageViewController {
    let pageViewController = UIPageViewController(
      transitionStyle: .scroll,
      navigationOrientation: .horizontal)
    
    return pageViewController
  }
  
  func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
    pageViewController.setViewControllers(
      [self.controllers[0]],
      direction: .forward,
      animated: true)
  }
}
