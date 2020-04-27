//
//  SessionStore.swift
//  Billing  row house
//
//  Created by Surachat Yaitammasan on 27/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI
import Firebase
import Combine

class SessionStore: ObservableObject {
    
    var didChange = PassthroughSubject<SessionStore, Never>()
    var session: UsersModel? { didSet { self.didChange.send(self) } }
    var handle: AuthStateDidChangeListenerHandle?
    
    func listening() {
        
        // monitor authentication change using Firebase
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            // if we have a user, create a new user model
            if let user = user {
                print("Go to Home screen")
                self.session = UsersModel(
                    uid: user.uid,
                    displayName: user.displayName,
                    email: user.email
                )} else {
                // if we don't have a user, set our session to nil
                self.session = nil
            }
        }
    }
    
    func signUp(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
    }
    
    func signIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signOut () -> Bool {
        do {
            try Auth.auth().signOut()
            self.session = nil
            return true
        } catch {
            return false
        }
    }
    
}
