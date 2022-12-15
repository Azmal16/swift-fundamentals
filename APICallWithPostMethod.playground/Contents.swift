///This playground demonstrates the API calling using POST method with a request body along with a request header
///Test Edit
import Foundation

//This structure will be used as both request and response body(Payload) of this API call
struct ToDoResponseModel: Codable {
    var userId: Int
    var id: Int?
    var title: String
    var completed: Bool
}

//Preparing request url
let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
guard let requestUrl = url else { fatalError() }

var request = URLRequest(url: requestUrl)
request.httpMethod = "POST"

// Set HTTP Request Header
request.setValue("application/json", forHTTPHeaderField: "Accept")
request.setValue("application/json", forHTTPHeaderField: "Content-Type")

//encode the above Swift structure into JSON Data and set it as Request Body.
let newTodoItem = ToDoResponseModel(userId: 300, title: "Urgent task 2", completed: true)
let jsonData = try JSONEncoder().encode(newTodoItem)

request.httpBody = jsonData

    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        if let error = error {
            print("Error took place \(error)")
            return
        }
        guard let data = data else {return}

        do{
            //Decode the response into todoItemModel object
            let todoItemModel = try JSONDecoder().decode(ToDoResponseModel.self, from: data)
            print("Response data:\n \(todoItemModel)")
            print("todoItemModel Title: \(todoItemModel.title)")
            print("todoItemModel id: \(todoItemModel.id ?? 0)")
        }catch let jsonErr{
            print(jsonErr)
       }

 
}
task.resume()
