//
//  ContentView.swift
//  Billing Apartment
//
//  Created by Surachat Yaitammasan on 24/4/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var session: SessionStore
    
    func getUser() {
        session.listener()
    }
    
    var body: some View {
        Group {
            if (session.session != nil) {
                
                AppView()
            } else {
                
                SignInView()
            }
        }.onAppear(perform: getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SessionStore())
    }
}
