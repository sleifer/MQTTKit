//
//  MQTTOptions.swift
//  MQTTKit
//
//  Created by Arne Christian Skarpnes on 30.03.2018.
//  Copyright © 2018 Arne Christian Skarpnes. All rights reserved.
//

import Foundation

public struct MQTTOptions {
    public var host: String!
    private var _port: Int?
    public var port: Int {
        get {
            return _port ?? (useTLS ? 8883 : 1883)
        }
        set {
            _port = newValue
        }
    }
    public var cleanSession = true
    public var will: MQTTMessage?
    public var password: String? = nil
    public var username: String? = nil
    public var keepAliveInterval: UInt16 = 10
    public var clientId: String = UUID().uuidString
    public var useTLS = false
    public var autoReconnect: Bool = true
    public var autoReconnectTimeout: Double = 60
    public var bufferSize: Int = 4096
    public var readQosClass: DispatchQoS.QoSClass = .background
    
    public init(host: String, port: Int? = nil) {
        self.host = host
    }
}
