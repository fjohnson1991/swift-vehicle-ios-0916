//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Felicity Johnson on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    
    let maxAltitude : Double
    var altitude : Double = 0.0
    var inFlight : Bool {
        
        if speed > 0 && altitude > 0 {
            
            return true
            
        } else {
            
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    
    func takeoff() {
        
        if inFlight == false {
            
            speed = maxSpeed * (1/10)
            altitude = maxAltitude * (1/10)
        }
    }
    
    func land() {
        
        speed = 0
        altitude = 0
    }
    
    func climb() {
        
        if inFlight == true {
            
            if altitude < maxAltitude {
                
                altitude += (maxAltitude * (1/10))
                decelerate()
            }
        }
    }
    
    func dive() {
        
        if speed >= 0 {
            
            if altitude > 0 {
                
                altitude -= (maxAltitude * (1/10))
                accelerate()
                
            }
        }
    }
    
    func bankRight() {
        
        if inFlight == true {
                
                self.heading += 45
                speed -= (speed * (1/10))
                adjustForAngle()
        
        }
    }
    
    func bankLeft() {
        
        if inFlight == true {
            
            self.heading -= 45
            speed -= (speed * (1/10))
            adjustForAngle()
            
        }
    }
    
    
    
}
