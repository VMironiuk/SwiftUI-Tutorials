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
    VStack {
      MapView()
        .frame(height: 300.0)
        .edgesIgnoringSafeArea(.top)
      
      CircleImage()
        .offset(y: -130.0)
        .padding(.bottom, -130.0)
      
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
      
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
