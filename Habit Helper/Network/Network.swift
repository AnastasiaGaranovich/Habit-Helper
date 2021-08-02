import Alamofire
import AlamofireObjectMapper

typealias Completion     = (_ error: String?) -> ()
typealias UserCompletion = (_ user: User, _ error: String?) -> ()
typealias HabitsCompletion = (_ habits: [Habit], _ error: String?) -> ()

class Network {
    
    static let url = "http://127.0.0.1:8000/"
    
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
    
    static func getHabits(_ completion: @escaping HabitsCompletion) {
        AF.request(url + "habits").responseArray { (response: DataResponse<[Habit], AFError>) in
            switch response.result {
            case let .success(habits):
                completion(habits, nil)
            case let .failure(error):
                completion([], error.localizedDescription)
            }
        }
    }
}
