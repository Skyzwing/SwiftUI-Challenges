//
//  RoomView.swift
//  Billing  row house
//
//  Created by Surachat Yaitammasan on 26/3/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct RoomView: View {
    
    @Environment(\.colorScheme) var colorSchemar
    
    let mockupModel = ["w"]
    @State private var firstName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("ไฟฟ้า")
                Text("น้ำ")
                HStack {
                  Image(systemName: "person").foregroundColor(.gray)
                  TextField("Enter your firstName", text: $firstName)
                  }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            }.navigationBarTitle("ห้องที่ 1", displayMode: .inline)
        }
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
