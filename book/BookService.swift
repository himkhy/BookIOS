//
//  BookService.swift
//  book
//
//  Created by MacBook on 5/15/21.
//

import Foundation

extension BookService {
    func fetchData() {
        let urlSession = URLSession.shared
        guard  let url = URL(string: "https://mockend.com/vaifatplanb/ios-course/books") else {
                return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        urlSession.dataTask(with: request, completionHandler:   {(data, response, error) in
            if error != nil{
                print(error!.localizedDescription)
                return
            }
            guard let data = data else {return}
            do{
                let decodedData = try JSONEncoder().encode([ToDoItem].self, from: data)
                self.items = decodrData
            }catch{
                print(error.localizedDescription)
                return
            }
        }).resume()
    }
}
