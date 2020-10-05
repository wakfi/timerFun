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
  
  @IBAction func startPressed(_ sender: UIButton) 
  {
    print("start")
  }
  
  @IBAction func pausePressed(_ sender: UIButton) 
  {
    print("pause")
  }
  
  @IBAction func resetPressed(_ sender: UIButton) 
  {
    print("reset")
  }
  
  override func viewDidLoad() 
  {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

