import UIKit

// Fonksiyon Tanımlaması
// func fonksiyonAdi(parametereler) -> DönüsTipi {
// }

// ayakkabiniBagla()
// kahvaltiHazirla(icerikler: ["yumurta", "pancake",, "portakal suyu"])

// Fonksiyonlar, bir projede kendini tekrar eden işlemler için tanımlanır.
// Örn: yürü, nefes al, kalk, otur vb.

// Fonksiyon kullanımı projenizde kod tekrarını ortadan kaldırır.
// Bir kodunuzu sürekli copy-paste yaparak kullanıyorsanız orada fonksiyona ihtiyacınız vardır.
// Fonksiyonlar, projenin bakımını kolaylaştırır ve okunabilirliği büyük ölçüde arttırır.

// Parametresiz Fonksiyonlar
func displayPi() {
    print("3.1415")
}

func sayHello() {
    print("Merhaba, ben Arda!")
}

// Fonksiyonu Çağırmak (Çalıştırmak)
displayPi()
sayHello()

// Parametreli ve Dönüşsüz Fonksiyonlar
func triple(value: Int) {
    let result = value * 3
    print("Eğer \(value) ile 3 sayısı çarpılırsa, sonuç \(result) olur.")
}

func multiply(firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print("\(firstNumber) X \(secondNumber) = \(result)")
}

// Fonksiyonu Çağırmak (Çalıştırmak)
triple(value: 5)

let result = 56 * 12
multiply(firstNumber: result, secondNumber: 34)

// Argument Labels
func sayHello(firstName: String) {
    print("Hello, \(firstName)")
}

sayHello(firstName: "Mert")

func sayHello(to firstName: String) {
    print("Hello, \(firstName)")
}

sayHello(to: "Berkin")

func sayHello(to person: String, and anotherPerson: String) {
    print("Hello, \(person) and \(anotherPerson)")
}

sayHello(to: "Mustafa", and: "Barkın")

func sayHello(_ person: String, _ anotherPerson: String) {
    print("Hello, \(person) and \(anotherPerson)")
}

sayHello("Elfin", "Rüveyda")

// Varsayılan Parametre Değerleri
func display(teamName: String, score: Int = 0) {
    print("\(teamName): \(score)")
}

func yemekHazirla(yiyecek: String, icecek: String = "Su") {
    print("Bu akşam yemekte \(yiyecek) var. Yanında \(icecek) içeceğim.")
}

display(teamName: "Beşiktaş")
display(teamName: "Fenerbahçe", score: 1)

yemekHazirla(yiyecek: "Brokoli")
yemekHazirla(yiyecek: "Hamburger", icecek: "Kola")


// Dönüş Tipleri
func carpma(ilkSayi: Int, ikinciSayi: Int) -> Int {
    return ilkSayi * ikinciSayi
}


let sonuc = carpma(ilkSayi: 12, ikinciSayi: 56)
print("Çarpma işleminin sonucu: \(sonuc)")

print("2 x 3 = \(carpma(ilkSayi: 2, ikinciSayi: 3))")

// Parametrenin önüne "_" işaretini koyarsanız, fonksiyonu çağırdığınız zaman parametre adını görmezsiniz.
func isEmail(_ email: String) -> Bool {
    return email.contains("@")
}

func fullName(firstName: String, lastName: String) -> String {
    return "\(firstName) \(lastName)"
}

// Parametreye varsayılan bir değer atayabilirsiniz. Böylece fonksiyonu çağırdığınız zaman o parametreye illa bir değer vermek zorunda kalmazsınız.
func isValidPassword(password: String, minimumCharacters: Int = 8) -> Bool {
    return password.count >= minimumCharacters
}

isEmail("arda@toprak.com")
let myFullName = fullName(firstName: "Barkın", lastName: "Laçin")

isValidPassword(password: "1234567890", minimumCharacters: 10)
