//
//  WeekForecastRouter.swift
//  WeatherApp
//
//  Created by Valiok Khutornenko on 03.11.2019.
//  Copyright © 2019 Valentine Khutornenko. All rights reserved.
//

import Foundation

protocol Router {
    func routeTo()
}

class WeekForecastRouter : Router {
    func routeTo() {
        print("D")
    }
    
}
