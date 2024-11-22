//
//  ContentView.swift
//  SwiftUICompression
//
//  Created by Angelos Staboulis on 22/11/24.
//

import SwiftUI
import Compression
struct ContentView: View {
    @State var phrase:String
    @State var compressedSize:Int
    var body: some View {
        VStack {
            Text("Enter your phrase").frame(width:490,alignment: .leading)
            TextEditor(text:$phrase).frame(width:500,alignment: .leading)
            Button {
                let algorithm = COMPRESSION_LZFSE

                var sourceBuffer = Array(phrase.utf8)


                let destinationBuffer = UnsafeMutablePointer<UInt8>.allocate(capacity: sourceBuffer.count)
                
                
                
                compressedSize = compression_encode_buffer(destinationBuffer, phrase.count,
                                                               &sourceBuffer, phrase.count,
                                                               nil,
                                                               algorithm)
                if compressedSize == 0 {
                    print("Encoding failed.")
                }
                print("Original size: \(phrase.count) | Compressed size: \(compressedSize)")
            } label: {
                Text("Compress String").frame(width:400,height:45,alignment: .center)
            }
            Text("Original size: \(phrase.count) | Compressed size: \(compressedSize)")

        }
        
    }
    
    
}

#Preview {
    ContentView(phrase:"", compressedSize: 0)
}
