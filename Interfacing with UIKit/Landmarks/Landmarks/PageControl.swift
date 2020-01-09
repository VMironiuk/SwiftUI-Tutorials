//
//  PageControl.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 09.01.2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
  var numberOfPages: Int
  @Binding var currentPage: Int
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  func makeUIView(context: Context) -> UIPageControl {
    let control = UIPageControl()
    control.numberOfPages = self.numberOfPages
    control.addTarget(
      context.coordinator,
      action: #selector(Coordinator.updateCurrentPage(sender:)),
      for: .valueChanged)
    
    return control
  }
  
  func updateUIView(_ control: UIPageControl, context: Context) {
    control.currentPage = self.currentPage
  }
  
  class Coordinator: NSObject {
    var control: PageControl
    
    init(_ control: PageControl) {
      self.control = control
    }
    
    @objc func updateCurrentPage(sender: UIPageControl) {
      self.control.currentPage = sender.currentPage
    }
  }
}
