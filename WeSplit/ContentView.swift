//
//  ContentView.swift
//  WeSplit
//
//  Created by Navjot Singh on 2020-02-16.
//  Copyright © 2020 Navjot Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                Section{
                    Text("Hello, World!")
                    Text("Hello, World!")
                }

            }
             //displayMode requires with Text but not with raw string
//            .navigationBarTitle(Text("SwiftUI"),displayMode: .inline)
            .navigationBarTitle("SwiftUI")
        }
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
