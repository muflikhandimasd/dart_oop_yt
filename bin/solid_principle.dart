void main() {
  //// S-ingle Responsibility Principle
  //// O-pen / Closed Principle
  //// L-iskov Subtitution Principle
  //// I-nterface Segregation Principle
  //// D-ependency Inversion Principle

  /**S
   * Kita disarankan tidak membuat super class = class yang bisa melakukan apapun
   * Jadi, class hanya memiliki responsibility yang khusus
   */

  /**O
   *Namanya sebuah class, closed untuk modification. Open untuk extension.
   */

  /**L
   * Setiap class yg merupakan turunan dari class parentnya, itu harus memiliki sifat atau perilaku yang sama dengan parentnya.
   */

  /**I
   * Ketika membuat interface, sebaiknya specific untuk tujuan tertentu, agar ga terpakai sesuai yang dibutuhkan saja
   */

  /**D
   * High level module itu tidak boleh bergantung pada low level module. 
   * Dua duanya harus bergantung kepada abstraction
   * Abstraction tidak boleh bergantung pada detil, detil lah yang harus bergantung pada abstraction
   * 
   * Ketika kita membuat sistem. Ada yg global ada yg detilnya.
   * Yang global itu yang ga mudah berubah
   * Yang detil itu mudah berubah
   * 
   * Contoh high level module : menyimpan data user
   * 
   * Contoh low level : Tempat nyimpan data misal di firebase, besoknya ingin disimpan di server sendiri  
   * 
   * Abstraction : Kontrak
   */
}
