//
//  Dates.swift
//  Movies
//
//  Created by MacBookPro on 15/8/18.
//  Copyright © 2018 MacBookPro. All rights reserved.
//

import Foundation
struct Dates : Codable {
    let maximum : String?
    let minimum : String?
    
    enum CodingKeys: String, CodingKey {
        
        case maximum = "maximum"
        case minimum = "minimum"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        maximum = try values.decodeIfPresent(String.self, forKey: .maximum)
        minimum = try values.decodeIfPresent(String.self, forKey: .minimum)
    }
    
}
