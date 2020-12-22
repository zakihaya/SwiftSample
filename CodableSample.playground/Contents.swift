import UIKit

let json = """
{"name":"Taro","age":30,"member_type":"not_member"}
"""

let jsonData = json.data(using: .utf8)!

let decoder = JSONDecoder()
decoder.keyDecodingStrategy = .convertFromSnakeCase

let person = try decoder.decode(Person.self, from: jsonData)
print(person)

