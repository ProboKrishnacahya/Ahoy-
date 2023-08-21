//
//  CoordinatorJoin.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 20/08/23.
//



import Foundation
import ARKit
import RealityKit
import SwiftUI

class CoordinatorJoin: NSObject, ARSessionDelegate , ObservableObject{
    var conn4VM: ConnnectFourViewModel
    init(conn4VM: ConnnectFourViewModel) { // Add this initializer
            self.conn4VM = conn4VM
            super.init()
        }
    weak var view: ARView?
    var count = 25
    var person1 = 1
    var person2 = 1
    var person3 = 1
    var person4 = 1
    var person5 = 1
    var person6 = 1
    var person7 = 1
    var person8 = 1
    var person9 = 1
    var person10 = 1
    var person11 = 1
    var person12 = 1
    var person13 = 1
    var person14 = 1
    var person15 = 1
    var person16 = 1
    var person17 = 1
    var person18 = 1
    var person19 = 1
    var person20 = 1
    var person21 = 1
    var person22 = 1
    var person23 = 1
    var person24 = 1
    var person25 = 1
    
    var img1 = "a1"
    var img2 = "a2"
    var img3 = "a3"
    var img4 = "a4"
    var img5 = "a5"
    var img6 = "a6"
    var img7 = "a7"
    var img8 = "a8"
    var img9 = "a9"
    var img10 = "a10"
    var img11 = "a11"
    var img12 = "a12"
    var img13 = "a13"
    var img14 = "a14"
    var img15 = "a15"
    var img16 = "a16"
    var img17 = "a17"
    var img18 = "a18"
    var img19 = "a19"
    var img20 = "a20"
    var img21 = "a21"
    var img22 = "a22"
    var img23 = "a23"
    var img24 = "a24"
    var img25 = "a25"
    

    
    
    
    @objc func handleTap(_ recognizer: UITapGestureRecognizer) {
        
        
        guard let view = self.view else { return }
        
        let tapLocation =  recognizer.location(in: view)
        
        if let entity = view.entity(at:  tapLocation) as? ModelEntity {
            
            count -= 1
            print(conn4VM.imgcard)
            print("mulai ini")
            print(count)
            print(person1)
            var newTransform = entity.transform
            let rotation = simd_quatf(angle: .pi / 6, axis: [3, 0, 0])
            let positionChange = SIMD3<Float>(0.1, -0.5, -2)
            
            newTransform.rotation = rotation
            newTransform.translation += positionChange
            
            entity.transform = newTransform
            
            

            if entity.name == "card1" {
                person1 = 0
                print("myperson1")
                print(person1)
            }
            else if entity.name == "card2" {
                person2 = 0
                print("myperson2")
                print(person2)
            }
            else if entity.name == "card3" {
                person3 = 0
                print("myperson3")
                print(person3)
            }
            else if entity.name == "card4" {
                person4 = 0
                print("myperson4")
                print(person4)
            }
            else if entity.name == "card5" {
                person5 = 0
                print("myperson5")
                print(person5)
            }
            else if entity.name == "card6" {
                person6 = 0
                print("myperson6")
                print(person6)
            } else if entity.name == "card7" {
                person7 = 0
                print("myperson7")
                print(person7)
            }
            else if entity.name == "card8" {
                person8 = 0
                print("myperson8")
                print(person8)
            }
            else if entity.name == "card9" {
                person9 = 0
                print("myperson9")
                print(person9)
            }
            else if entity.name == "card10" {
                person10 = 0
                print("myperson10")
                print(person10)
            }
            else if entity.name == "card11" {
                person11 = 0
                print("myperson11")
                print(person11)
            }
            else if entity.name == "card12" {
                person12 = 0
                print("myperson12")
                print(person12)
            }
            else if entity.name == "card13" {
                person13 = 0
                print("myperson13")
                print(person13)
            }
            else if entity.name == "card14" {
                person14 = 0
                print("myperson14")
                print(person14)
            }
            else if entity.name == "card15" {
                person15 = 0
                print("myperson15")
                print(person15)
            }
            else if entity.name == "card16" {
                person16 = 0
                print("myperson16")
                print(person16)
            }
            else if entity.name == "card17" {
                person17 = 0
                print("myperson17")
                print(person17)
            }
            else if entity.name == "card18" {
                person18 = 0
                print("myperson18")
                print(person18)
            }
            else if entity.name == "card19" {
                person19 = 0
                print("myperson19")
                print(person19)
            }
            else if entity.name == "card20" {
                person20 = 0
                print("myperson20")
                print(person20)
            }
            else if entity.name == "card21" {
                person21 = 0
                print("myperson21")
                print(person21)
            }
            else if entity.name == "card22" {
                person22 = 0
                print("myperson22")
                print(person22)
            }
            else if entity.name == "card23" {
                person23 = 0
                print("myperson23")
                print(person23)
            }
            else if entity.name == "card24" {
                person24 = 0
                print("myperson24")
                print(person24)
            }
            else if entity.name == "card25" {
                person25 = 0
                print("myperson25")
                print(person25)
            }
            if count == 1 && person1 == 1 && img1 == conn4VM.imgcardjoin{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person1 == 0 && img1 == conn4VM.imgcardjoin {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person2 == 1 && img2 == conn4VM.imgcardjoin{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person2 == 0 && img2 == conn4VM.imgcardjoin {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person3 == 1 && img3 == conn4VM.imgcardjoin{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person3 == 0 && img3 == conn4VM.imgcardjoin {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person4 == 1 && img4 == conn4VM.imgcardjoin{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person4 == 0 && img4 == conn4VM.imgcardjoin {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person5 == 1 && img5 == conn4VM.imgcardjoin{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person5 == 0 && img5 == conn4VM.imgcardjoin {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person6 == 1 && img6 == conn4VM.imgcardjoin{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person6 == 0 && img6 == conn4VM.imgcard {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person7 == 1 && img7 == conn4VM.imgcard{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person7 == 0 && img7 == conn4VM.imgcard {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person8 == 1 && img8 == conn4VM.imgcard{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person8 == 0 && img8 == conn4VM.imgcard {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person9 == 1 && img9 == conn4VM.imgcard{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person9 == 0 && img9 == conn4VM.imgcard {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person10 == 1 && img10 == conn4VM.imgcard{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person10 == 0 && img10 == conn4VM.imgcard {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person11 == 1 && img11 == conn4VM.imgcard{
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You Won", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }
            if count == 1 && person11 == 0 && img11 == conn4VM.imgcard {
                // Create a new anchor entity and add it to the scene
                let anchorEntity = AnchorEntity()

                // Create and add a new box entity
                let won =  ModelEntity(mesh: MeshResource.generateText("You lose", extrusionDepth: 0.03, font: .boldSystemFont(ofSize: 0.2), containerFrame: .zero, alignment: .center,lineBreakMode: .byCharWrapping), materials: [SimpleMaterial()])
                won.position = SIMD3(x: -0.2, y: -0.4, z: -1) // Set the position of the box

                anchorEntity.addChild(won)
                //                anchorEntity.addChild(box)
                view.scene.addAnchor(anchorEntity)
            }


            
            
            
            
            
            
        }
        
    }
    
}

