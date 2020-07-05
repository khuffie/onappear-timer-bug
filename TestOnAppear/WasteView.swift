//
//  SwiftUIView.swift
//  TestOnAppear
//
//  Created by Ahmed El-Khuffash on 2020-07-04.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct WasteView: View {
    var body: some View {
		VStack {
			Text("Hello, Waste View!")
		}
		.onAppear {
			print("WasteView.onAppear")
		}.onDisappear {
			print("WasteView.onDisappear")
		}
        
    }
}

struct WasteView_Previews: PreviewProvider {
    static var previews: some View {
        WasteView()
    }
}
