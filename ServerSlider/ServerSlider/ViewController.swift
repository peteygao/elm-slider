//
//  ViewController.swift
//  ServerSlider
//
//  Created by Nick Ager on 21/09/2016.
//  Copyright © 2016 Rocketbox Ltd. All rights reserved.
//

import Cocoa
//import HTTPServer
//import WebSocketServer

class ViewController: NSViewController {

    @IBOutlet var sliderNumberLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        startWebSocketServer()
    }

    @IBAction func sliderChanged(_ sender: NSSlider) {
        sliderNumberLabel.stringValue = "("  + sender.stringValue + ")"
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

// MARK: - web socket server
//extension ViewController {
//    func startWebSocketServer() {
//        let port = 8080
//        let log = LogMiddleware()
//        
//        let router = BasicRouter { route in
//            route.get("/hello2") { request in
//                return Response(body: "Hello, world!")
//            }
//        }
//        
//        do {
//            let server = try Server(port: port, middleware: [log], responder: router)
//            try server.start()
//        } catch {
//            print("Error = \(error)")
//        }
//    }
//}
//
//
//// MARK: - more socket server stuff
//extension ViewController {
//    func startWebSocketServer() {
//        let server = WebSocketServer { req, ws in
//            print("Connected!")
//            ws.onText { text in
//                print("text: \(text)")
//                try ws.send(text)
//            }
//            ws.onClose {(code, reason) in
//                print("\(code): \(reason)")
//            }
//        }
//        
//        try Server(responder: server).start()
//    }
//    
//    
//    func startFromRequest () {
//        try Server { request in
//            return try request.webSocket { req, ws in
//                print("connected")
//                
//                ws.onBinary { data in
//                    print("data: \(data)")
//                    try ws.send(data)
//                }
//                ws.onText { text in
//                    print("data: \(text)")
//                    try ws.send(text)
//                }
//            }
//            }.start()
//    }
//}