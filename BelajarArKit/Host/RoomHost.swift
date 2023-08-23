//
//  RoomHost.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct RoomHost: View {
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
                    VStack{
                        Image("redcard")
                            .scaledToFit()
                            .scaleEffect(0.8)
                            .padding(.top)
                        
                        Image("Versus")
                            .scaledToFit()
                            .padding(.top , -100)
                            .padding(.bottom , -100)
                            .scaleEffect(scalebtn)
                            .animation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: scalebtn)
                            .onAppear {
                                scalebtn = 0.25
                            }
                        if conn4VM.isPlayer2Joined {
                            Image("bluecard3")
                                .scaledToFit()
                                .scaleEffect(0.8)
                            
                        }
                        else{
                            Image("bluecard")
                                .scaledToFit()
                                .scaleEffect(0.8)
                            
                            
                        }
                    }
                    .animation(.easeInOut(duration: 0.5))
                                
                    if conn4VM.isPlayer2Joined {
                        NavigationLink(destination: ChooseHost()){
                            Image("BtnPlay")
                                .scaledToFit()
                                .scaleEffect(1)
                                .padding(.bottom, 20)
                                .animation(.easeInOut(duration: 1))
                                
                        }
                    }
                }
                
            }
            .onAppear{
                conn4VM.advertise()
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
