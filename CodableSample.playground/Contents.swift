import UIKit

let json = """
{"name":"Taro","age":30,"member_type":"not_member","favorite_food":{"name":"Apple","average_price":100}}
"""

let jsonData = json.data(using: .utf8)!
print(jsonData)

let decoder = JSONDecoder()
decoder.keyDecodingStrategy = .convertFromSnakeCase

let person = try decoder.decode(Person.self, from: jsonData)
print(person)

print("---------------")
print(person.favoriteFood?.averagePrice)
