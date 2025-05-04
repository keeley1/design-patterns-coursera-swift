import Foundation

class RequestObject {
    let url: URLRequest
    let body: Data
    
    init(url: URLRequest, body: Data) {
        self.url = url
        self.body = body
    }
}
