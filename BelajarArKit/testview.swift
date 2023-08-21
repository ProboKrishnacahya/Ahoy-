//
//  testview.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 19/08/23.
//

import SwiftUI

struct testview: View {
    var body: some View {
        NavigationStack{
            NavigationLink(destination: ContentView()){
                Button("Play"){
                    
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

struct testview_Previews: PreviewProvider {
    static var previews: some View {
        testview()
    }
}