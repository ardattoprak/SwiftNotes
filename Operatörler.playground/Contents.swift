import UIKit

// Atama Operatörü
// =

let favoriteShoe = "Nike AirmMax"

//Atama operatörü kullanılarak str değişkeninin değeri değiştirildi.
var shoeSize = 41
shoeSize = 42

print(shoeSize)

// Basit Aritmetik
// +, -, *, /

// Matematiksel Operatörlerin Kullanımı
var opponentScore = 3 * 8
var myScore = 100 / 4
// opponentScore ve myScore değişkenleri toplanıp, sonucu başka bir değikene aktarıldı.
var totalScore = opponentScore + myScore

myScore = myScore + 3

let totalDistance = 60.2
var distanceTraveled = 32.67
// Kalan mesafe, toplam mesafeden, katedilen mesafenin farkı hesaplanarak yeni bir değişkene tanımlandı.
var remainingDistance = totalDistance - distanceTraveled

// işlemi ve Tam Sayılar
// x sabiti oluşturulken ilk önce hangi tipte değer alacağı belirtilip ve sonra o tipteki değeri atandı.
let x: Double = 51
// y sabiti oluşturulken ilk önce hangi tipte değer alacağı belirtilip ve sonra o tipteki değeri atandı.
let y: Double = 4
// sabitler üzerinde işlem yapılıp farklı bir sabite atandı.
let z = x / y

// Matematiksel Operatörlerin String'ler ile Kullanımı
// Matematiksel operatörler, veri tipi String olan tanımlamalarda da kullanılabilir.
var ad = "Arda"
var soyad = "Toprak"
var tamAd = ad + " " + soyad

// Compound Operatörleri
var age = 31
age = age + 1 // age += 11
// Yukarıdaki işlem, Compound Assignment kullanılarak aşağıdaki gibi yazılabilir.
age += 1

// +=, -=, *=, /=
var score = 56
score += 3
score -= 5
score *= 2
score /= 2

// Matematiksel Operasyonlarda Sıra
// İşlem Önceliği
//İşlem önceliği matematikteki gibi aynıdır.
var u = 2
var o = 3
var p = 8

// İşlem önceliğinde eğer varsa ilk önce çarpma ve bölme yapılır sonrasında toplama veya çıkartma işlemleri yapılır.
u + o * p
// İşlem önceliğinde eğer varsa ilk önce parantez içi sonra çarpma ve bölme sonrasında toplama veya çıkartma işlemler yapılır.
(u + o) * p

// Numerik Tip Dönüşümleri
let n = 3
let m = 0.1415927
let pi = Double(n) + m

let numberFormater = NumberFormatter()
numberFormater.maximumFractionDigits = 2
print(n)
