//
//  Settings.swift
//  ColorSwitch
//
//  Created by Graphic Influence on 02/03/2020.
//  Copyright © 2020 marianne massé. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1  //01
    static let switchCategory: UInt32 = 0x1 << 1  //10
}

enum Zpositions {
    static let label: CGFloat = 0
    static let ball: CGFloat = 1
    static let colorSwitch: CGFloat = 2
}
