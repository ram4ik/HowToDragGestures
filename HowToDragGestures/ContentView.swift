//
//  ContentView.swift
//  HowToDragGestures
//
//  Created by ramil on 04.03.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleMe: Bool = false
    
    var body: some View {
        VStack {
            if toggleMe == false {
                Text("Drag the screen to any direction")
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color.red)
                    .background(Color.black)
            } else {
                Text("😀").font(.largeTitle)
            }
        }.gesture(DragGesture().onEnded({ (value) in
            self.toggleMe.toggle()
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
