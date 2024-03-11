import UIKit

// Mantıksal Operatörler
// Kontrol akışları oluştururken, kontrol edilmek istenen kıyaslamayı denetlemek için mantıksal operatörler kullanılır.
/// == -> Eşit mi?
/// != -> Eşit Değil mi?
/// > -> Büyük mü?
/// >= -> Büyük veya Eşit mi?
/// < -> Küçük mü?
/// <= -> Küçük veya Eşit mi?
/// && -> VE
/// || -> VEYA
/// ! -> Değil, Tersi

// If Yapısı
// 'Eğer' kelimesi yerine geçen if yapısı, sadece kendisine verilen kıyaslamanın geçerli olduğu durumlarda çalışır.
let kaynamaNoktasi = 100
var suSicakligi = 75

// If yapısının içerisindeki kodun çalışması için aşağıdaki kod satırını yorum olmaktan çıkarın.
/// suSicakligi = 102

if suSicakligi >= kaynamaNoktasi {
    /// Eğer doğru ise burası çalışacak.
    print("Su kaynıyor!")
}

// Else Yapısı
// If yapısına verilen kıyaslamanın, geçerli olmadığı tüm durumlarda çalışır.

// Else yapısının geçerli olması için, suSicakligi değişkeninin değerini kaynamaNoktasi tanimlamasinin değerinden küçük bir değere eşitleyin.
/// suSicakligi = 80
if suSicakligi >= kaynamaNoktasi {
    print("Su kaynıyor!")
}else {
    print("Su henüz kaynamıyor!")
}

// Bool tanımlamaları, if yapılarının içerisinde kıyaslama yapmak için kullanılabilir.
let isiklarAcikMi = true

/// Dakika cinsinden
let acikKalmaSuresi = 12

// && (AND) Operatörü
// Tek bir if yapısı içerisinde, birden fazla durumu denetlemek için kullanılır. Denetlenen tüm durumların doğru olması halinde if yapısı çalışır.
/// && (AND) -> true ve true = true (TEK YOLU)
/// && (AND) -> true ve false = false

/// Işıklar açıksa ve açık kalma süresi 5 dakikanın üzerindeyse...
if isiklarAcikMi && acikKalmaSuresi >= 5 {
    print("Işıkları kapatmalısın.")
}else {
    print("Işıklar 5 dakikadan kısa bir süredir açık veya isiklar kapalı.")
}

// Else if Yapısı
// If yapısına verilen kıyaslamanın geçerli olmadığı durumlarda, else yapısı çalışmadan önce yeni bir kontrol eklemek için kullanılır.
var yarisiBitirmeSirasi = 1

/// Eğer 1.Bitirdiyseniz if yapısı çalışır.
if yarisiBitirmeSirasi == 1 {
    print("Tebrikler, yarışı birincilikle bitirdiniz. Altın madalya sizin!")
}else if yarisiBitirmeSirasi == 2 {
    /// Eğer 2.Bitirdiyseniz else if yapısı çalışır.
    print("İkinci oldunuz. Gümüş madalya sizin!")
}else {
    /// 3 ve sonrasındaki tüm sıralar için else çalışır.
    print("Birinci veya ikinci olamadınız :(")
}

// Kıyaslama sonuçlarını sabitler ile tanımlamak
let number = 1000
// isSmallNumber sabiti, (number < 10) kıyaslamasının sonucuna göre bool veri tipinden bir sonuca sahip olacak.
let isSmallNumber = number < 10

let hizLimiti = 120
let benimHizim = 89
let siniriAstimMi = benimHizim > hizLimiti

var karYagiyorMu = false

if karYagiyorMu {
    
}else {
    print("Kar yağmıyor!")
}

// ! işareti ile değişkenin değerinin tersini kontrol edebilirsiniz.
// Örneğin !karYagiyorMu ifadesi 'Eğer kar yağmıyorsa' kalıbı ile ifade edilebilir.
if !karYagiyorMu {
    print("Kar yağmıyor!")
}

// And ile Aralık Tanımlamak
let sicaklik = 23

/// Sıcaklık, 20 dereceden büyükeşit mi ve 25 dereceden küçükeşit mi?
/// [20, 25]
if sicaklik >= 20 && sicaklik <= 25 {
    print("Sıcaklık güzel.")
}else if sicaklik < 20 {
    print("Hava soğuk")
}else {
    print("Hava inanılmaz sıcak!")
}

// Switch Yapıları
// Herhangi bir tanımlamanın değerini, birden fazla durum için kontrol edildiği durumlarda kullanılır.
let tekerlekSayisi = 2

switch tekerlekSayisi {
case 1:
    print("Tek teker")
case 2:
    print("İki tekerlekli bisiklet")
case 3:
    print("Üç tekerlek...")
case 4:
    print("Dört tekerlek...")
default:
    print("Fazla tekerlek :)")
}

// Bir case satırı içerisinde birden fazla geçerli durum eklenebilir.
let karakter = "b"
switch karakter {
case "a", "e", "i", "ö", "ü":
    print("Karakter sesli.")
default:
    print("Karakter sessiz.")
}

/// Km cinsinden
let mesafe = 120

/// Aralık Tanımlamak
/// x...y -> x dahil ve y dahil
/// x..<y -> x dahil am y dahil değil

switch mesafe {
case 0...10:
    print("Zorlasan yürürsün")
    
case 11...30:
    print("Bisiklet mesafesi")
    
case 31...100:
    print("Araba mesafesi")
    
default:
    print("Bu kadar uzaklaşmak istediğinden emin misin? :)")
}
