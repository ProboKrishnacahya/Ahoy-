//
//  RoomJoin.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct RoomJoin: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    @State private var scalebtn:Double = 0.2
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    var body: some View {
        NavigationStack{
            ZStack{
                Image("Createroom")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack{
                    Image("bluecard3")
                        .scaledToFit()
                        .scaleEffect(0.8)
                        .padding(.top)
                    Image("Versus")
                        .scaledToFit()
                        .scaleEffect(scalebtn)
                        .animation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: scalebtn)
                        .onAppear {
                            scalebtn = 0.25
                        }
                        .padding(.top , -100)
                        .padding(.bottom , -100)
                        
                    if conn4VM.isPlayer2Joined {
                        Image("redcard")
                            .scaledToFit()
                            .scaleEffect(0.8)
                            .padding(.top)
                            .animation(.easeInOut(duration: 1))
                    }
                    if conn4VM.isPlayer2Joined {
                        
                    }
                    else{
                        Image("BtnSearch")
                            .scaledToFit()
                            .scaleEffect(0.8)
                            .padding(.top, 100)
                            .onTapGesture {
                                conn4VM.invite()
                            }
                    }
                    
                    
                    if conn4VM.isPlayer2Joined {
                        NavigationLink(destination: ChooseJoin()){
                            Image("BtnPlay")
                                .scaledToFit()
                                .scaleEffect(1)
                                .padding(.bottom, 20)
                                
                        }
                    }
                    
                    Spacer()
    
                   
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
