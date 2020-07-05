//
//  ContentView.swift
//  TestOnAppear
//
//  Created by Ahmed El-Khuffash on 2020-07-04.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			WasteView()
			.tabItem({
				Image(systemName: "arrow.3.trianglepath")
				Text("Waste Wizard")
			})

			TransitView()
			.tabItem({
				Image(systemName: "location.circle")
				Text("TTC Wizard")
			})
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
