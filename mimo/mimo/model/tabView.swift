//
//  tabView.swift
//  mimo
//
//  Created by Hyun Seo Jung on 8/5/24.
//

import SwiftUI

struct Tap: Identifiable {
    var id: UUID = .init()
    var image: String
}

var tapList = [
    Tap(image: "Home Page"),
    Tap(image: "Bookmark"),
    Tap(image: "Speech Bubble"),
    Tap(image: "Settings")
]

