

import Foundation


protocol APIServiceProtocol {
    func fetchBreeds(url: URL?, completion: @escaping(Result<[Breed], APIError>) -> Void)
    //func fetchBreeds(url: URL?, completion: @escaping(Result<[T], APIError>) -> Void)

}
