//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Felicity Johnson on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    
    override func climb() {
        
        if inFlight == true {
            
            if altitude < maxAltitude {
                
                altitude += (maxAltitude * (1/5))
                decelerate()
            }
        }
    }
    
    override func dive() {
        
        if speed >= 0 {
            
            if altitude > 0 {
                
                altitude -= (maxAltitude * (1/5))
                accelerate()
                
            }
        }
    }
    
    
    func afterburner() {
        
        if inFlight == true && speed == maxSpeed {
            
            speed = (2 * maxSpeed)
            
        }
        
    }
}
