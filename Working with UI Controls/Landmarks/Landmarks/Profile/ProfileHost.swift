//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 23.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
  @Environment(\.editMode) var mode
  @EnvironmentObject var userData: UserData
  @State var drafrtProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      HStack {
        Spacer()
        EditButton()
      }
      if self.mode?.wrappedValue == .inactive {
        ProfileSummary(profile: self.drafrtProfile)
      }
      else {
        Text("Profile Editor")
      }
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost().environmentObject(UserData())
  }
}
