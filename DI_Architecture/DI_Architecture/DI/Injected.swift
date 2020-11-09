//
//  Injected.swift
//  DI_Architecture
//
//  Created by Stat.So on 2020/11/09.
//

@propertyWrapper
struct Injected<Dependency> {
  
  var dependency: Dependency!
  
  var wrappedValue: Dependency {
    mutating get {
      if dependency == nil {
        let copy: Dependency = AppRepository.shared.resolve()
        self.dependency = copy
      }
      return dependency
    } mutating set {
      dependency = newValue
    }
  }
  
}
