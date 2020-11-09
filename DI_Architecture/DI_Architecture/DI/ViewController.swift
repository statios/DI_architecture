//
//  ViewController.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import UIKit
import Resolver

class ViewController: UIViewController {
  
  @LazyInjected var aClass: A
  @LazyInjected var bClass: B
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
  }

  @IBAction func register(_ sender: Any) {
    
  }
  
  @IBAction func remove(_ sender: Any) {
    print("remove")
    Resolver.session.reset()
  }
  
  @IBAction func callA(_ sender: Any) {
    print(aClass)
  }
  
  @IBAction func callB(_ sender: Any) {
    print(bClass)
  }
  
  @IBAction func present(_ sender: Any) {
    present(ViewController2(), animated: true)
  }
}
