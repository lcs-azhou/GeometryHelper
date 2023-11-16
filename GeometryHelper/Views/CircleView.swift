//
//  CircleView.swift
//  GeometryHelper
//
//  Created by Ansheng Zhou on 2023-11-16.
//

import SwiftUI

struct CircleView: View {
    
//    mark:stored properties
    @State var currentCircle = Circle(radius: 10.0)
    
//    mark:computed properties
    var body: some View {
        
        
        
        VStack {
            Image("formula")
                .resizable()
                .scaledToFit()
            HStack {
                Text("0")
                    .font(.system(size: 18))
                
                Slider(value: $currentCircle.radius, in: 0...100)
                
                Text("100")
                    .font(.system(size: 18))
            }.padding()
        }
        
        List {
            VStack(alignment: .leading){
                Text("Radius")
                    .fontWeight(.semibold)
                Text("\(currentCircle.radius)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Diameter")
                    .fontWeight(.semibold)
                Text("\(currentCircle.diameter)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Perimeter")
                    .fontWeight(.semibold)
                Text("\(currentCircle.perimeter)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Area")
                    .fontWeight(.semibold)
                Text("(square units)")
                    .font(.system(size: 12))
                Text("\(currentCircle.area)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
        }.listStyle(.plain)
        
    }
    
}

#Preview {
    CircleView()
}
