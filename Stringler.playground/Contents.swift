import UIKit

// Stringler
// Stringler tanımlanırken "" arasına istenilen değer yazılır.
let merhaba = "Merhaba"
var greeting = "Hello"

// Birden fazla satırdan oluşan bir string tanımlamak isterseniz """ ifadesini kullanabilirsiniz.
let dialog = """
Q: Soru 1
A: Cevap 1
Q: Soru 2
A: Cevap 2
"""
print(dialog)

// Bir String metninin içerisinde "" kullanmak için "\" işaretini kullanmalısınız.
let greeting = "Arda dedi ki: \"Merhaba millet!\""
print(greeting)

// " -> \"
// ' -> \'
// \ -> \\
// Tab -> \t

var myString = "" // Boş String

// String'lerin boş olduğunu anlamak
if myString.isEmpty {
    print("myString değeri boş.")
}

// Tek elemandan oluşan bir String sabitini türünü belirterek Character olarak tanımlayabilirsiniz.
let a = "a"
let b: Character = "b"

// Concatenation and Interpolation
// String'leri '+' sembolü ile birbiri arkasına ekleyebilirsiniz.
let string1 = "Hello"
let string2 = ", World!"
let helloWorld = string1 + string2

var merhabaDunya = "Merhaba"
merhabaDunya += ", Dünya!"

print(merhabaDunya)

let name = "Jack"
let age = 23

// Değişkenleri "\()" ifadesi içerisinde Stringlere ekleyebilirsiniz.
print("\(name) is \(age) years old.")

let greeting2 = name + " is " + String(age) + " years old."
print(greeting2)

let x = 4
let y = 6

print("Eğer x \(x), y de \(y) ise x + y \(x + y) olacaktır.")

// String'leri Eşitlik Durumu ve Kıyaslanması
// "a" == "b" -> false

let month = "January"
let anotherMonth = "January"
let lowercaseMonth = "january"

// Stringleri if yapıları içerisinde kıyasalayabilirsiniz.
if month == anotherMonth {
    print("Aynılar")
}

// Stringler karakterlere duyarlı şekilde kıyaslanırlar.
if month != lowercaseMonth {
    print("Aynı değiller")
}

// lowercased özelliği ile tanımlanan String içerisindeki tüm karakterler, küçük karakterlere dönüştürülebilir.
let ad = "Toprak"
if ad.lowercased() == "tOPrAk".lowercased() {
    print("İsimler birbirine eşit.")
}

// Prefix & Suffix
let merhaba = "Hello, world!"
print(merhaba.hasPrefix("Hello")) // Prefix -> Cümlenin başı
print(merhaba.hasSuffix("world!")) // Suffix -> Cümlenin sonu

// Contains
// Bir Stringin, içerisinde herhangi bir karakter dizisini bulundurup bulundurmadığı, .contains() özelliği kullanılarak kontrol edilebilir.
let taniticiMetin = "Merhaba Eren, benim adım Toprak."
if taniticiMetin.contains("benim adım") {
    print("Kendini tanıtan bir metin...")
}

// String -> Karakterler dizisi
let sehir = "Istanbul"
let count = sehir.count // 8

// Stringlerin uzunluğu .count özelliği ile bulunabilir.
let newPassword = "1234"
if newPassword.count < 8 {
    print("Şifreniz en az 8 karakter içermeli.")
}

let someCharacter: Character = "e"

switch someCharacter {
case "a", "e", "i":
    print("Karakter ünlü.")
default:
    print("Karakter ünlü değil.")
}

// String metnini değiştirmek için aşağıdaki fonksiyonları da kullanabilirsiniz.
// index(before: )
// insert(_:, at:)
// remove(at: )

// Unicode
// Emojiler string olarak tanımlanabilir. Aynı zamanda, değişken ve sabit tanımlamada da kullanılabilir.
let emoji = "🤓"
print(emoji.count)
