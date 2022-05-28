

import Foundation

class Request {
    
    let token = "BQAUFBgT-2OyzRWQyoO6VidV3WxMe6tQTDfZhMiKf5byBrKdWrCoRvBde2Qx2CwTItqZuOVewKZWWDNZC5Q8S6ypM0NJVCICWLpJ9aiS8Lj0As64fgHFvJJRNawRu_X2owufVbeofgaqKNgavqaW-qgt3nkf9BkHjn0lM1yzkhY5YkawcA"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    //recordar que si un type tiene el ? es porque puede ser nil
    //la funcion retorna un Data o nil
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
}
