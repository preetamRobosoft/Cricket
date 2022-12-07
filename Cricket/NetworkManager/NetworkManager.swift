//
//  NetworkManager.swift
//  Cricket
//
//  Created by Preetam G on 06/12/22.
//

import Foundation

class NetworkManager {
    
    func getData(url: URL, completion: @escaping ([String: Any]?, Error? ) -> Void) {
        let session = URLSession.shared
        let task = session.dataTask(with: url) { recievedData, response, error in
        if let data = recievedData {
                do {
                    let jsonData = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]
                    if let apidata = jsonData {
                        completion(apidata, nil)
                    }
                } catch {
                    completion(nil,error)
                }
            }
        else {
            completion(nil, error)
        }
        }
        task.resume()
    }
}

