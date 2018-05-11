//
//  LibraryAPI.swift
//  RWBlueLibrary
//
//  Created by splab-mac27 on 2018/05/11.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import Foundation

final class LibraryAPI {
  
  //gives other objects access to the singleton
  static let shared = LibraryAPI()
  
  //prevents creating new instances from outside
  private init(){
    
  }
  
}
