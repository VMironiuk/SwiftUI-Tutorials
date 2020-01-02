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
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  func makeUIViewController(context: Context) -> UIPageViewController {
    let pageViewController = UIPageViewController(
      transitionStyle: .scroll,
      navigationOrientation: .horizontal)
    pageViewController.dataSource = context.coordinator
    
    return pageViewController
  }
  
  func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
    pageViewController.setViewControllers(
      [self.controllers[0]],
      direction: .forward,
      animated: true)
  }
  
  class Coordinator: NSObject, UIPageViewControllerDataSource {
    var parent: PageViewController
    
    init(_ pageViewController: PageViewController) {
      self.parent = pageViewController
    }
    
    func pageViewController(
      _ pageViewController: UIPageViewController,
      viewControllerBefore viewController: UIViewController) -> UIViewController? {
      guard let index = self.parent.controllers.firstIndex(of: viewController) else {
        return nil
      }
      if index == 0 {
        return self.parent.controllers.last
      }
      return self.parent.controllers[index - 1 ]
    }
    
    func pageViewController(
      _ pageViewController: UIPageViewController,
      viewControllerAfter viewController: UIViewController) -> UIViewController? {
      guard let index = self.parent.controllers.firstIndex(of: viewController) else {
        return nil
      }
      if index + 1 == self.parent.controllers.count {
        return self.parent.controllers.first
      }
      return self.parent.controllers[index + 1]
    }
  }
}
