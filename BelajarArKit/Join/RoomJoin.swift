//
//  RoomJoin.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct RoomJoin: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    var body: some View {
        NavigationStack{
            VStack{
                if conn4VM.isPlayer2Joined {
                    Image("han")
                        .scaledToFit()
                        .scaleEffect(0.8)
                        .padding(.top)
                }
                Image("prob")
                    .scaledToFit()
                    .scaleEffect(0.8)
                    .padding(.top)
                Spacer()
                Button("Search Host"){
                    conn4VM.invite()
                }
                if conn4VM.isPlayer2Joined {
                    NavigationLink(destination: ChooseJoin()){
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

struct RoomJoin_Previews: PreviewProvider {
    static var previews: some View {
        RoomJoin()
            .environmentObject(ConnnectFourViewModel())
    }
}
