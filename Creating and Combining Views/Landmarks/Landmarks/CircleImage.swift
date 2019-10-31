//
//  CircleImage.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 29.10.2019.
//  Copyright © 2019 Vladimir Mironiuk. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
  var body: some View {
    Image("turtlerock")
      .clipShape(Circle())
      .overlay(
        Circle()
          .stroke(Color.white, lineWidth: 4))
      .shadow(radius: 10)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage()
  }
}
