//
//  ContentView.swift
//  Stop Timing
//
//  Created by Surachat Yaitammasan on 19/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

enum GameState {
    case start
    case stop
    case again
}

struct ContentView: View {
    
    @State var timeRemaining:Double = 0.0
    @State var startState = false
    @State var stopState = false
    @State var againState = false
    var startText = "Start !"
    var stopText = "Stop !"
    var againText = "Again !"
    
    let timer = Timer.publish(every: 0.05, on: .main, in: .common)
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            ZStack {
                VStack {
                    Text("\(timeRemaining, specifier: "%.1f")").font(.system(size: 120, weight: .bold, design: .default)).italic()
                        .foregroundColor(.white).shadow(color: .secondary, radius: 5, x: 5, y: 5)
                        .onReceive(timer) { _ in
                            if self.timeRemaining >= 0 {
                                self.timeRemaining += 0.1
                            }
                    }
                    Spacer()
                    VStack {
                        if startState == false {
                            Button(startText) {
                                self.startState.toggle()
                                self.timer.connect()
                                print(self.startState)
                            }.padding().padding(.leading, 40).padding(.trailing, 40)
                                .background(Color.blue)
                                .foregroundColor(.white).font(.system(size: 30, weight: .bold, design: .default)).cornerRadius(60)
                                .padding()
                        }
                        else if startState == true && stopState == false {
                            Button(stopText) {
                                self.stopState.toggle()
                                self.timer.connect().cancel()
                            }.padding().padding(.leading, 40).padding(.trailing, 40)
                            .background(Color.blue)
                            .foregroundColor(.white).font(.system(size: 30, weight: .bold, design: .default)).cornerRadius(60)
                            .padding()
                        }
                        else {
                            Button(againText) {
                                self.againState.toggle()
                                self.timeRemaining = 0.0
                                self.startState = false
                                self.stopState = false
                                print("\(self.startState) + \(self.stopState)")
                            }.padding().padding(.leading, 40).padding(.trailing, 40)
                            .background(Color.blue)
                            .foregroundColor(.white).font(.system(size: 30, weight: .bold, design: .default)).cornerRadius(60)
                            .padding()
                        }
                        Text("Skyzwing").font(.caption).padding(.bottom, 50)
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
