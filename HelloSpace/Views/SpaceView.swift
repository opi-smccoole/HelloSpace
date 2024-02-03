//
//  SpaceView.swift
//  HelloSpace
//
//  Created by Steve McCoole on 2/3/24.
//  Copyright © 2024 Steve McCoole. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct SpaceView: View {
    var body: some View {
        WebImage(url: URL(string: "https://www.nasa.gov/wp-content/uploads/2023/12/pia04609orig.jpg"))
            .resizable()
            .indicator(.activity)
            .scaledToFit()
    }
}

#Preview {
    SpaceView()
}
