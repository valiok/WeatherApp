//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Valiok Khutornenko on 03.11.2019.
//  Copyright © 2019 Valentine Khutornenko. All rights reserved.
//

import Foundation

class NetworkManager {
    
    public func sendRequest(url: URL) {
            
        let url1 = URL(string: "https://www.metaweather.com/api/location/44418/")

        let session = URLSession(configuration: .default)
        var request = URLRequest(url: url1!)
        let dataTask : URLSessionDataTask?
        
        request.httpMethod = httpMethod.get.rawValue
                
        dataTask = session.dataTask(with: request) { data, response, error in
            if let err = error {
                print("Error: \(err.localizedDescription)")
                return
            }
            
            print("\(data?.description)")
        }
        
        dataTask?.resume()
    }
    
    enum httpMethod : String {
        case post = "POST"
        case get = "GET"
    }
}
