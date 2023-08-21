//
//  RoomHost.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct RoomHost: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel

    var body: some View {
        NavigationStack{
            VStack{
                Image("han")
                    .scaledToFit()
                    .scaleEffect(0.8)
                    .padding(.top)
                
                if conn4VM.isPlayer2Joined {
                    Image("prob")
                        .scaledToFit()
                        .scaleEffect(0.8)
                        .padding(.top)
                }
                
                //            Image("prob")
                //                .padding(.top)
                //                .scaledToFit()
                //                .scaleEffect(0.8)
                Spacer()
                
                Button("Open Room"){
                    conn4VM.advertise()
                }
                
                if conn4VM.isPlayer2Joined {
                    NavigationLink(destination: ChooseHost()){
                        Button("Next"){
                            
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
    }
}

struct RoomHost_Previews: PreviewProvider {
    static var previews: some View {
        RoomHost()
            .environmentObject(ConnnectFourViewModel())
    }
}
