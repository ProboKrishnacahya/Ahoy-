//
//  ChooseHost.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct ChooseHost: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    @State var HostMystry: String = ""
    @State var ImgHostMystry = ""
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
                                HStack{
                                    Image("p1")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            HostMystry = "1"
                                            conn4VM.sendSaveHost(HostData: "PersonHost1")
                                            conn4VM.imghost = "1"
                                            imgchoose =  "p1"
                                        }
                                    
                                    Image("p2")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost2")
                                            conn4VM.imghost = "2"
                                            imgchoose =  "p2"
                                            
                                        }
                                    
                                    Image("p3")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost3")
                                            conn4VM.imghost = "3"
                                            imgchoose =  "p3"
                                            
                                        }
                                    
                                    Image("p4")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost4")
                                            conn4VM.imghost = "4"
                                            imgchoose =  "p4"
                                            
                                        }
                                    
                                    Image("p5")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost5")
                                            conn4VM.imghost = "5"
                                            imgchoose =  "p5"
                                            
                                        }
                                    
                                }
                                HStack{
                                    Image("p6")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost6")
                                            conn4VM.imghost = "6"
                                            imgchoose =  "p6"
                                            
                                        }
                                    
                                    
                                    Image("p7")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost7")
                                            conn4VM.imghost = "7"
                                            imgchoose =  "p7"
                                            
                                        }
                                    
                                    
                                    Image("p8")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost8")
                                            conn4VM.imghost = "8"
                                            imgchoose =  "p8"
                                            
                                        }
                                    
                                    
                                    Image("p9")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost9")
                                            conn4VM.imghost = "9"
                                            imgchoose =  "p9"
                                            
                                        }
                                    
                                    
                                    Image("p10")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost10")
                                            conn4VM.imghost = "10"
                                            imgchoose =  "p10"
                                            
                                            
                                        }
                                    
                                    
                                }
                                HStack{
                                    Image("p11")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost11")
                                            conn4VM.imghost = "11"
                                            imgchoose =  "p11"
                                            
                                        }
                                    
                                    
                                    Image("p12")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost12")
                                            conn4VM.imghost = "12"
                                            imgchoose =  "p12"
                                            
                                        }
                                    
                                    
                                    Image("p13")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost13")
                                            conn4VM.imghost = "13"
                                            imgchoose =  "p13"
                                            
                                        }
                                    
                                    Image("p14")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost14")
                                            conn4VM.imghost = "14"
                                            imgchoose =  "p14"
                                            
                                        }
                                    
                                    Image("p15")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost15")
                                            conn4VM.imghost = "15"
                                            imgchoose =  "p15"
                                        }
                                    
                                }
                                HStack{
                                    Image("p16")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost16")
                                            conn4VM.imghost = "16"
                                            imgchoose =  "p16"
                                            
                                        }
                                    
                                    Image("p17")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost17")
                                            conn4VM.imghost = "17"
                                            imgchoose =  "p17"
                                            
                                        }
                                    
                                    Image("p18")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost18")
                                            conn4VM.imghost = "18"
                                            imgchoose =  "p18"
                                            
                                        }
                                    
                                    Image("p19")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost19")
                                            conn4VM.imghost = "19"
                                            imgchoose =  "p19"
                                            
                                        }
                                    
                                    Image("p20")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost20")
                                            conn4VM.imghost = "20"
                                            imgchoose =  "p20"
                                            
                                            
                                        }
                                    
                                }
                                HStack{
                                    Image("p21")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost21")
                                            conn4VM.imghost = "21"
                                            imgchoose =  "p21"
                                            
                                            
                                        }
                                    
                                    Image("p22")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost22")
                                            conn4VM.imghost = "22"
                                            imgchoose =  "p23"
                                            
                                        }
                                    
                                    Image("p23")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            conn4VM.sendSaveHost(HostData: "PersonHost23")
                                            conn4VM.imghost = "23"
                                            imgchoose =  "p23"
                                        }
                                    
                                    Image("p24")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            
                                            conn4VM.sendSaveHost(HostData: "PersonHost24")
                                            conn4VM.imghost = "24"
                                            imgchoose =  "p24"
                                        }
                                    
                                    Image("p25")
                                        .resizable()
                                        .scaleEffect(0.8)
                                        .scaledToFit()
                                        .onTapGesture {
                                            conn4VM.sendSaveHost(HostData: "PersonHost25")
                                            conn4VM.imghost = "25"
                                            imgchoose =  "p25"
                                        }
                                    
                                }
                            }.padding(.horizontal)
                                .padding(.bottom, 30)
                                .padding(.top, -70)
                                .animation(.easeInOut(duration: 0.5))
                            
                            
                            
                            NavigationLink(destination: ContentView()){
                                Image("ButtonStart")
                                    .scaledToFit()
                                    .scaleEffect(1)
                                    .padding(.bottom, 20)
                                
                            }
                            
                            
                        }.animation(.easeInOut(duration: 0.5))
                        
                    }
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

struct ChooseHost_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ChooseHost()
            .environmentObject(ConnnectFourViewModel())
    }
}
