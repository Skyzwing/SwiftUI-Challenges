//
//  SignInView.swift
//  Billing Apartment
//
//  Created by Surachat Yaitammasan on 27/4/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @State var isPresentAlert: Bool = false
    @EnvironmentObject var session: SessionStore
    
    func singIn() {
        
        session.singIn(email: email, password: password) { (resule, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.email = ""
                self.password = ""
            }
        }
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                Group {
                    Text("Billing\nApartments")
                        .multilineTextAlignment(.trailing).foregroundColor(Color(hex: "#17B3C1")).font(.custom("Palatino Bold", size: 46))
                    Text("Welcome to Billing Apartment. This \napplication calculate billing Apartment").multilineTextAlignment(.center).font(.custom("palatino", size: 14)).foregroundColor(Color(hex: "#313131"))
                }
                Group {
                    TextField("Email / Phone number", text: $email).padding(.top, 117.5).padding([.leading, .trailing], 50).textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password).padding(.top, 5).padding([.leading, .trailing], 50).textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action: {
                    self.singIn()
                    if (self.error != "") {
                        self.isPresentAlert = true
                    }
                }) {
                    
                    Text("Sign in").padding([.top, .bottom], 10).padding([.leading, .trailing], 78).background(Color(hex: "#2794EB")).foregroundColor(.white).font(.custom("palatino Bold", size: 24)).cornerRadius(10).padding(.top, 23)
                }.alert(isPresented: $isPresentAlert) {
                    Alert(title: Text("Have a problem"), message: Text(error), dismissButton: .default(Text("Okay")))
                }
                
                
                NavigationLink(destination: ForgotPasswordView()) {
                    Text("Forgot password?").foregroundColor(Color(hex: "#2794EB"))
                }.padding(.top, 56)
                HStack {
                    Text("Don't have an account? ")
                    NavigationLink(destination: RegisterView()) {
                        Text("Sign up").font(.custom("Palatino Bold", size: 16)).foregroundColor(Color(hex: "#17B3C1"))
                    }
                }.padding(.top, 93)
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView().environmentObject(SessionStore())
    }
}
