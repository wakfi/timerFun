//
//  ViewController.swift
//  timerFun
//
//  Created by Gray, John Walker on 10/5/20.
//  Copyright © 2020 Walker Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController 
{
  @IBOutlet var timeLabel: UILabel!
 
  var seconds = 0
  {
    didSet
    {
      timeLabel.text = String(seconds)
    }
  }
  
  var timer: Timer? = nil
  
  func startTimer()
  {
    timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
    { timer in
      self.seconds += 1
    }
  }
  
  func pauseTimer()
  {
    guard let theTimer = timer else { return }
    theTimer.invalidate()
    timer = nil
  }
  
  func resetTimer()
  {
    timeLabel.text = "0"
    seconds = 0
  }
  
  @IBAction func startPressed(_ sender: UIButton) 
  {
    startTimer()
  }
  
  @IBAction func pausePressed(_ sender: UIButton) 
  {
    pauseTimer()
  }
  
  @IBAction func resetPressed(_ sender: UIButton) 
  {
    resetTimer()
  }
  
  override func viewDidLoad() 
  {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

