//
//  ContentView.swift
//  FocusableTextFieldDemo
//
//  Created by Gabriel Theodoropoulos.
//  https://serialcoder.dev
//

import SwiftUI

struct ContentView: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var text3 = ""
    @State private var focusTag = 1
    
    var body: some View {
        VStack {
            FocusableTextField(stringValue: $text1,
                               placeholder: "Text field #1",
                               autoFocus: true,
                               tag: 1,
                               focusTag: $focusTag,
                               onTabKeystroke: {
                focusTag = 2
            })
                .frame(maxWidth: 400)
            
            
            FocusableTextField(stringValue: $text1,
                               placeholder: "Text field #2",
                               tag: 2,
                               focusTag: $focusTag,
                               onTabKeystroke: {
                focusTag = 3
            })
                .frame(maxWidth: 400)
            
            
            FocusableTextField(stringValue: $text1,
                               placeholder: "Text field #3",
                               tag: 3,
                               focusTag: $focusTag,
                               onTabKeystroke: {
                focusTag = 1
            })
                .frame(maxWidth: 400)
            
        }
        .frame(minWidth: 500, minHeight: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
