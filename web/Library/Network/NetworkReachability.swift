//
//  NetworkReachability.swift
//  web
//
//  Created by Azmi SAHIN on 28/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

/// Requared
import UIKit
import SystemConfiguration

/// Network Reachhabilty
///
///     var nr : NetworkReachability()
///
///
///
public class NetworkReachability {
    
    /// Is Internet Available
    ///
    ///
    /// - Parameters:
    ///
    /// - Returns: Bool
    ///
    /// Usage
    ///
    ///     let result = NetworkReachability().isInternetAvailable()
    ///
    func isInternetAvailable() -> Bool {
        
        // Define
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        // Guard
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        // flag
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        // Check
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        // Return
        return (isReachable && !needsConnection)
    }
}
