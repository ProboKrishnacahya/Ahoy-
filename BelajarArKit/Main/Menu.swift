//
//  Menu.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct Menu: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    NavigationLink(destination: RoomHost()){
                        Button("Join Han Crew"){
                            
                        }
                        .padding(.horizontal , 60)
                        .padding(.vertical , 15)
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                    }
                    .padding(.top, 200)
                }
                Spacer()
                
                VStack{
                    NavigationLink(destination: RoomJoin()){
                        Button("Join Prob Crew"){
                            
                        }
                        .padding(.horizontal , 60)
                        .padding(.vertical , 15)
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                    }
                    .padding(.bottom, 200)
                }
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
            .environmentObject(ConnnectFourViewModel())
    }
}
