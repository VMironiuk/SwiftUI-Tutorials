//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 01.11.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark
  
  var body: some View {
    HStack {
      landmark.image
        .resizable()
        .frame(width: 50.0, height: 50.0)
      
      Text(landmark.name)
    }
  }
}

struct LandmarkRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      LandmarkRow(landmark: landmarkData[0])
      LandmarkRow(landmark: landmarkData[1])
    }
    .previewLayout(.fixed(width: 300.0, height: 70.0))
  }
}
