//
//  ContentView.swift
//  SwiftUI-With-UIKit
//
//  Created by Suraj Mirajkar on 22/03/22.
//

import SwiftUI

struct FirstSwiftUIView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach (1...20, id: \.self) {
                    let rowTitle = String($0)
                    NavigationLink(destination: ViewControllerRepresentable(selectedRowText: rowTitle)) {
                        Text(rowTitle)
                    }
                } .navigationTitle(Text("FirstSwiftUIView"))
            }
        }
    }
}

struct FirstSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstSwiftUIView()
    }
}

struct ViewControllerRepresentable: UIViewControllerRepresentable {
    var selectedRowText: String
    func makeUIViewController(context: Self.Context) -> some UIViewController {
        let vc = ViewController(nibName: "ViewController", bundle: nil)
        vc.selectedRowText = selectedRowText
        return vc
    }

    func updateUIViewController(_ uiViewController: Self.UIViewControllerType, context: Self.Context) {
        
    }
    
}
