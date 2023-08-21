//
//  Home.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    var body: some View {
        NavigationStack{
            NavigationLink(destination: Menu()){
                Button("Play"){
                    
                }
                .padding(.horizontal , 60)
                .padding(.vertical , 15)
                .background(Color(red: 0, green: 0, blue: 0.5))
                .foregroundStyle(.white)
                .clipShape(Capsule())
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(ConnnectFourViewModel())
    }
}
