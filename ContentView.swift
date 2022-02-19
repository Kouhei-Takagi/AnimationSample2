//
//  ContentView.swift
//  AnimationSample2
//
//  Created by 高木耕平 on 2022/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var isRotatedSq = false
    let colors:[Color] = [.purple, .blue, .green, .yellow, .orange, .red]
    
    
    var body: some View {
        VStack{
        Button("Start", action:{
            self.isRotatedSq.toggle()
        })
            ZStack{
                ForEach(0..<colors.count){
                    Rectangle()
                        .frame(width:100, height:100)
                        .foregroundColor(colors[$0])
                        .rotationEffect(Angle.degrees(isRotatedSq ? 90:0))
                        .animation(Animation.linear(duration: 2.0),value: isRotatedSq)
                        .offset(x: CGFloat($0) * 5.0, y:CGFloat($0) * 5.0)
                }
            }.frame(width: 250.0, height: 200.0)
        
            ZStack{
                ForEach(0..<colors.count){
                    Rectangle()
                        .frame(width:100, height:100)
                        .foregroundColor(colors[$0])
                        .rotationEffect(Angle.degrees(isRotatedSq ? 90:0))
                        .animation(Animation.linear(duration: 2.0).delay(CGFloat($0) * 1.0),value: isRotatedSq)
                        .offset(x: CGFloat($0) * 5.0, y:CGFloat($0) * 5.0)
                }
            }.frame(width: 250.0, height: 200.0)
        
            ZStack{
                ForEach(0..<colors.count){
                    Rectangle()
                        .frame(width:100 - CGFloat($0) * 10.0, height:100 - CGFloat($0) * 10.0 )
                        .foregroundColor(colors[$0])
                        .rotationEffect(Angle.degrees(isRotatedSq ? 90:0))
                        .animation(Animation.linear(duration: 2.0).delay(CGFloat($0) * 1.0),value: isRotatedSq)
                }
            }.frame(width: 250.0, height: 200.0)

        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
