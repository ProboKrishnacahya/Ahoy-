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
    @State var imgchoose: String = ""
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
                        
                    ScrollView{
                    VStack{
                        
                        
                        
                        VStack{
                            Image(imgchoose)
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.3)
                                .padding(.bottom, -70)
                                .padding(.top, -40)
                            VStack{
                                
                                VStack{
                                    Text("Pick Your Hidden Crewmates!")
                                        .bold()
                                        .foregroundColor(Color.white)
                                        .font(.title2)
                                        .multilineTextAlignment(.center)
                                    HStack{
                                        Image("p1")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                conn4VM.sendSaveHost(HostData: "personjoin1")
                                                conn4VM.imgjoin = "1"
                                                imgchoose =  "p1"
                                                
                                            }
                                        
                                        Image("p2")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin2")
                                                conn4VM.imgjoin = "2"
                                                imgchoose =  "p2"
                                                
                                            }
                                        
                                        Image("p3")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin3")
                                                conn4VM.imgjoin = "3"
                                                imgchoose =  "p3"
                                                
                                            }
                                        Image("p4")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin4")
                                                conn4VM.imgjoin = "4"
                                                imgchoose =  "p4"
                                            }
                                        
                                        Image("p5")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin5")
                                                conn4VM.imgjoin = "5"
                                                imgchoose =  "p5"
                                            }
                                        
                                    }
                                    HStack{
                                        Image("p6")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin6")
                                                conn4VM.imgjoin = "6"
                                                imgchoose =  "p6"
                                                
                                            }
                                        
                                        Image("p7")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin7")
                                                conn4VM.imgjoin = "7"
                                                imgchoose =  "p7"
                                            }
                                        
                                        Image("p8")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin8")
                                                conn4VM.imgjoin = "8"
                                                imgchoose =  "p8"
                                            }
                                        
                                        Image("p9")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin9")
                                                conn4VM.imgjoin = "9"
                                                imgchoose =  "p9"
                                            }
                                        
                                        Image("p10")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin10")
                                                conn4VM.imgjoin = "10"
                                                imgchoose =  "p10"
                                            }
                                        
                                    }
                                    HStack{
                                        Image("p11")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin11")
                                                conn4VM.imgjoin = "11"
                                                imgchoose =  "p11"
                                                
                                            }
                                        
                                        Image("p12")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin12")
                                                conn4VM.imgjoin = "12"
                                                imgchoose =  "p12"
                                                
                                            }
                                        
                                        Image("p13")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin13")
                                                conn4VM.imgjoin = "13"
                                                imgchoose =  "p13"
                                                
                                            }
                                        
                                        Image("p14")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin14")
                                                conn4VM.imgjoin = "14"
                                                imgchoose =  "p14"
                                            }
                                        
                                        Image("p15")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin15")
                                                conn4VM.imgjoin = "15"
                                                imgchoose =  "p15"
                                            }
                                        
                                    }
                                    HStack{
                                        Image("p16")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                conn4VM.sendSaveHost(HostData: "personjoin16")
                                                conn4VM.imgjoin = "16"
                                            }
                                        
                                        Image("p17")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin17")
                                                conn4VM.imgjoin = "17"
                                                imgchoose =  "p17"
                                            }
                                        
                                        Image("p18")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin18")
                                                conn4VM.imgjoin = "18"
                                                imgchoose =  "p18"
                                            }
                                        
                                        Image("p19")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin19")
                                                conn4VM.imgjoin = "19"
                                                imgchoose =  "p19"
                                            }
                                        
                                        Image("p20")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin20")
                                                conn4VM.imgjoin = "20"
                                                imgchoose =  "p20"
                                            }
                                        
                                    }
                                    HStack{
                                        Image("p21")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin21")
                                                conn4VM.imgjoin = "21"
                                                imgchoose =  "p21"
                                                
                                            }
                                        
                                        Image("p22")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin22")
                                                conn4VM.imgjoin = "22"
                                                imgchoose =  "p22"
                                            }
                                        
                                        Image("p23")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin23")
                                                conn4VM.imgjoin = "23"
                                                imgchoose =  "p23"
                                            }
                                        
                                        
                                        Image("p24")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin24")
                                                conn4VM.imgjoin = "24"
                                                imgchoose =  "p24"
                                            }
                                        
                                        Image("p25")
                                            .resizable()
                                            .scaleEffect(0.8)
                                            .scaledToFit()
                                            .onTapGesture {
                                                
                                                conn4VM.sendSaveHost(HostData: "personjoin25")
                                                conn4VM.imgjoin = "25"
                                                imgchoose =  "p25"
                                                
                                            }
                                        
                                    }
                                }.padding(.horizontal)
                                    .padding(.bottom, 30)
                                    .padding(.top, -70)
                                    .animation(.easeInOut(duration: 0.5))
                                
                                
                                NavigationLink(destination: ViewAr2()){
                                    Image("ButtonStart")
                                        .scaledToFit()
                                        .scaleEffect(1)
                                        .padding(.bottom, 20)
                                    
                                }
                                
                            }
                        }.animation(.easeInOut(duration: 0.5))
                       
                        
                    }
                    .padding(.bottom, 50)
                        
                        
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
