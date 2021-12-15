//
//  JSONUtils.swift
//  iOSBible


import Foundation


// MARK: - Helper methods for reading & parsing the JSON file.

/// Method to read the local json file.
/// - Parameter name: file name
/// - Returns: return file contents in Data format.
func readLocalJSONFile(forName name: String) -> Data? {
    do {
        if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
            let fileUrl = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: fileUrl)
            return data
        }
    } catch {
        print("error: \(error)")
    }
    return nil
}


/// - Parameter jsonData: jsonData object
func parse(json: Data) -> koreanBible? {
    do {
        let decodedData = try JSONDecoder().decode(koreanBible.self, from: json)
        return decodedData
    } catch {
        print("error: \(error)")
    }
    return nil
}
