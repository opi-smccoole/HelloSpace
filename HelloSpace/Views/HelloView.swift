//
//  ContentView.swift
//  HelloSpace
//
//  Created by Steve McCoole on 1/31/24.
//

import SwiftUI
import SFSafeSymbols

struct HelloView: View {
    var body: some View {
        NavigationView {
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
                    .padding()
                Divider()
                    .padding()
                NavigationLink(destination: SpaceView()) {
                    Label {
                        Text(HSLocalized.Button.seeSpace)
                    } icon: {
                        Image(asset: HSAsset.Assets.telescope)
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(.infinity)
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    HelloView()
}
