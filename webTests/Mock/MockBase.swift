//
//  MockBase.swift
//  web
//
//  Created by Azmi SAHIN on 27/08/2017.
//  Copyright © 2017 Azmi SAHIN. All rights reserved.
//

// MARK: - Mock Base
/// Base
///
/// Mock Taban Model
///
/// - Parameters:
///
/// - Returns: Base
///
/// Usage
///
///     let mockBase = MockBase()
///
@testable import web
public class MockBase
{
    // MARK: - Property
    
    /// E-Mail
    public var Email : String  = ""
    
    /// Kullanici Adi
    public var UserName : String  = ""
    
    /// Parola
    public var Password : String  = ""
    
    /// Grant
    public var Grant : Bool  = false
    
    /// Sipariş Numarası
    public var OrderId : Int  = -1
    
    /// Sipariş Satır Numarası
    public var OrderLine : Int  = -1
    
    /// Domain
    public var Domain : String  = ""
    
    /// Protokol
    public var DomainProtocol : String  = ""
    
    /// Servis Adresi
    public var DomainApi : String  = ""
    
    /// Servis Uugulaması
    public var DomainApiApplication : String  = ""
    
    /// Servis Version Numarası
    public var DomainApiApplicationVersion : String  = ""
    
    /// Servis Erişim Türü
    public var GrantType : String = ""
    
    /// Initalize
    init() {
        
        Email = "bilgi@azmisahin.com"
        UserName = "test"
        Password = "password"
        Grant = true
        OrderId = 0
        OrderLine = 0
        Domain = "azmisahin.com"
        DomainProtocol = "http"
        DomainApi  = "api.azmisahin.com"
        DomainApiApplication = "ios"
        DomainApiApplicationVersion = "v1"
        GrantType = "password"
    }
    
    /// Test Performans Kontrol
    public var testPerformance : Bool = true
}

