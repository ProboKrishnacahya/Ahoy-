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

    var body: some View {
        NavigationStack{
            VStack{
                Text("Host Room")
                
                VStack{
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                HostMystry = "1"
                                conn4VM.sendSaveHost(HostData: "PersonHost1")
                                                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                HostMystry = "2"
                                conn4VM.sendSaveHost(HostData: "PersonHost2")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost3")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost4")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost5")
                                
                            }
                            .frame(width: 70, height: 90)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost6")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost7")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost8")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost9")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost10")
                                
                                
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost11")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost12")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost13")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost14")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost15")
                                
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost16")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost17")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost18")
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost19")
                                
                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost20")
                                
                            
                            }
                            .frame(width: 70, height: 70)
                    }
                    HStack{
                        Rectangle()
                            .onTapGesture {
                                
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost21")
                                
                                
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost22")
                                                     
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                conn4VM.sendSaveHost(HostData: "PersonHost23")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                
                                conn4VM.sendSaveHost(HostData: "PersonHost24")
                            }
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .onTapGesture {
                                conn4VM.sendSaveHost(HostData: "PersonHost25")
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
                    
                    
                    
                    NavigationLink(destination: ContentView()){
                        Button("Play"){
                            
                        }
                    }
                    
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
