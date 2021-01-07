//
//  Skills.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/8.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import Foundation

struct Skill: Identifiable{
    let id = UUID()
    let title: String
    let status: String
    let desc: String?
    let content: [String]?
}
