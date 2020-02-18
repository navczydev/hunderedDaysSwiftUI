//
//  ContentView.swift
//  WeSplit
//
//  Created by Navjot Singh on 2020-02-16.
//  Copyright © 2020 Navjot Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //for state mgt.
    @State private var tabCount = 0
    @State private var name = ""
    let students = ["Harry","Nav","Gagan"]
    @State var selectedStudent =  "Harry"
    var body: some View {
        Text("Hello world!!")
        //NavigationView{
            //program state
//            Button("TabCount is \(tabCount)"){
//                self.tabCount += 1
//            }
//            Form{
//                Section{
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                }
//                Section{
//                    Text("Hello, World!")
//                    Text("Hello, World!")
//                }
//
//            }
             //displayMode requires with Text but not with raw string
//            .navigationBarTitle(Text("SwiftUI"),displayMode: .inline)
            //.navigationBarTitle("SwiftUI")
       // }
        
        /**
                $ makes 2 way binding
         */
//        Form{
//            TextField("Enter your name",text: $name)
//            Text("Name is \(name)")
//        }
        
        //for loop to create view
      //  Form{
//            ForEach(0 ..< 100){
//                Text("Row \($0)")
//            }
//            Picker("Select your student",selection: $selectedStudent){
//                ForEach(0 ..< students.count){
//                    Text(self.students[$0])
//                }
//            }
        //}
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
