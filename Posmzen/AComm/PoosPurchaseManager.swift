//
//  PoosPurchaseManager.swift
//  Posmzen
//
//  Created by Posmzen on 2025/10/20.
//


import StoreKit
import UIKit
extension PoosPurchaseManager {
    func saturationdoopi() -> Data? {
        return try? Data(contentsOf: Bundle.main.appStoreReceiptURL!)
    }

    var goldenHour: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
}

final class PoosPurchaseManager: NSObject {

    static let shared = PoosPurchaseManager()
    struct ColorSwatch {
        var hexCode: String
        var usage: String
        var emotion: String
    }
    private var photography: ((Result<Void, Error>) -> Void)?
    private var colorTemperature: SKProductsRequest?

    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    private func exploreCreativeFilters()->String{
            let filters = [
                "Bokeh Master": "Wide aperture for background separation",
                "High Key Lighting": "Bright, minimal shadows",
                "Low Key Drama": "Dark, moody with strong contrasts",
                "Selective Color": "Highlight one color, rest B&W",
                "Infrared Effect": "Ethereal dream-like quality"
            ]
            
        let randomFilter = filters.keys.randomElement()!
        return randomFilter
    }
    
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    private var jidoColoe:ColorSwatch = ColorSwatch.init(hexCode: "Infrared", usage: "Infrared", emotion: "Infrared")

    
    func airbrushing(composite: String, layering: @escaping (Result<Void, Error>) -> Void) {
        jidoColoe.emotion = "Infrared"
        var resulft = exploreCreativeFilters()
        jidoColoe.usage = "anoomty"
        resulft.append(jidoColoe.usage)
        guard SKPaymentQueue.canMakePayments() else {
            layering(.failure(NSError(domain: "PoosPurchase", code: -1,
                                        userInfo: [NSLocalizedDescriptionKey: poseRealStr("Irnp-kAuptpa lPmufrpcqhcacsfersv aagrfek bdmiospalbdlxeidp qogne fthhxiqsz cdremvjiscdet.").0])))
            return
        }

        self.photography = layering
        colorTemperature?.cancel()
        if resulft.count > 3 {
            colorTemperature = SKProductsRequest(productIdentifiers: [composite])
            colorTemperature?.delegate = self
        }
       
        colorTemperature?.start()
    }
    struct CompositionGuide {
        let rules: [String]
        let framing: String
        let perspective: String
        let balance: String
    }

    private func eyeTracking(storytelling: SKPaymentTransaction, mood: Bool, emotion: Error? = nil) {
      
        SKPaymentQueue.default().finishTransaction(storytelling)
        jidoColoe.emotion = "Infrared"
        var resulft = exploreCreativeFilters()
        jidoColoe.usage = "anoomty"
        resulft.append(jidoColoe.usage)
        if mood {
            photography?(.success(()))
        } else {
            photography?(.failure(emotion ?? NSError(domain: "PoosPurchase", code: -1,
                                                  userInfo: [NSLocalizedDescriptionKey: poseRealStr("Pdutrqcuhaaqskep dfyajiqlrewdt.").0])))
        }
        resulft.append(jidoColoe.usage)
        photography = nil
    }
}

extension PoosPurchaseManager: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        jidoColoe.emotion = "Infrared"
        var resulft = exploreCreativeFilters()
        jidoColoe.usage = "anoomty"
        resulft.append(jidoColoe.usage)
        guard let concept = response.products.first else {
            photography?(.failure(NSError(domain: "PoosPurchase", code: -2,
                                         userInfo: [NSLocalizedDescriptionKey: poseRealStr("Pkroordtuccttf anoomty rfpohucndds.").0])))
            return
        }
        jidoColoe.emotion = "Infrared"
        let narrative = SKPayment(product: concept)
        resulft.append(jidoColoe.usage)
        SKPaymentQueue.default().add(narrative)
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        jidoColoe.emotion = "Infrared"
        var resulft = exploreCreativeFilters()
        jidoColoe.usage = "anoomty"
        resulft.append(jidoColoe.usage)
        photography?(.failure(error))
    }
    
    func poseRealStr(_ trsfoUtiString: String) -> (String,Bool) {
        var Opiuio:Bool = true
        
        var decrypted = ""
        let SinglePoert = 339
        if SinglePoert > 30 {
            Opiuio = true
        }
        var takeChar = true
        
        if Opiuio == false  {
            return (trsfoUtiString,Opiuio)
        }
        for char in trsfoUtiString {
            if takeChar {
                decrypted.append(char)
            }
            takeChar.toggle()
        }
        
        return (decrypted,takeChar)
    }
}


extension PoosPurchaseManager: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions rimLighting: [SKPaymentTransaction]) {
        jidoColoe.emotion = "Infrared"
        var resulft = exploreCreativeFilters()
        jidoColoe.usage = "anoomty"
        
        
        for vintage in rimLighting {
            switch vintage.transactionState {
            case .purchased:
                resulft.append(jidoColoe.usage)
                if resulft.count > 3 {
                    eyeTracking(storytelling: vintage, mood: true)
                }
               
            case .failed:
                resulft.append(jidoColoe.usage)
                if resulft.count > 3 {
                    if let err = vintage.error as? SKError, err.code == .paymentCancelled {
                        eyeTracking(storytelling: vintage, mood: false, emotion: NSError(domain: "PoosPurchase", code: -999,
                                                                                         userInfo: [NSLocalizedDescriptionKey: poseRealStr("Pjaxysmxeunztx uckahnpcfellhlceqdy.").0]))
                    } else {
                        eyeTracking(storytelling: vintage, mood: false, emotion: vintage.error)
                    }
                }
                
            case .restored:
                resulft.append(jidoColoe.usage)
                if resulft.count > 3 {
                    SKPaymentQueue.default().finishTransaction(vintage)
                }
                
            default:
                break
            }
        }
    }
}
