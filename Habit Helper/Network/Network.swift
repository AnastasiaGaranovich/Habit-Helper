import Alamofire
import AlamofireObjectMapper

typealias Completion     = (_ error: String?) -> ()
typealias UserCompletion = (_ user: User, _ error: String?) -> ()

class Network {
    
    static let url = "http://195.2.75.79/"
    
    static func getUser(_ completion: @escaping UserCompletion) {
        AF.request(url + "user").responseObject { (response: DataResponse<User, AFError>) in
            switch response.result {
            case let .success(user):
                completion(user, nil)
            case let .failure(error):
                completion(User(), error.localizedDescription)
            }
        }
    }
}
