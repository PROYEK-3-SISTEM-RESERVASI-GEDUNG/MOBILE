# TUGAS BESAR PPB - ASTRIA NINGSIH DAN NUR FAJRI

Implementasi prinsip SOLID pada kode program yang kami rancang

## CLASS DIAGRAM SISTEM RESERVASI GEDUNG

![TUBES PPB-SOLID](https://user-images.githubusercontent.com/79297875/175224814-8b3bb287-e86d-4add-9d28-068afae77864.png)

## 1. SINGLE RESPONSIBILITY PRINCIPLES
Setiap class tidak boleh memiliki lebih dari satu tanggung jawab, hanya satu tanggung jawab
- Pelanggaran SRP

![TUBES PPB-SRP 1](https://user-images.githubusercontent.com/79297875/175225306-c6f616c7-745d-4187-8480-11b9bf78a18a.png)

- Implementasi SRP

![TUBES PPB-SRP 2](https://user-images.githubusercontent.com/79297875/175225591-febc5e53-ca8c-42df-8824-8aa1f79306c8.png)

## 2. OPEN CLOSE PRINCIPLES
Open-Close Principle adalah prinsip yang menyatakan bahwa Objek atau entitas itu terbuka untuk ekstensi tetapi tertutup untuk modifikasi
Penambahan class tidak boleh sampai memodifikasi class yang sudah ada (existing)
- Pelanggaran OCP

![WhatsApp Image 2022-06-23 at 13 02 32](https://user-images.githubusercontent.com/79297875/175226517-358b4a83-a46e-4f50-9aff-97be7ba5ec45.jpeg)

- Implementasi OCP

![TUBES PPB-OCP](https://user-images.githubusercontent.com/79297875/175225789-e002e430-3477-4642-ab77-f04edb357474.png)

## 3. LISKOV SUBSTITUSION PRINCIPLES 
Liskov-Substitution adalah prinsip yang menyatakan bahwa ketika terdapat kelas X yang diturunin dari class Y, maka objek yang berasal dari kelas Y harus bisa 
menggantikan dengan objek dari kelas X 
atau Parent class maupun child class harus dapat mewakili sifat/tingkah laku (method) satu sama lain.

![TUBES PPB-LSP](https://user-images.githubusercontent.com/79297875/175226740-8eaefae1-5e95-4a41-86e3-65c429ff3335.png)


## 4. INTERFACE SEGREGATION PRINCIPLES
Class yang merealisasikan (implements) suatu interface, perlu untuk bisa mendeskripsikan semua method abstractnya tanpa terkecuali, atau juga Prinsip yang menyatakan bahwa sebuah objek client tidak boleh dipaksa untuk mengimplementasikan sebuah interface yang tidak ia gunakan. Atau objek client tidak boleh bergantung pada metode yang tidak ia gunakan.

![TUBES PPB-ISP](https://user-images.githubusercontent.com/79297875/175227017-4884b420-57d4-4b17-8ae5-7d597bdde050.png)

## 5. DEPENDENCY INVERSION PRINCIPLES
Modul tingkat tinggi (class yang memiliki relasi dengan class lain) tidak bergantung pada modul tingkat rendah (class yang menjadi referensi class lain), keduanya harus bergantung pada suatu abstraksi (baik itu abstract class atau interface) Abstraksi tidak bergantung pada detail, sedangkan detail harus bergantung pada abstraksi.

![TUBES PPB-DIP](https://user-images.githubusercontent.com/79297875/175227194-52812476-73f1-4e62-aecf-81d16c0c67e0.png)
