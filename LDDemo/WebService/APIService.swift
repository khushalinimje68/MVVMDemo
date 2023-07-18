//
//  APIService.swift
//  LDDemo
//
//  Created by Khushali Nimje on 18/07/23.
//

import Foundation

final class APIService :  NSObject {
    
    static let shared = APIService()
    
    private let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
        
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                do {
                    let jsonDecoder = JSONDecoder()
                    let empData = try jsonDecoder.decode(Employees.self, from: data)
                    completion(empData)
                }
                catch let error {
                    print(error.localizedDescription)
                }
            }
            
        }.resume()
    }
    
}
