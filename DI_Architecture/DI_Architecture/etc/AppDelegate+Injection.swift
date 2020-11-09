//
//  AppDelegate+Injection.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

import Resolver

extension Resolver: ResolverRegistering {
  static let session = ResolverScopeCache()
  public static func registerAllServices() {
    register { A() }
      .scope(unique)
    register { B() }
      .scope(unique)
    register { ViewController2() }
      .scope(unique)
  }
}
