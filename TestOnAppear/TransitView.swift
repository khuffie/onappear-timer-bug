//
//  TransitView.swift
//  TestOnAppear
//
//  Created by Ahmed El-Khuffash on 2020-07-04.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import SwiftUI

struct TransitView: View {
	
	@EnvironmentObject var transitViewModel:TransitViewModel
	
    var body: some View {
		VStack {
			Text("Hello Transit View")
			Text("\(self.transitViewModel.timerText)")
		}
		.onAppear {
			print("TransitView.onAppear")
			self.transitViewModel.startTimer()
		}.onDisappear {
			print("TransitView.onDisappear")
			self.transitViewModel.resetTimer()
		}
		
	}
	
	
}

struct TransitView_Previews: PreviewProvider {
    static var previews: some View {
        TransitView()
    }
}
