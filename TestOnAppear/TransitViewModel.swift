//
//  TransitViewModel.swift
//  TestOnAppear
//
//  Created by Ahmed El-Khuffash on 2020-07-05.
//  Copyright © 2020 Ahmed El-Khuffash. All rights reserved.
//

import Foundation
public class TransitViewModel: ObservableObject {
	
	@Published var timerText:String = " "
	@Published var refreshedDate:Date?
	@Published var refreshTimer:Timer?
	let refreshInSeconds = 10
	var refreshedSince:Int?
	
	func startTimer() {
		print("TransitViewModel.startTimer")
		self.refreshedDate = Date()
		
		weak var weakSelf = self
		
		self.refreshTimer = Timer.scheduledTimer(timeInterval: 1, target: weakSelf!, selector: #selector(weakSelf?.updateTime), userInfo: nil , repeats: true)

		self.timerText = "0 secs ago"
	}
	
	@objc func updateTime(timer: Timer) {
		
		
		if(refreshedDate != nil) {
			refreshedSince = abs(Int(refreshedDate!.timeIntervalSinceNow))
			timerText = "\(refreshedSince!) secs ago"
		}
		
		if(refreshedSince! >= refreshInSeconds ) {
			
			self.resetTimer()
			self.startTimer()
			
			//if we're refreshing from the timer, don't do the location check
			//self.getPredictions(for: screen, skipLocation: true)
			
			
		}
	}
	
	/**
	Resets and turns off the timer, if we have stopped refreshing predictions or if we're refreshing them.
	*/
	func resetTimer() {
		print("TransitViewModel.resetTimer")
		if(self.refreshTimer != nil) {
			print("invalidating timer")
			self.refreshTimer!.invalidate()
			self.refreshedSince = nil
			self.timerText = " "
		}
		self.refreshTimer = nil
	}


}
