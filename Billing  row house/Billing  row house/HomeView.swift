//
//  HomeView.swift
//  Billing  row house
//
//  Created by Surachat Yaitammasan on 27/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var registerButtonState = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(hex: "#22ACEA").edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Billing \n Apartments")
                        .multilineTextAlignment(.trailing).foregroundColor(.white).font(.custom("Kefa", size: 45)).shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.16), radius: 2.5, x: 0, y: 3).padding(.top, 50)
                    Spacer()
                    Group {
                        Text("เพิ่งเคยใช้ครั้งแรกใช่ไหม? \n กรุณาลงทะเบียนครั้งแรกก่อนเพื่อเริ่มต้นใช้งาน")
                            .multilineTextAlignment(.center).foregroundColor(.white).padding(.bottom, 25)
                        Button(action: {
                            self.registerButtonState = true
                        }) {
                            Text("กรุณาลงทะเบียน")
                        }.foregroundColor(.black).font(.custom("kefa", size: 24)).padding().padding([.leading, .trailing], 54).background(Color.white).cornerRadius(10).padding(.bottom, 300).shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.16), radius: 2.5, x: 0, y: 3)
                    }
                }
            }
        }.navigationBarTitle(Text("Navigation!"))
        .overlay(self.registerButtonState ? Color(hex: "#22ACEA") : nil)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
