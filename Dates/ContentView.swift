//
//  ContentView.swift
//  Dates
//
//  Created by scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    @State private var titleQuestion = "Pick a date?"
    
    var body: some View {
        
        VStack(spacing: 50.0) {
            
            Text(titleQuestion)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            DatePicker(selection: $date, label: { Text("Dates") })
                .padding(.bottom)
            
            Button("Schedule") {
                
                titleQuestion = "Don't be late for your very important date \(date)!"
                //let formatted = Date().formatted()
                
            }
            
            .buttonStyle(.borderedProminent)
            .tint(.orange)
            .padding(.top)
            
        }
        
        .padding()
        
        
    }//closing view
} //closing struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
