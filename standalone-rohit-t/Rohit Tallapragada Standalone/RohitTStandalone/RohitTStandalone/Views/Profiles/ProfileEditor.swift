//
//  ProfileEditor.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
        
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }

        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}

