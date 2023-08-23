//
//  ViewAr2.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 20/08/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ViewAr2: View {
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    var body: some View {
        ZStack{
            
            ARViewContainer2(conn4VM: conn4VM).edgesIgnoringSafeArea(.all)
                .environmentObject(ConnnectFourViewModel())
//            Text(conn4VM.loser)
//            Text(conn4VM.win)
            
            VStack{
                if conn4VM.roleplay == 0{
                    Image("yourturn")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.7)
                        .animation(.easeInOut(duration: 0.5))
                    
                    Spacer()
                    Button("Done"){
                        conn4VM.sendSaveHost(HostData: "done1")
                        conn4VM.roleplay = 1
                    }
                    .padding(.horizontal , 60)
                    .padding(.vertical , 15)
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .animation(.easeInOut(duration: 0.5))
                }else{
                    Image("wait")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.5)
                        .padding(.top, 120)
                    
                        .animation(.easeInOut(duration: 0.5))
                    //
                    Spacer()
                }
            }
            VStack{
                if conn4VM.win == "win" ||  conn4VM.winhost == "win" || conn4VM.winUserHost == "win" || conn4VM.winUserJoin == "win"{
                    Rectangle()
                        .frame(width: 500, height: 1000)
                        .opacity(0.8)
                        .animation(.easeInOut(duration: 0.5))
                        .foregroundColor(Color.black)
                }
            }
            .animation(.easeInOut(duration: 0.5))
            VStack{
                if conn4VM.win == "win" {
                    Image("winbtn")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.5)
                        .animation(.easeInOut(duration: 0.3))
                }
                if conn4VM.winhost == "win" {
                    Image("lose")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.7)
                        .animation(.easeInOut(duration: 0.5))
                }
                if conn4VM.winUserHost == "win" {
                    Image("lose")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.7)
                        .animation(.easeInOut(duration: 0.5))
                }
                if conn4VM.winUserJoin == "win" {
                    Image("winbtn")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.5)
                        .animation(.easeInOut(duration: 0.3))
                }
                
                
                
            }
            .animation(.easeInOut(duration: 0.5))
            VStack{
                if conn4VM.roleplay == 1{
                    Rectangle()
                        .frame(width: 500, height: 900)
                        .scaledToFill()
                        .opacity(0.1)
                }
            }
        }
    }
}
struct ARViewContainer2: UIViewRepresentable {
    let conn4VM: ConnnectFourViewModel
    @State var save: String = "halo"
    
    func makeUIView(context: Context) -> ARView {
        
        
        let arView = ARView(frame: .zero)
        arView.addGestureRecognizer(UITapGestureRecognizer(target: context.coordinator, action: #selector(CoordinatorJoin.handleTap)))
        
        context.coordinator.view = arView
        arView.session.delegate = context.coordinator
        
        let anchor =  AnchorEntity(plane: .horizontal)
        
        
        if let modelEntity = try? ModelEntity.load(named: "boardblue") {
            let anchor = AnchorEntity(plane: .horizontal)
            modelEntity.scale = SIMD3<Float>(0.035, 0.035, 0.035)
            
            modelEntity.transform.rotation = simd_quatf(angle: .pi / 2, axis: [0, 1, 0])
            
            anchor.addChild(modelEntity)
            arView.scene.anchors.append(anchor)
        }
        if let myperson2 = try? ModelEntity.load(named: "1") {
            let anchor = AnchorEntity(plane: .horizontal)
            myperson2.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            myperson2.position = SIMD3<Float>(0.1, 0 , -0.05)
            
            myperson2.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0 , 0])
            myperson2.generateCollisionShapes(recursive: true)
            anchor.addChild(myperson2)
            arView.scene.anchors.append(anchor)
            
            
        }
        if let myperson1 = try? ModelEntity.load(named: "2") {
            let anchor = AnchorEntity(plane: .horizontal)
            myperson1.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            myperson1.position = SIMD3<Float>(0.07, 0 , -0.05)
            myperson1.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            myperson1.generateCollisionShapes(recursive: true)
            
            anchor.addChild(myperson1)
            arView.scene.anchors.append(anchor)
            // jika myperson1 ini ditap maka value dari person 1 = 0
        }
        
        if let cardEntity = try? ModelEntity.load(named: "3") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.04, 0 , -0.05)
            
            // Atur posisi objek card sesuai kebutuhan
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
        }
        if let cardEntity = try? ModelEntity.load(named: "4") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.01, 0 , -0.05)
            
            // Atur posisi objek card sesuai kebutuhan
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
        }
        if let cardEntity = try? ModelEntity.load(named: "5") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(-0.02, 0 , -0.05)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
        }
        
        //row2
        if let cardEntity = try? ModelEntity.load(named: "6") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.1, 0 , -0.02)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
            
        }
        if let cardEntity = try? ModelEntity.load(named: "7") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.07, 0 , -0.02)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "8") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.04, 0 , -0.02)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "9") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.01, 0 , -0.02)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "10") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(-0.02, 0 , -0.02)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        // row 3
        if let cardEntity = try? ModelEntity.load(named: "11") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.1, 0 , 0.01)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
            
        }
        if let cardEntity = try? ModelEntity.load(named: "12") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.07, 0 , 0.01)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "13") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.04, 0 , 0.01)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "14") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.01, 0 , 0.01)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "15") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(-0.02, 0 , 0.01)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        // row 4
        if let cardEntity = try? ModelEntity.load(named: "16") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.1, 0 , 0.04)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
            
        }
        if let cardEntity = try? ModelEntity.load(named: "17") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.07, 0 , 0.04)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "18") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.04, 0 , 0.04)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "19") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.01, 0 , 0.04)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "20") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(-0.02, 0 , 0.04)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        // row 5
        if let cardEntity = try? ModelEntity.load(named: "21") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.1, 0 , 0.07)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
            
        }
        if let cardEntity = try? ModelEntity.load(named: "22") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.07, 0 , 0.07)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "23") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.04, 0 , 0.07)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "24") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.01, 0 , 0.07)
            
            
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        if let cardEntity = try? ModelEntity.load(named: "25") {
            let anchor = AnchorEntity(plane: .horizontal)
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(-0.02, 0 , 0.07)
            
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            cardEntity.generateCollisionShapes(recursive: true)
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        
        //row6
        if let cardEntity = try? ModelEntity.load(named: conn4VM.imgjoin) {
            let anchor = AnchorEntity(plane: .horizontal)
            
            cardEntity.scale = SIMD3<Float>(0.040, 0.040, 0.040)
            cardEntity.position = SIMD3<Float>(0.04, 0 , 0.1)
            cardEntity.orientation = simd_quatf(angle: .pi / 6, axis: [0, 0, 0])
            
            anchor.addChild(cardEntity)
            arView.scene.anchors.append(anchor)
            
        }
        
        if conn4VM.loser == "lose"{
            // Create a new anchor entity and add it to the scene
            let anchorEntity = AnchorEntity()
            
            // Create and add a new box entity
            let won =  ModelEntity(mesh: MeshResource.generateText("losee", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
            won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box
            anchorEntity.addChild(won)
            //                anchorEntity.addChild(box)
            anchor.addChild(won)
            arView.scene.anchors.append(anchor)
        }
        
        
        func gantivalue(){
            
        }
        
        arView.scene.anchors.append(anchor)
        
        return arView
    }
    
    
    
    func makeCoordinator() -> CoordinatorJoin {
        let CoordinatorJoin = CoordinatorJoin(conn4VM: conn4VM)
        
        return CoordinatorJoin
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    
    
}

struct ViewAr2_Previews: PreviewProvider {
    static var previews: some View {
        ViewAr2()
            .environmentObject(ConnnectFourViewModel())
    }
}
