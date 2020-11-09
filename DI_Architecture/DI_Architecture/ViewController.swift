//
//  ViewController.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import UIKit

class ViewController: UIViewController {

  let dp = Dependencies {
    Dependency { A() }
    Dependency { B() }
    Dependency { ViewController2() }
  }
  
  @Injected var aClass: A
  @Injected var bClass: B
  @Injected var vc2: ViewController2
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
  }

  @IBAction func register(_ sender: Any) {
    dp.register()
  }
  
  @IBAction func remove(_ sender: Any) {
    dp.remove()
  }
  
  @IBAction func callA(_ sender: Any) {
    print(aClass)
  }
  
  @IBAction func callB(_ sender: Any) {
    print(bClass)
  }
  
  @IBAction func present(_ sender: Any) {
    present(vc2, animated: true)
  }
}

class A {
  init() {
    print("class a init")
  }
  deinit {
    print("class a deinit")
  }
}

class B {
  init() {
    print("class b init")
  }
  deinit {
    print("class b deinit")
  }
}
