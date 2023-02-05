import Foundation

extension Date {
    
    static func format(dateString: String) -> String? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: dateString)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        return dateFormatter.string(from: date!)
    }
    
    func travelToFuture(years: Int) -> String? {
        
        let calendar = Calendar.current
        let currentDate = Date()
        var futureDate = calendar.date(byAdding: .year, value: years, to: currentDate)!
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: futureDate)
    }
}
