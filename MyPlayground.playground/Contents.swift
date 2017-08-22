
enum AccessError: Error{
    case wrongData
    case wrongPassword
    case wrongLogin
}

func login(userName: String, password: String) throws -> String{
    let validUser = "valter"
    let validPassword = "123456"
    let result = "Sucesso"
    
    
    
    
    if userName != validUser && password != validPassword{
        throw AccessError.wrongData
    } else if userName != validUser {
        throw AccessError.wrongLogin
    } else if password != validPassword {
        AccessError.wrongPassword
    }
    
    return result
    
}


do {
    let result = try login(userName: "valter", password: "123456")
} catch {
    switch error as! AccessError {
    case .wrongData:
        print("Usuario e Senha invalidos")
    case .wrongLogin:
        print("Username invalido")
    case .wrongPassword:
        print("Senha errada")
    }
}

//Generics

func swapInts(a: inout Int, b: inout Int){
    let temp = a
    a = b
    b = temp
}

var d = 13
var m = 7

swapInts(a: &d, b: &m)
print(d, m)

func swapValues<T>(a: inout T, b: inout T){
    let temp = a
    a = b
    b = temp
}

var from = "Eu"
var to = "Voce"

swapValues(a: &from, b: &to)
print(from, to)



