//
//  ToDoItem.swift
//  book
//
//  Created by MacBook on 5/15/21.
//

import Foundation

class ToDoItem: Decodable{
    let ISBN : String
    let author : String
    let desc : String
    let id : Int
    let price : Double
    let title : String

    init(ISBN: String, author: String, desc: String, id: Int, price: Double, title: String) {
        
        self.ISBN = ISBN
        self.author = author
        self.desc = desc
        self.id = id
        self.price = price
        self.title = title
    }
}
