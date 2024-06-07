//
//  ContentView.swift
//  T_T
//
//  Created by A on 27.03.2024.
//

import SwiftUI


struct ContentView: View {
    @State var isShare = false
    let customactivity = ActivityViewCustomActivity(name: "", image: "", performAction: {print("")})
    var body: some View {
        Button("поделиться"){
            self.isShare = true
        }.sheet(isPresented: $isShare){
            ActivityView(activityItems: [""], applicationsActivities: [self.customactivity])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
