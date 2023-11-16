//
//  CircleView.swift
//  GeometryHelper
//
//  Created by Ansheng Zhou on 2023-11-16.
//

import SwiftUI

struct CircleView: View {
    
//    mark:stored properties
    @State var radius = 10.0
    
//    mark:computed properties
    var body: some View {
        Text("\(radius)")
            .font(.largeTitle)
    }
}

#Preview {
    CircleView()
}
