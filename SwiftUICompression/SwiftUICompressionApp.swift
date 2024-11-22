//
//  SwiftUICompressionApp.swift
//  SwiftUICompression
//
//  Created by Angelos Staboulis on 22/11/24.
//

import SwiftUI

@main
struct SwiftUICompressionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(phrase:
            """
            Lorem ipsum dolor sit amet consectetur adipiscing elit mi
            nibh ornare proin blandit diam ridiculus, faucibus mus
            dui eu vehicula nam donec dictumst sed vivamus bibendum
            aliquet efficitur. Felis imperdiet sodales dictum morbi
            vivamus augue dis duis aliquet velit ullamcorper porttitor,
            lobortis dapibus hac purus aliquam natoque iaculis blandit
            montes nunc pretium.
            """, compressedSize: 0
            ).frame(width: 500, height: 600)
                .windowResizeBehavior(.disabled)
        }.windowResizability(.contentSize)
    }
}
