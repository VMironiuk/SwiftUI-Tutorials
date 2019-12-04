//
//  Home.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 04.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
  var body: some View {
    NavigationView {
      Text("Landmarks Content")
        .navigationBarTitle("Featured")
    }
  }
}

struct CategoryHome_Previews: PreviewProvider {
  static var previews: some View {
    CategoryHome()
  }
}
