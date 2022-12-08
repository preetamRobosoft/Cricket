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
    
    func postData(url: String, parameters: [String: Any], completion: @escaping(Int? , Error?) -> Void) {
        
        if let url = URL(string: url) {
            
            var request = URLRequest(url: url)
            
            request.httpMethod = "POST"
            
            request.httpBody = parameters.percentEscaped().data(using: .utf8)
            print(parameters)
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                guard let data = data else{
                    
                    if error == nil {
                        
                        print(error?.localizedDescription as Any)
                        
                        completion(nil, error)
                        
                    }
                    return
                    
                }
                
                if let response = response as? HTTPURLResponse {
                    print(response)
                    print("Response", response.statusCode)
                    completion(response.statusCode, nil)
                }
                
                do {

                    let jsonData = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any ]

                                    print(jsonData as Any)

                                } catch let error {

                                    

                                    print(error.localizedDescription)



                                }
            }.resume()
            
        }
        
    }
}

extension Dictionary {

    func percentEscaped() -> String {

        return map { (key, value) in

            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""

            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""

            return escapedKey + "=" + escapedValue

        }

        .joined(separator: "&")

    }

}



extension CharacterSet {

    static let urlQueryValueAllowed: CharacterSet = {

        let generalDelimitersToEncode = ":#[]@"

        let subDelimitersToEncode = "!$&'()*+,;="



        var allowed = CharacterSet.urlQueryAllowed

        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")

        return allowed

    }()

}
