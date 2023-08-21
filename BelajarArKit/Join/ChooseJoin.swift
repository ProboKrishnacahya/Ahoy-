//
//  ChooseJoin.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct ChooseJoin: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    @State var JoinMystry = ""
    @State var ImgJoinMystry = ""

    var body: some View {
        NavigationStack{
            VStack{
                Text("Join Room")
                
                VStack{
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "1"
                                conn4VM.sendSaveHost(HostData: "personjoin1")
                                conn4VM.sendSaveHost(HostData: JoinMystry)
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin2")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin3")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin4")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin5")
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin6")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin7")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin8")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin9")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "personjoin10")
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                
                                ImgJoinMystry = "11"
                                conn4VM.sendSaveHost(HostData: "personjoin11")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a12"
                                ImgJoinMystry = "12"
                                conn4VM.sendSaveHost(HostData: "personjoin12")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a13"
                                ImgJoinMystry = "13"
                                conn4VM.sendSaveHost(HostData: "personjoin13")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a14"
                                ImgJoinMystry = "14"
                                conn4VM.sendSaveHost(HostData: "personjoin14")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a15"
                                ImgJoinMystry = "15"
                                conn4VM.sendSaveHost(HostData: "personjoin15")
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a16"
                                ImgJoinMystry = "16"
                                conn4VM.sendSaveHost(HostData: "personjoin16")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a17"
                                ImgJoinMystry = "17"
                                conn4VM.sendSaveHost(HostData: "personjoin17")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a18"
                                ImgJoinMystry = "18"
                                conn4VM.sendSaveHost(HostData: "personjoin18")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a19"
                                ImgJoinMystry = "19"
                                conn4VM.sendSaveHost(HostData: "personjoin19")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a20"
                                ImgJoinMystry = "20"
                                conn4VM.sendSaveHost(HostData: "personjoin20")
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a21"
                                ImgJoinMystry = "21"
                                conn4VM.sendSaveHost(HostData: "personjoin21")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a22"
                                ImgJoinMystry = "22"
                                conn4VM.sendSaveHost(HostData: "personjoin22")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a23"
                                ImgJoinMystry = "23"
                                conn4VM.sendSaveHost(HostData: "personjoin23")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a24"
                                ImgJoinMystry = "24"
                                conn4VM.sendSaveHost(HostData: "personjoin24")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                JoinMystry = "a25"
                                ImgJoinMystry = "25"
                                conn4VM.sendSaveHost(HostData: "personjoin25")
                                
                            }
                            .frame(width: 70, height: 70)
                    }
                    
                    
                    HStack{
                        Text("Join Choose")
                        Text(conn4VM.imgjoin)
                    }
                    HStack{
                        Text("Host Choose")
                        Text(conn4VM.imghost)
                    }
                    NavigationLink(destination: ViewAr2()){
                        Button("Play"){
                            conn4VM.sendSaveHost(HostData: JoinMystry)
                        }
                    }
                    
                }
                
            }
        }
    }
}

struct ChooseJoin_Previews: PreviewProvider {
    static var previews: some View {
        ChooseJoin()
            .environmentObject(ConnnectFourViewModel())
    }
}
