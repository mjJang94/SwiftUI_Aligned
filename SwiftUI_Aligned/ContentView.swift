//
//  ContentView.swift
//  SwiftUI_Aligned
//
//  Created by Paymint on 2020/05/13.
//  Copyright © 2020 Paymint. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            VStack(alignment: .trailing){
                Text("This is some text")
                Text("This is some longer text")
                Text("this is short")
            }
            
            Spacer().frame(width: 0, height: 30)
            
            HStack(alignment: .lastTextBaseline, spacing:20){
                Text("This is. ome text")
                    .font(.largeTitle)
                Text("This is some much longer text")
                    .font(.body)
                Text("This is short")
                    .font(.headline)
            }
            
            Spacer().frame(width: 0, height: 30)
        
            VStack{
                VStack(alignment: .leading){
                    Rectangle()
                        .foregroundColor(Color.green)
                        .frame(width: 120, height: 50)
                    Rectangle()
                        .foregroundColor(Color.red)
                        .alignmentGuide(.leading, computeValue: {d in d.width / 3})
                        .frame(width: 200, height: 50)
                    Rectangle()
                        .foregroundColor(Color.blue)
                        .frame(width: 180, height: 50)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

