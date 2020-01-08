//
//  PageView.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 27.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
  var viewControllers: [UIHostingController<Page>]
  @State var currentPage = 0
  
  init(_ views: [Page]) {
    self.viewControllers = views.map { UIHostingController(rootView: $0) }
  }
  
  var body: some View {
    VStack {
      PageViewController(controllers: self.viewControllers, currentPage: $currentPage)
      Text("Current Page: \(self.currentPage)")
    }
  }
}

struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    PageView(features.map {FeatureCard(landmark: $0)})
      .aspectRatio(3/2, contentMode: .fit)
  }
}
