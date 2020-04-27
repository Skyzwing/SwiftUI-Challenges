//
//  ContentView.swift
//  Billing  row house
//
//  Created by Surachat Yaitammasan on 25/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let desc = ["sss", "aaa", "bbb"]
    
    var body: some View {
        
        NavigationView {
            List(desc, id: \.self) { i in
                NavigationLink(destination: RoomView()) {
                Text(i)
                }
            }.navigationBarTitle("Oat Apartment")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
