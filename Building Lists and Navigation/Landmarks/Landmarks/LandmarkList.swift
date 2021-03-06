//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 04.11.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarkData) { landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationBarTitle(Text("Landmarks"))
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone SE", "iPhone 11 Pro"], id: \.self) { displayName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: displayName))
        .previewDisplayName(displayName)
    }
  }
}
