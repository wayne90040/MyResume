//
//  Experience.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/4.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//


import Foundation

struct Experience: Identifiable{
    let id = UUID()
    
    let job: String
    let postion: String
    let startDate: String
    let endDate: String
    let content: [String]
    let desc: String
    let img: String
}


