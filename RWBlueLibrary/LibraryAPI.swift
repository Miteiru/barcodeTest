//
//  LibraryAPI.swift
//  RWBlueLibrary
//
//  Created by splab-mac27 on 2018/05/11.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//
//Facade implementation
import Foundation

final class LibraryAPI {
  private let persistencyManager = PersistancyManager()
  private let httpClient = HTTPClient()
  private let isOnline = false
  
  
  //gives other objects access to the singleton
  static let shared = LibraryAPI()
  
  //prevents creating new instances from outside
  private init(){
    
  }
  
}
