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
    @State private var checkOutAmount = ""
    @State private var numberOfPeople = 1
    @State var tipPercentage =  1
    let tipPercentages = [10,20,25,30,0]
    var totalPerPerson: Double{
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkOutAmount) ??  0
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = tipValue + orderAmount
        let perPerson = grandTotal / peopleCount
        return perPerson
    }
    var body: some View {
        NavigationView{
            Form{
                //amount section with 2 way binding
                Section{
                    TextField("Amount: ",text: $checkOutAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of people:",selection: $numberOfPeople){
                        ForEach(2 ..< 9) {
                            Text("\($0) people")
                        }
                    }
                }
                Section(header: Text("How much tip do you want to pay:")){
                    Picker("Tip percentage:",selection: $tipPercentage){
                        ForEach(0 ..< tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                        .pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("$\(totalPerPerson,specifier: "%.2f")")
                }
            }
            .navigationBarTitle("We Split")
        }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
