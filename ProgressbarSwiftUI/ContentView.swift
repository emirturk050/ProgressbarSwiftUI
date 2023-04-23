//
//  ContentView.swift
//  ProgressbarSwiftUI
//
//  Created by Emir Türk on 11.04.2023.
//

import SwiftUI

struct ContentView: View {
   
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    
    var body: some View {
        ZStack {
           
            Circular(lineWidth: 35, backgroundColor: Color.red.opacity(0.3), foregrounColor: Color.red, percentage: firstCirclePercentage)
                .frame(width: 260, height: 260)
                .onTapGesture {
                    if self.firstCirclePercentage < 100 {
                        self.firstCirclePercentage += 25
                    }
                    else {
                        self.firstCirclePercentage = 0
                    }
                    
                }
            
            Circular(lineWidth: 35, backgroundColor: Color.blue.opacity(0.3), foregrounColor: Color.blue, percentage: secondCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.secondCirclePercentage < 100 {
                        self.secondCirclePercentage += 25
                    }
                    else {
                        self.secondCirclePercentage = 0
                    }
                    
                }
            
            Circular(lineWidth: 35, backgroundColor: Color.green.opacity(0.3), foregrounColor: Color.green, percentage: thirdCirclePercentage)
                .frame(width: 160, height: 160)
                .onTapGesture {
                    if self.thirdCirclePercentage < 100 {
                        self.thirdCirclePercentage += 25
                    }
                    else {
                        self.thirdCirclePercentage = 0
                    }
                    
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
