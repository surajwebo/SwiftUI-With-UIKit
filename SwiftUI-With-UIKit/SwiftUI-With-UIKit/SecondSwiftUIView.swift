//
//  SwiftUIView.swift
//  SwiftUI-With-UIKit
//
//  Created by Suraj Mirajkar on 22/03/22.
//

import SwiftUI

struct SecondSwiftUIView: View {
    var selectedRowText: String?
    var body: some View {
        Text(selectedRowText ?? "")
            .navigationBarTitle(Text("SecondSwiftUIView"), displayMode: .inline)
    }
}

struct SecondSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSwiftUIView()
    }
}
