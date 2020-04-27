//
//  HomeView.swift
//  Billing Apartment
//
//  Created by Surachat Yaitammasan on 24/4/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "#EFEFEF").edgesIgnoringSafeArea(.all)
                
                VStack {
                    List {
                        ForEach(0 ..< 15) { _ in
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Room 1").padding(.top, 20)
                                    Text("Surachet Yaitammasan").font(.footnote).padding(.bottom, 5)
                                }
                                Spacer()
                                Text("5123 Bath").font(.footnote)
                            }
                        }
                    }.padding(.top, -25).listStyle(GroupedListStyle())
                    Spacer()
                    }.navigationBarTitle("Billing Aparment").navigationBarColor(UIColor(hexString: "#ffffff"))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
