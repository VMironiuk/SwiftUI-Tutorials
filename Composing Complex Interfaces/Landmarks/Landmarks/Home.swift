//
//  Home.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 04.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
  var categories: [String: [Landmark]] {
    Dictionary(
      grouping: landmarkData,
      by: { $0.category.rawValue }
    )
  }
  
  var body: some View {
    NavigationView {
      List {
        ForEach(categories.keys.sorted(), id: \.self) { key in
          CategoryRow(categoryName: key, items: self.categories[key]!)
        }
      }
      .navigationBarTitle("Featured")
    }
  }
}

struct CategoryHome_Previews: PreviewProvider {
  static var previews: some View {
    CategoryHome()
  }
}
