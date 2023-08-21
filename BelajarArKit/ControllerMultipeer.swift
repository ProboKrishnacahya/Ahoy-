//
//  ControllerMultipeer.swift
//  BelajarArKit
//
//  Created by Yohan Wijaya on 15/08/23.
//



import SwiftUI
import MultipeerConnectivity
import AVFoundation


class ConnnectFourViewModel: NSObject, ObservableObject {
    
    let connectFourServiceType = "ahoy" // inisialisasi type service
    //    let sharedConn4VM = ConnnectFourViewModel()
    @Published var person0: String = " "
    @Published var isPlayer2Joined: Bool = false
    
    @Published var receivedMessage2: String = ""
    @Published var receivedMessage : String = ""
    
    @Published var Loserr : String = " "
    @Published var Winner : String = " "
    @Published var menu1ON : Bool = false
    @Published var njay : String = "25"
    @Published var imghost : String = ""
    @Published var imgnjay : String = ""
    @Published var imgjoin : String = ""
    @Published var imgcard : String = ""
    @Published var imgcardhost : String = ""
    @Published var imgcardjoin : String = ""
    
    
    @Published var SaveJoinMystry : String = " "
    @Published var SaveHostMystry : String = " "
    
    @Published var isChangeToGameScreen = false
    var peerId: MCPeerID //identitas perangkat
    var session: MCSession // sesion antar perangkat
    var nearbyServiceAdvertiser: MCNearbyServiceAdvertiser? //buat advertise biar perangkat lain bisa menemukan session kita
    
    override init() {
        peerId = MCPeerID(displayName: UIDevice.current.name)
        session = MCSession(peer: peerId, securityIdentity: nil, encryptionPreference: .none)
        super.init()
        session.delegate = self
    }
    func updatePlayerStatus() {
        isPlayer2Joined = true
    }
    
    
    
    func sendSaveHost(HostData: String) {
        if session.connectedPeers.count > 0 {
            do {
                try session.send(HostData.data(using: .utf8)!, toPeers: session.connectedPeers, with: .reliable)
            } catch {
                print("Error sending message: \(error)")
            }
        }
    }
    
    
    
    func sendSaveJoin(JoinData: String) {
        if session.connectedPeers.count > 0 {
            do {
                try session.send(JoinData.data(using: .utf8)!, toPeers: session.connectedPeers, with: .reliable)
            } catch {
                print("Error sending message: \(error)")
            }
        }
    }
    
    
    
    func advertise() {
        nearbyServiceAdvertiser = MCNearbyServiceAdvertiser(peer: peerId, discoveryInfo: nil, serviceType: connectFourServiceType)
        nearbyServiceAdvertiser?.delegate = self
        nearbyServiceAdvertiser?.startAdvertisingPeer()
    }
    
    func invite() {
        let browser = MCBrowserViewController(serviceType: connectFourServiceType, session: session)
        browser.delegate = self
        UIApplication.shared.windows.first?.rootViewController?.present(browser, animated: true)
    }
    
}

extension ConnnectFourViewModel: MCSessionDelegate {
    
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        switch state {
        case .connecting:
            print("\(peerId) state: connecting")
            
        case .connected:
            print("\(peerId) state: connected")
            DispatchQueue.main.async {
                self.isPlayer2Joined = true
            }
        case .notConnected:
            print("\(peerId) state: not connected")
        @unknown default:
            print("\(peerId) state: unknown")
        }
        var player2JoinText: String {
            return isPlayer2Joined ? "Player 2 Join" : ""
        }
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        //        if let receivehost = String(data: data, encoding: .utf8) {
        //            DispatchQueue.main.async {
        //                switch receivehost {
        //                default:
        //                    self.SaveHostMystry = receivehost
        //                    break
        //                }
        //
        //                self.objectWillChange.send()
        //            }
        //        }
        //        if let receivejoin = String(data: data, encoding: .utf8) {
        //            DispatchQueue.main.async {
        //                switch receivejoin {
        //                default:
        //                    self.SaveJoinMystry = receivejoin
        //                    break
        //                }
        //
        //                self.objectWillChange.send()
        //            }
        //        }
        
        //        if let lose = String(data: data, encoding: .utf8) {
        //            DispatchQueue.main.async {
        //                switch lose {
        //                default:
        //                    self.Loserr = lose
        //                    break
        //                }
        //
        //                self.objectWillChange.send()
        //            }
        //        }
        //        if let win = String(data: data, encoding: .utf8) {
        //            DispatchQueue.main.async {
        //                switch win {
        //                case "gambar1":
        //                    self.receivedMessage2 = "view1"
        //                case "kosong":
        //                    self.receivedMessage2 = win
        //                default:
        //                    self.Winner = win
        //                    break
        //                }
        //
        //                self.objectWillChange.send()
        //            }
        //        }
        //        if let menuOn = String(data: data, encoding: .utf8) {
        //            DispatchQueue.main.async {
        //                switch menuOn {
        //                case "gambar1":
        //                    self.receivedMessage2 = "view1"
        //                case "anjay":
        //                    self.menu1ON = true
        //                default:
        //                    self.menu1ON = true
        //                    break
        //                }
        //
        //                self.objectWillChange.send()
        //            }
        //
        //
        //        }
        if let imgSave = String(data: data, encoding: .utf8) {
            DispatchQueue.main.async {
                switch imgSave {
                case "PersonHost1":
                    self.imghost = "1"
                    self.imgcardhost = "a1"
                case "PersonHost2":
                    self.imghost = "2"
                    self.imgcardhost = "a2"
                case "PersonHost3":
                    self.imghost = "3"
                    self.imgcardhost = "a3"
                case "PersonHost4":
                    self.imghost = "4"
                    self.imgcardhost = "a4"
                case "PersonHost5":
                    self.imghost = "5"
                    self.imgcardhost = "a5"
                case "PersonHost6":
                    self.imghost = "6"
                    self.imgcardhost = "a6"
                case "PersonHost7":
                    self.imghost = "7"
                    self.imgcardhost = "a7"
                case "PersonHost8":
                    self.imghost = "8"
                    self.imgcardhost = "a8"
                case "PersonHost9":
                    self.imghost = "9"
                    self.imgcardhost = "a9"
                case "PersonHost10":
                    self.imghost = "10"
                    self.imgcardhost = "a10"
                case "PersonHost11":
                    self.imghost = "11"
                    self.imgcardhost = "a11"
                case "PersonHost12":
                    self.imghost = "12"
                    self.imgcardhost = "a12"
                case "PersonHost13":
                    self.imghost = "13"
                    self.imgcardhost = "a13"
                case "PersonHost14":
                    self.imghost = "14"
                    self.imgcardhost = "a14"
                case "PersonHost15":
                    self.imghost = "15"
                    self.imgcardhost = "a15"
                case "PersonHost16":
                    self.imghost = "16"
                    self.imgcardhost = "a16"
                case "PersonHost17":
                    self.imghost = "17"
                    self.imgcardhost = "a17"
                case "PersonHost18":
                    self.imghost = "18"
                    self.imgcardhost = "a18"
                case "PersonHost19":
                    self.imghost = "19"
                    self.imgcardhost = "a19"
                case "PersonHost20":
                    self.imghost = "20"
                    self.imgcardhost = "a20"
                case "PersonHost21":
                    self.imghost = "21"
                    self.imgcardhost = "a21"
                case "PersonHost22":
                    self.imghost = "22"
                    self.imgcardhost = "a22"
                case "PersonHost23":
                    self.imghost = "23"
                    self.imgcardhost = "a23"
                case "PersonHost24":
                    self.imghost = "24"
                    self.imgcardhost = "a24"
                case "PersonHost25":
                    self.imghost = "25"
                    self.imgcardhost = "a25"
                default:
                   
                    break
                }
                self.objectWillChange.send()
            }
        }
        if let imgSave1 = String(data: data, encoding: .utf8) {
            DispatchQueue.main.async {
                switch imgSave1 {
                case "personjoin1":
                    self.imgjoin = "1"
                    self.imgcardjoin = "a1"
                case "personjoin2":
                    self.imgjoin = "2"
                    self.imgcardjoin = "a2"
                case "personjoin3":
                    self.imgjoin = "3"
                    self.imgcardjoin = "a3"
                case "personjoin4":
                    self.imgjoin = "4"
                    self.imgcardjoin = "a4"
                case "personjoin5":
                    self.imgjoin = "5"
                    self.imgcardjoin = "a5"
                case "personjoin6":
                    self.imgjoin = "6"
                    self.imgcardjoin = "a6"
                case "personjoin7":
                    self.imgjoin = "7"
                    self.imgcardjoin = "a7"
                case "personjoin8":
                    self.imgjoin = "8"
                    self.imgcardjoin = "a8"
                case "personjoin9":
                    self.imgjoin = "9"
                    self.imgcardjoin = "a9"
                case "personjoin10":
                    self.imgjoin = "10"
                    self.imgcardjoin = "a10"
                case "personjoin11":
                    self.imgjoin = "11"
                    self.imgcardjoin = "a11"
                case "personjoin12":
                    self.imgjoin = "12"
                    self.imgcardjoin = "a12"
                case "personjoin13":
                    self.imgjoin = "13"
                    self.imgcardjoin = "a13"
                case "personjoin14":
                    self.imgjoin = "14"
                    self.imgcardjoin = "a14"
                case "personjoin15":
                    self.imgjoin = "15"
                    self.imgcardjoin = "a15"
                case "personjoin16":
                    self.imgjoin = "16"
                    self.imgcardjoin = "a16"
                case "personjoin17":
                    self.imgjoin = "17"
                    self.imgcardjoin = "a17"
                case "personjoin18":
                    self.imgjoin = "18"
                    self.imgcardjoin = "a18"
                case "personjoin19":
                    self.imgjoin = "19"
                    self.imgcardjoin = "a19"
                case "personjoin20":
                    self.imgjoin = "20"
                    self.imgcardjoin = "a20"
                case "personjoin21":
                    self.imgjoin = "21"
                    self.imgcardjoin = "a21"
                case "personjoin22":
                    self.imgjoin = "22"
                    self.imgcardjoin = "a22"
                case "personjoin23":
                    self.imgjoin = "23"
                    self.imgcardjoin = "a23"
                case "personjoin24":
                    self.imgjoin = "24"
                    self.imgcardjoin = "a24"
                case "personjoin25":
                    self.imgjoin = "25"
                    self.imgcardjoin = "a25"
                default:
                    
                    break
                }
                self.objectWillChange.send()
            }
            
            
            
        }
        
    }
    
    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        
    }
}

extension ConnnectFourViewModel: MCNearbyServiceAdvertiserDelegate {
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        invitationHandler(true, session)
    }
}

extension ConnnectFourViewModel: MCBrowserViewControllerDelegate {
    func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
    
    func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController) {
        browserViewController.dismiss(animated: true)
    }
}

