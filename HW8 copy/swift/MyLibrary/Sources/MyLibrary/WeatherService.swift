import Alamofire

public protocol WeatherService {
    func getTemperature() async throws -> Int
}

enum BaseUrl {
    case mockServer
    case realServer
}

class WeatherServiceImpl: WeatherService {
    
    
    private let baseUrl: BaseUrl
    private let url: String
    
    public init(baseUrl: BaseUrl? = nil) {
        self.baseUrl = baseUrl ?? .realServer
        if self.baseUrl == .realServer {
            url = "https://api.openweathermap.org/data/2.5/weather?q=corvallis&units=imperial&appid=403f6c660920cfe1d2b4dff8d0d58bf0"
        }
        else {
            url = "https://mockserverweek5.herokuapp.com/data/2.5/weather"
        }
    }
    
    func getTemperature() async throws -> Int {
        
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(url, method: .get).validate(statusCode: 200..<300).responseDecodable(of: Weather.self) { response in
                switch response.result {
                case let .success(weather):
                    let temperature = weather.main.temp
                    let temperatureAsInteger = Int(temperature)
                    continuation.resume(with: .success(temperatureAsInteger))

                case let .failure(error):
                    continuation.resume(with: .failure(error))
                }
            }
        }
    }
}

public struct Weather: Decodable {
    let main: Main

    struct Main: Decodable {
        let temp: Double
    }
}
