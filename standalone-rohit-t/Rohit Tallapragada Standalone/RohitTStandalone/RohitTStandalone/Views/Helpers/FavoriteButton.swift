//
//  FavoriteButton.swift
//  RohitTStandalone
//
//  Created by keckuser on 2/12/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "checkmark.circle.fill" : "checkmark.circle")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .blue : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
