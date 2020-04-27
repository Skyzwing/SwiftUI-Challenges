//
//  MeView.swift
//  Billing Apartment
//
//  Created by Surachat Yaitammasan on 25/4/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI
import MessageUI

struct MeView: View {
    
    let sendMail = SendMail()
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Image("Profile-1").resizable().frame(width: 118, height: 118)
                    VStack(alignment: .leading) {
                        Text("Oat Apartment").font(.custom("palatino-Bold", size: 18)).foregroundColor(.white)
                        Text("oatapartment@gmail.com").font(.custom("palatino", size: 16)).foregroundColor(.white)
                    }
                    Spacer()
                }.padding(.top, 65).padding(.bottom, 35).background(LinearGradient(gradient: Gradient(colors: [Color(hex: "#17B3C1"), Color(hex: "#2794EB")]), startPoint: .top, endPoint: .bottom))
                List {
                    Text("Edit profile")
                    Text("Help")
                    Text("Contact us")
                    Button(action: { self.sendMail.presentMailCompose() }) {
                        Text("mail")
                    }
                    Text("Logout")
                    
                }.environment(\.defaultMinListRowHeight, 50)
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
