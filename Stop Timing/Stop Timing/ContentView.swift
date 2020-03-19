//
//  ContentView.swift
//  Stop Timing
//
//  Created by Surachat Yaitammasan on 19/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var timeCount:Double = 0.0
    @State var startState = false
    @State var stopState = false
    var startText = "Start !"
    var stopText = "Stop !"
    
    var timer = Timer.publish(every: 0.01, on: .main, in: .default)
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            ZStack {
                VStack {
                    HStack {
                        Group {
                            Text("\(timeCount, specifier: "%.1f")").font(.system(size: 80, weight: .bold, design: .default)).italic()
                                .foregroundColor(.white)
                                .onReceive(timer) { _ in
                                    if self.timeCount >= 0 {
                                        self.timeCount += 0.1
                                    }
                            }
                            Text("s")
                            .font(.system(size: 60, weight: .black))
                            .italic()
                            .foregroundColor(Color.white)
                            .padding(.top)
                        }.shadow(color: .secondary, radius: 5, x: 5, y: 5)
                    }
                    Spacer()
                    VStack {
                        if startState == false {
                            Button(startText) {
                                self.startState.toggle()
                                if self.startState == true {
                                    self.timer.connect()
                                }
//                                print(self.startState)
                            }.padding().padding(.leading, 40).padding(.trailing, 40)
                                .background(Color.blue)
                                .foregroundColor(.white).font(.system(size: 30, weight: .bold, design: .default)).cornerRadius(60)
                                .padding()
                        }
                        else {
                            Button(stopText) {
                                self.stopState.toggle()
                                self.timer.connect().cancel()
                            }.padding().padding(.leading, 40).padding(.trailing, 40)
                            .background(Color.red)
                            .foregroundColor(.white).font(.system(size: 30, weight: .bold, design: .default)).cornerRadius(60)
                            .padding()
                        }
                        VStack {
                            Text("Skyzwing ☁️ :  a little work with SwiftUI ").foregroundColor(Color.black.opacity(0.5)).font(.system(size: 14, weight: .bold, design: .default)).italic().padding()
                        }
                    }
                }
            }.padding(.top, 120)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
