//
//  ContentView.swift
//  RohitTStandalone
//  2/13/2023

//  credit to https://www.timeout.com/film/the-best-films-of-2022-so-far for images and descriptions
//  credit to https://www.appicon.co for icon

import SwiftUI

struct ContentView: View {
    var body: some View {
            MovieList()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
