//
//  passing.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 21/08/23.
//

import SwiftUI

struct passing: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    var body: some View {
        NavigationStack{
            VStack{
                Rectangle()
                    .onTapGesture {
                        
                        conn4VM.sendSaveJoin(JoinData: "b4")
                        
                        
                        
                    }
                    .frame(width: 70, height: 70)
                NavigationLink(destination: ContentView()){
                    Button("Play"){
                        
                    }
                }
            }
        }
    }
}

struct passing_Previews: PreviewProvider {
    static var previews: some View {
        passing()
            .environmentObject(ConnnectFourViewModel())
    }
}
