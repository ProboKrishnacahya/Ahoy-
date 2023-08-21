//
//  ContentView.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 13/08/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    @State var Card1: String = "s"
    @EnvironmentObject var conn4VM: ConnnectFourViewModel
    
   
    var body: some View {
        VStack{
            
            
            
            ARViewContainer(conn4VM: conn4VM).edgesIgnoringSafeArea(.all)
                
        }
    }
}
struct ARViewContainer: UIViewRepresentable {
    let conn4VM: ConnnectFourViewModel
    @State var save: String = "halo"

    func makeUIView(context: Context) -> ARView {
        
    
        let arView = ARView(frame: .zero)
        arView.addGestureRecognizer(UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.handleTap)))
        
        context.coordinator.view = arView
        arView.session.delegate = context.coordinator
        
        let anchor =  AnchorEntity(plane: .horizontal)
        
            if let modelEntity = try? ModelEntity.load(named: "boardbaru") {
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
        
        
        
        func gantivalue(){
            
        }
        
        arView.scene.anchors.append(anchor)
        
        return arView
    }
    
    
    
    func makeCoordinator() -> Coordinator {
        let coordinator = Coordinator(conn4VM: conn4VM)
        
        
        
        
        return coordinator
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ConnnectFourViewModel())
    }
}
#endif
