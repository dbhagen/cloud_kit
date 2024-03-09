//
//  DefaultHandler.swift
//  flutter_cloud_kit
//
//  Created by Manuel on 07.04.23. Refactored by Daniel on 2024-03-09.
//

class DefaultHandler: CommandHandler {
    
    var COMMAND_NAME: String = ""
    
    func evaluateExecution(command: String) -> Bool {
        return true
    }
    
    func handle(command: String, arguments: Dictionary<String, Any>, result: @escaping FlutterResult) {
        result(FlutterError.init(code: "Error", message: "Not implemented", details: nil))
    }
    
    
}
