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
  @State var draftProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      HStack {
        if self.mode?.wrappedValue == .active {
          Button("Cancel") {
            self.draftProfile = self.userData.profile
            self.mode?.animation().wrappedValue = .inactive
          }
        }
        
        Spacer()
        
        EditButton()
      }
      if self.mode?.wrappedValue == .inactive {
        ProfileSummary(profile: self.draftProfile)
      }
      else {
        ProfileEditor(profile: $draftProfile)
          .onAppear {
            self.draftProfile = self.userData.profile
        }
        .onDisappear {
          self.userData.profile = self.draftProfile
        }
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
