
//
//  RegisterView.swift
//  Billing Apartment
//
//  Created by Surachat Yaitammasan on 25/4/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack {
            Image("back").resizable().frame(width: 42, height: 42).foregroundColor(.white)
        }
        }
    }
    
    @State var email = ""
    @State var apartment_name = ""
    @State var password = ""
    @State var cf_password = ""
    @State var phone = ""
    
    
    var body: some View {
        VStack {
            HStack {
                Text("")
                Spacer()
                Text("")
            }
            Spacer()
            Group {
                ZStack {
                    Image("Profile-1").padding(.bottom, 21)
                    Image("Plus").resizable().frame(width: 31, height: 31, alignment: .bottom).padding(.top, 70).padding(.leading, 70)
                }
                TextField("Email", text: $email).padding([.leading, .trailing], 50).padding(.bottom, 41).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Apartment name", text: $apartment_name).padding([.leading, .trailing], 50).padding(.bottom, 41).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password).padding([.leading, .trailing], 50).padding(.bottom, 41).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Confirm Password", text: $cf_password).padding([.leading, .trailing], 50).padding(.bottom, 41).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Phone number", text: $phone).padding([.leading, .trailing], 50).padding(.bottom, 41).textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Create an account").padding([.top, .bottom], 12).padding([.leading, .trailing], 32).background(Color(hex: "#2794EB")).foregroundColor(.white).font(.custom("palatino Bold", size: 20)).cornerRadius(10)
            }
            Spacer()
        }.background(Image("background-signup").resizable()).edgesIgnoringSafeArea(.all)
            .navigationBarItems(leading: btnBack).navigationBarBackButtonHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
