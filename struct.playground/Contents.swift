import Foundation

// 1.0 Struct Nedir?
// Swift'te sıklıkla kullanılan temel veri tipleri (String, Int, Double, Bool)
// bir isim, yaş, kilo veya gece lambanızın durumunu ifade etmek için yeterli olabilir;

var name = "Arda"
var age = 21
var weight = 85.4
var isLightOn = true

// Ancak bir iPhone uygulaması, birden fazla temel veri tipinin bir araya gelmesi ile
// oluşan daha kapsamlı, özel ve kullanışlı veri tipleri de içerir;

struct User {
    
    var firstName: String
    var lastName: String
    var weight: Double
    var age: Int
    var isLoggedIn: Bool
}

// Kendi veri tipinizden nesneler oluşturmak;
let user1 = User(firstName: "Arda", lastName: "Toprak", weight: 85.4, age: 21, isLoggedIn: true)

// 1.1 Bir Veri Tipinde Neler Olabilir?
// 1 - Değişkenler ve sabitler (Property)
// 2 - Fonksiyonlar (Method)
// 2 - Initializers


// --------------------------------------------------
// 2.0 Struct | Fonksiyonlar
// Struct'lar, veri tipinin ihtiyacına bağlı olarak bir veya birden fazla fonksiyona sahip olabilirler.
// NOT: Struct içerisinde tanımlanan fonksiyonlara "method" adı verilir.

// ÖRNEK 1
struct Human {
    
    // MARK: - Properties
    var name: String
    
    // MARK: - Methods
    func sayHello() {
        print("Merhaba! Benim adım \(name).")
    }
}

// "Human" veri tipinden bir nesne oluşturmak;
let human1 = Human(name: "Arda")

// "Human" veri tipinde tanımlanan bir fonksiyonun kullanımı;
human1.sayHello()

// ÖRNEK: 2
struct Size {
    
    // MARK: - Properties
    var width: Double
    var height: Double
    
    // MARK: - Methods
    
    /// Genişlik ve yükseklik bilgilerini kullanarak alan hesaplar.
    func area() -> Double {
        return width * height
    }
}

let size1 = Size(width: 12.56, height: 2.78)

// Veri tipinde tanımlı "area()" fonksiyonunun kullanımı;
let area1 = size1.area()

// ÖRNEK 3
struct Price {
    
    // MARK: - Types
    enum Currency: String {
        case dollar = "$"
        case turkishLira = "₺"
        case euro = "€"
    }
    
    // MARK: - Properties
    var value: Double
    var currency: Currency
    
    // MARK: - Methods
    /// Para biriminin sembolu ve miktarını bir araya getirir. $ + 13.56  = $13.56
    func priceTag() -> String {
        return currency.rawValue + String(value)
    }
}

// "Price" veri tipini kullanarak bir nesne oluşturmak;
let macBookPrice = Price(value: 5999.0, currency: .turkishLira)

// "Price" modelinde tanımlı bir fonksiyonun kullanımı;
print(macBookPrice.priceTag())

// ÖRNEK: 4
struct Car {
    
    // MARK: - Properties
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    // MARK: - Methods
    func startEngine() {
        print("Üreticisi: \(make), modeli: \(model), yılı: \(year) ve maksimum hızı: \(topSpeed) olan arabanın motoru çalıştırıldı.")
    }
    
    func drive() {
        print("Üreticisi: \(make), modeli: \(model), yılı: \(year) ve maksimum hızı: \(topSpeed) olan araba hareket halinde.")
    }
    
    func park() {
        print("Üreticisi: \(make), modeli: \(model), yılı: \(year) ve maksimum hızı: \(topSpeed) olan araba park edildi.")
    }
}

// "Car" veri tipinden nesnelerin oluşturulması;
let car1 = Car(make: "Honda", model: "Civic", year: 2010, topSpeed: 180)
let car2 = Car(make: "Ford", model: "Mustang", year: 2020, topSpeed: 350)

// Fonksiyonların kullanımı;
car1.startEngine()
car1.drive()
car2.park()


// --------------------------------------------------
// Initializers 3.0 | Kullanım
// Herhangi bir veri tipinden (Int, String, Car...) nesneler oluşturmek için kullanılan bir çeşit fonksiyondur.

// Swift'te en çok kullanılan bazı veri tiplerinin Initializer'ları;

// Kullanım 1: .init()
var string = String.init() // Varsayılan başlangıç değeri: ""
var integer = Int.init() // Varsayılan başlangıç değeri: 0
var bool = Bool.init() // Varsayılan başlangıç değeri: false

// Kullanım 2: ()
var string2 = String() // ""
var integer2 = Int() // 0
var bool2 = Bool() // false


// --------------------------------------------------
// Initializers 3.1 | Özel Veri Tiplerinde Kullanım
// Bir Struct oluştururken içerisine özellikler(property) tanımlarız. Kendi özel veri tipinizi oluşturmanız ile Memberwise
// adı verilen ve tanımladığınız tüm özellikleri içeren bir Initializer oluşturulur.

struct MapLocation {
    
    var latitude: Double
    var longitute: Double
}

// Memberwise Initializer kullanımı
let myLocation = MapLocation(latitude: 2.865, longitute: 32.691)


// --------------------------------------------------
// Initializers 3.2 | Varsayılan Değerler
// Struct'ınızda bulunan özellikler, bir başlangıç değerine sahip olabilirler.
// Başlangıç değerine sahip olan özellikler, Memberwise Initializer'da yer almayabilir.

// ÖRNEK: Kilometre Sayacı
struct Odometer {
    var count: Int = 0
}

// "count" özelliğinin başlangıç değeri 0 olduğundan Initializer'da yer almayabilir.
let odometer1 = Odometer()
let odometer2 = Odometer(count: 1)

print(odometer1.count)
print(odometer2.count)

// NOT: Varsayılan değerler, her durumda tercih edilmemelidir.
// Örneğin bir insan nesnesi oluşturmak isterseniz, ad veya soyad bilgilerinin başlangıç değerine sahip olmamaları gerekir.
struct Person {
    var name: String = ""
}

// Hatalı bir varsayılan değer kullanımı. Bu, adı "" olan bir insan oluşturmanıza neden olabilir!
let person1 = Person()


// --------------------------------------------------
// Initializers 3.3 | Özelleştirilmiş Initializer Kavramı
// Bir Struct'ın Memberwise Initializer'ı olabileceği gibi, ihtiyaç halinde kendi Initializer'ınızı da oluşturabilirsiniz.

// ÖRNEK
// Sıcaklık belirtmek için oluşturulmuş "Temperature" veri tipi, sahip olduğu özel Initializer'lar
// sayesinde çesitli ölçü birimleri kullanılarak nesneler oluşturulabiliyor;
struct Temperature {
    
    // MARK: - Properties
    var celcius: Double
    
    // MARK: Initializers
    init(celcius: Double) {
        self.celcius = celcius
    }
    
    init(fahrenheit: Double) {
        celcius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        celcius = kelvin - 273.15
    }
}

// Celcius Initializer'ının kullanımı
let temperature1 = Temperature(celcius: 32)
print(temperature1)

// Fahrenheit Initializer'ının kullanımı
let temperature2 = Temperature(fahrenheit: 87)
print(temperature2)


// Kelvin Initializer'ının kullanımı
let temperature3 = Temperature(kelvin: 273.15)
print(temperature3)


// --------------------------------------------------
// Property Observers
// Struct içerisinde tanımlanan property'ler, Property Observer adındaki kod blokları
// sayesinde değerleri değişmek üzereyken ve(veya) değiştikten sonra takip edilebilirler.

// İki çeşit observer vardır. Bunlar;
// 1 - WillSet: Bir property'nin değeri değişmek üzereyken çalışır. Var olan değer henüz değişmeden yeni değeri öğrenmek için kullanılır.
// 2 - DidSet: Bir property'nin değeri değiştikten hemen sonra çalışır. Bir önceki değere ulaşılabilir.

struct StepCounter {
    
    var stepCount: Int = 0 {
        willSet {
            // newValue -> Yeni gelecek olan değeri ifade eder.
            print("adimSayisi, birazdan \(newValue) olacak.")
        }
        didSet {
            // stepCounter: Yeni değer
            // oldValue -> Yeni değerden bir önceki değer.
            if stepCount > oldValue {
                // Yeni değer öncekinden büyük anlamına gelir.
                // Bir diğer deyişle adım atılmış yani ileri yönde hareket edilmiştir.
                print("\(stepCount - oldValue) adım atıldı!")
            }
        }
    }
}

var stepCount = StepCounter()

stepCount.stepCount = 3
stepCount.stepCount = 178
