//
//  Logging.swift
//  NFCTest
//
//  Created by Andy Qua on 11/06/2019.
//  Copyright © 2019 Andy Qua. All rights reserved.
//

import Foundation
import OSLog


public extension Logger {
    /// Using your bundle identifier is a great way to ensure a unique identifier.
    private static var subsystem = Bundle.main.bundleIdentifier!
    
    /// Tag Reader logs
    static let passportReader = CustomLogger(category: "passportReader")

    /// Tag Reader logs
    static let tagReader = CustomLogger(category: "tagReader")

    /// SecureMessaging logs
    static let secureMessaging = CustomLogger(category: "secureMessaging")

    static let openSSL = CustomLogger(category: "openSSL")

    static let bac = CustomLogger(category: "BAC")
    static let chipAuth = CustomLogger(category: "chipAuthentication")
    static let pace = CustomLogger(category: "PACE")

    public static let customLoggerHolder = CustomLoggerHolder.shared
}

public class CustomLogger {
    let category: String

    init(category: String) {
        self.category = category
    }

    func debug(_ message: String) {
        CustomLoggerHolder.shared.log(category: "Debug", message: message)
    }

    func trace(_ message: String) {
        CustomLoggerHolder.shared.log(category: "Trace", message: message)
    }

    func info(_ message: String) {
        CustomLoggerHolder.shared.log(category: "Info", message: message)
    }

    func notice(_ message: String) {
        CustomLoggerHolder.shared.log(category: "Notice", message: message)
    }

    func warning(_ message: String){
        CustomLoggerHolder.shared.log(category: "Warning", message: message)
    }

    func error(_ message: String) {
        CustomLoggerHolder.shared.log(category: "Error", message: message)
    }

    func critical(_ message: String) {
        CustomLoggerHolder.shared.log(category: "Critical", message: message)
    }
}

public class CustomLoggerHolder {
    static let shared = CustomLoggerHolder()

    public var logs: String = ""
    private init() { }

    func log(category: String, message: String) {
        logs.append("\n\(category): \(message)")
        print("\n\(category): \(message)")
    }
}
