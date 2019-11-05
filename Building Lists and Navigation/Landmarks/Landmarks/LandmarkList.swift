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
    List(landmarkData) { landmark in
      LandmarkRow(landmark: landmark)
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
