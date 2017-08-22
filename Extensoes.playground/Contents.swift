import Foundation



//Extensoes e Protocolos
var name = "Valter Abranches Martins"

extension String {
    var count: Int{
        return self.characters.count
    }

    func initials() -> String {
        return self.components(separatedBy: " ")
            .map({
            String($0.characters.first!)
        }).joined().uppercased()
    }
}

print("O meu nome tem \(name.count) letras")
print("As iniciais do meu nome são \(name.initials())")


protocol ACCapable {
    var hasAC: Bool {get set}
    func turnAC(on: Bool)
}

