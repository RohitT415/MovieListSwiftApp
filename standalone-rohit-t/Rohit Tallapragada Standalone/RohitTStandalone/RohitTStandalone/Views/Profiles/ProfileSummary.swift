//
//  ProfileSummary.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Divider()

                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
