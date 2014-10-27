//
//  Current.swift
//  wetter
//
//  Created by Jonathan Prince on 27/10/14.
//  Copyright (c) 2014 Jonathan Prince. All rights reserved.
//

import Foundation

struct Current {
    
    var currentTime: Int
    var temperature: Int
    var humidity: Double
    var precipProbability: Double
    var summary: String
    var icon: String
    
    init(weatherDictionary: NSDictionary) {
        let currentWeather = weatherDictionary["currently"] as NSDictionary
        
        currentTime = currentWeather["time"] as Int
        temperature = currentWeather["temperature"] as Int
        humidity = currentWeather["humidity"] as Double
        precipProbability = currentWeather["precipProbability"] as Double
        summary = currentWeather["summary"] as String
        icon = currentWeather["icon"] as String
    }
}