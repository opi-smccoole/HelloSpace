//
//  ContentView.swift
//  HelloSpace
//
//  Created by Steve McCoole on 1/31/24.
//

import SwiftUI
import SFSafeSymbols

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemSymbol: SFSymbol.globe)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Image(asset: HSAsset.Assets.globeAtlantic)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Text(HSLocalized.Hello.title)
            Text(HSLocalized.Hello.subTitle)
                .foregroundColor(HSAsset.Assets.accentColor.swiftUIColor)
            // Show original picture from
            // https://www.nasa.gov/wp-content/uploads/2023/12/pia04609orig.jpg
            // On a second page in the branch?
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
