//
//  PostRemoteDataSource.swift
//  data
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import domain


public protocol PostRemoteDataSourceInterface {
    
    init(urlString: String)
    
    func getPosts(handler: @escaping ([PostModel]) -> ())
}


public class PostRemoteDataSource: PostRemoteDataSourceInterface {
    
    let urlString: String
    
    required public init(urlString: String) {
        self.urlString = urlString
    }
    
    public func getPosts(handler: @escaping ([PostModel]) -> ()) {
        
        guard let url = URL(string: urlString) else {
            return handler([])
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, urlResponse, error) in
            
            guard let data = data else {
                return handler([])
            }
            
            do {
                let decoder = JSONDecoder()
                let postModels = try decoder.decode([PostModel].self, from: data)
                handler(postModels)
            }
            catch {
                return handler([])
            }
            
            
        }
        task.resume()
        
    }
    
}
