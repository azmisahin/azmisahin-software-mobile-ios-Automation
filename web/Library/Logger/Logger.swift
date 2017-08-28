//
//  Logger.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Requared
import Foundation

/// Log Level
///
///     var logLevel : LogLevel.All
///
public enum LogLevel: Int {
    
    // MARK: - Property
    case
    
    /// All
    ///
    /// 0
    All = 0
    
    /// Verbose
    ///
    /// 1
    , Verbose = 1
    
    /// Debug
    ///
    /// 2
    , Debug = 2
    
    /// Info
    ///
    /// 0
    , Info = 3
    
    /// All
    ///
    /// 4
    , Warning = 4
    
    /// Error
    ///
    /// 5
    , Error = 5
    
    /// Off
    ///
    /// 6
    , Off = 6
    
}

/// Logger
///
///     var log : Logger()
///
///     log.info("Logger Success", .Info)
///
public struct Logger {
    
    /// All
    public func all(_ value: String)
    {
        write(value: value, level: .Debug)
    }
    
    /// Verbose
    public func verbose(_ value: String)
    {
        write(value: value, level: .Debug)
    }
    
    /// Debug
    public func debug(_ value: String)
    {
        write(value: value, level: .Debug)
    }
    
    /// Info
    public func info(_ value: String)
    {
        write(value: value, level: .Info)
    }
    
    /// Warning
    public func warning(_ value: String)
    {
        write(value: value, level: .Warning)
    }
    
    /// Error
    public func error(_ value: String)
    {
        write(value: value, level: .Error)
    }
    
    /// Off
    public func off(_ value: String)
    {
        write(value: value, level: .Off)
    }
    
    /// Write
    private func write(value: String, level : LogLevel)
    {
        // Termianal
        let terminalAll     = ">"
        let terminalDebug   = ">"
        let terminalError   = ">"
        let terminalInfo    = ">"
        let terminalOff     = ">"
        let terminalVerbose = ">"
        
        // Console
        var console = ""
        
        // Proc
        switch level
        {
        case LogLevel.All: console = terminalAll + value
        case LogLevel.Debug: console = terminalDebug + value
        case LogLevel.Error: console = terminalError + value
        case LogLevel.Info: console = terminalInfo + value
        case LogLevel.Off: console = terminalOff + value
        case LogLevel.Verbose: console = terminalVerbose
        default: console = terminalAll + value
        }
        
        // Print
        print(console)
        
    }
}
/// Logger
var log = Logger()
