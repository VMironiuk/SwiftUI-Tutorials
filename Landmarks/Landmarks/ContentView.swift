//
//  ContentView.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 28.10.2019.
//  Copyright © 2019 Vladimir Mironiuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Turtle Rock")
        .font(.title)
      
      HStack {
        Text("Joshua Tree National Park")
        Spacer()
        Text("California")
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
