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
  
  func getAlbums() -> [Album] {
    return persistencyManager.getAlbums()
  }
  
  func addAlbum(_ album: Album, at index: Int) {
    persistencyManager.addAlbum(album, at: index)
  
    if isOnline {
      httpClient.postRequest("/api/addAlbum", body: album.description)
    }
    
  }
  
  func deleteAlbum(at index: Int){
    persistencyManager.deleteAlbum(at: index)
    
    if isOnline {
      httpClient.postRequest("/api/deleteAlbum", body: "\(index)")
    }
  }
  
}
