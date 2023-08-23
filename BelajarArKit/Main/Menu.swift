//
//  Menu.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct Menu: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    @State private var scale:Double = 0.8
    @State private var scalebtn:Double = 0.7
    @State private var scalecircle:Double = 0
    @State private var isView2Active = false
    @State private var Activecircle = false
    
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Image("JoinRoom")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .scaleEffect(scale)
                        .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: scale)
                        .onAppear {
                            scale = 1.1
                        }
                    VStack{
                        NavigationLink(destination: RoomHost()) {
                            Image("Buttonwhite")
                                .resizable()
                                .scaledToFit()
                            
                                .scaleEffect(scalebtn)
                                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true).delay(0.3), value: scalebtn)
                                .onAppear {
                                    scalebtn = 0.73
                                }
//                                .onTapGesture {
//                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                                        isView2Active = true
//
//                                    }
//                                    Activecircle = true
//
//                                }
                        }
                        
                        
                        NavigationLink(destination: RoomJoin()) {
                            Image("Buttonorange")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(scalebtn)
                                .animation(.easeInOut(duration: 1.7).repeatForever(autoreverses: true).delay(0.3), value: scalebtn)
                                .onAppear {
                                    scalebtn = 0.73
                                }
                                .padding(.top, -20)
                        }
                        
                        
                        
                    }.padding(.top, -70)
                    
                    
                    
                    Spacer()
                    
                    
                    //                    VStack{
                    //                        NavigationLink(destination: RoomHost()){
                    //                            Button("Join Han Crew"){
                    //
                    //                            }
                    //                            .padding(.horizontal , 60)
                    //                            .padding(.vertical , 15)
                    //                            .background(Color(red: 0, green: 0, blue: 0.5))
                    //                            .foregroundStyle(.white)
                    //                            .clipShape(Capsule())
                    //                        }
                    //                        .padding(.top, 200)
                    //                    }
                    //                    Spacer()
                    //
                    //                    VStack{
                    //                        NavigationLink(destination: RoomJoin()){
                    //                            Button("Join Prob Crew"){
                    //
                    //                            }
                    //                            .padding(.horizontal , 60)
                    //                            .padding(.vertical , 15)
                    //                            .background(Color(red: 0, green: 0, blue: 0.5))
                    //                            .foregroundStyle(.white)
                    //                            .clipShape(Capsule())
                    //                        }
                    //                        .padding(.bottom, 200)
                    //                    }
                }
                .padding(.bottom, 100)
                
//                if Activecircle == true{
//                    VStack{
//                        Circle()
//
//                    }.animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: false), value: scalecircle)
//                        .onAppear {
//                            scalecircle = 5
//                        }
//                }
                
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
