//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Vladimir Mironiuk on 23.12.2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
  @State var drafrtProfile = Profile.default
  
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      ProfileSummary(profile: self.drafrtProfile)
    }
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost()
  }
}
