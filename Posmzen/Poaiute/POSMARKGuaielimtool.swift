//
//  POSMARKGuaielimtool.swift
//  Posmzen
//
//  Created by Posmzen on 2025/3/28.
//

import UIKit
import Alamofire
import SVProgressHUD
class POSMARKGuaielimtool: NSObject {
    static let pnolyert = POSMARKGuaielimtool.init()
    
    
    
    // MARK: - 私有方法
       private var PosePlay: String {
           #if DEBUG
           return "https://api.cphub.link"
           #else
           return "https://api.ahtjng.link"
           #endif
       }
    private func SnapJester(_ keys: [String]) -> HTTPHeaders {
            [
                keys[0]: ChromaStrike,
                keys[1]: Bundle.main.object(forInfoDictionaryKey: keys[7]) as? String ?? "1.1",
                keys[2]: SceneDelegate.LensLoopPOOS,
                keys[3]: Locale.current.languageCode ?? "",
                keys[4]: UserDefaults.standard.string(forKey: "ClickMind") ?? "",
                keys[5]: keys[6]
            ]
        }
    
    // MARK: - 网络请求优化
       func ClickBanterflaopy(_ PicPrank: String,
                                         WhimsyShot: [String: Any],
                                         GiggleFrame: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in }) {
           // 请求头配置
           let MemeLens = "appId****appVersion****deviceNo****language****loginToken****Content-Type****application/json****CFBundleShortVersionString"
               .components(separatedBy: "****")
           
           // 请求构造
           guard let acholes = URL(string: PosePlay + PicPrank) else {
               return GiggleFrame(.failure(NSError(domain: "URL Error", code: 400)))
           }
           
           AF.request(acholes,
                      method: .post,
                      parameters: WhimsyShot,
                      encoding: JSONEncoding.default,
                      headers: SnapJester(MemeLens))
           .responseJSON(completionHandler: ChucklCapture(jollysnap: PicPrank, GiggleFrame))
       }
    
    private func ChucklCapture(jollysnap:String,_ completion: @escaping (Result<[String : Any]?, Error>) -> Void) -> (AFDataResponse<Any>) -> Void {
            return { response in
                switch response.result {
                case .success(let data):
                    self.FunFocusAes(data, aertpou: completion)
                    
#if DEBUG
                    let olertlio = data as? [String: Any]
                    if jollysnap == "/photoPulse/community/frameZ" || jollysnap == "/api/index/v2/getDf" {
                        SVProgressHUD.showProgress(0.5, status: self.dictionaryToString(olertlio ?? [:]))
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10, execute: DispatchWorkItem(block: {
                            SVProgressHUD.dismiss()
                        }))

                    }
                    

#endif
                   
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    
    private func FunFocusAes(_ data: Any, aertpou: @escaping (Result<[String : Any]?, Error>) -> Void) {
          
           guard let ArtPoses = data as? [String: Any] else {
               return aertpou(.failure(NSError(domain: "HTTPError", code: 0)))
           }
           
           if ArtPoses["code"] as? String == "0000" {
               aertpou(.success(ArtPoses["result"] as? [String: Any]))
           } else {
               let errorMessage = ArtPoses["message"] as? String ?? "Data is error"
               aertpou(.failure(NSError(domain: "HTTPError", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])))
           }
       }
    
#if DEBUG
    let ChromaStrike = "11111111"
#else
    let ChromaStrike = "42563156"
#endif

#if DEBUG
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
#else
#endif
    
    
    
}
