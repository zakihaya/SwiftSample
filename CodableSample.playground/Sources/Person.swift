import Foundation

public struct Person: Codable {
    
    // enumのvalueは
    // decoder.keyDecodingStrategy = .convertFromSnakeCase
    // を指定してもSnake->Camel変換してくれないので、自分で設定する必要がある
    enum MemberType: String, Codable {
        case member
        case notMember = "not_member"
    }
    
    var name: String?
    var age: Int?
    var memberType: MemberType?
    var phoneNumber: String?
    
}
