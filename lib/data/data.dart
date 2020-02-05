class Berita  {
  final String id;
  final String judul;
  final String waktu;
  final String gambar;
  final String desk;
  final String tipe;
  final String logo;
  const Berita({this.judul,this.waktu,this.gambar,this.desk,this.id,this.tipe,this.logo});
  

}


 List<Berita> daftar = [
  const Berita( id: "1",
    judul: "KECELAKAAN APOTEK SENOPATI, LAGI",
    tipe: "Lalu Lintas",
    waktu: "5 Jam yang lalu", 
    gambar: "assets/images/kecelakaan1.jpeg",
    desk: "Mobil BMW Hitam BerNoPol B 610 MAG Menerobos Apotek Senopati, Kejadian Ini Bukan Terjadi Pertama, Namun Kejadian Ini Merupakan Kejadian Yang Ke-2 Kali Setelah Ditabrak 2 Bulan Yang Lalu, Polisi Masih Melakukan Penyidikan"),
  const Berita(id: "2",
    judul: "Artis Sule Menghibur Masyarakat Bali",
    tipe: "Artis",
    waktu: "3 Jam yang lalu", 
    gambar: "assets/images/thumb1.jpg",
    desk: "Pelawak Ayah Dari "),
  const Berita( id: "3",
    judul: "Permintaan Nanas Muda Meningkat",
    tipe: "Kuliner",
    waktu: "3 Jam yang lalu", 
    gambar: "assets/images/namu.png",
    desk: "Nanas Muda Merupakan Buah Khas Yang Memiliki Jutaan Manfaat"),
  const Berita( id: "4",
    judul: "Kemacetan Arus Tahun Baru",
    tipe: "Lalu Lintas",
    waktu:"1 Jam yang lalu", 
    gambar: "assets/images/macet1.jpg",
    desk: "Tahun Baru Tidak Lengkap Rasanya Apabila Tidak Berkumpul Dengan Sanak Saudara Dan Juga Keluarga Jauh, Namun Dalam Kenyataannya Jumlah Pengemudi Mobil Meningkat Tajam Sejak 3 Hari Sebelum Tahun Baru"),
  const Berita( id: "5",
    judul: "Bahaya Nyamuk DBD Dimusim Penghujan",
    tipe: "Kesehatan",
    waktu: "2 Jam yang lalu",
    gambar: "assets/images/nyamuk1.jpg",
    desk: "Datangnya Musim Hujam Mungkin Merupakan Hidayah Dan Rezeki Bagi Seluruh Manusia, Namun Perlu di ketahui Bahwa Selain membawa berkah hujan juga dapat menyebabkan naiknya jumlah jentih nyamuk, terutama jenis aedes aegepty atau nyamuk DBD,“Untuk terbebas dari penularan perlu adanya pencegahan, jika berharap kepada pemerintah saja tidak cukup.\nSebaliknya perlu adanya kesadaran langsung dari masyarakat,” jelasnya.Disamping itu kata Beta, upaya pencegahan bisa dengan menjalankan 3M yaitu menguras bak mandi, menutup wadah atau penampungan air kemudian mengubur barang-barang bekas yang terdapat di lingkungan tempat tinggal.Dampak DBD ini sangat kompleks menyangkut kesemua aspek, sehingga memerlukan penanganan multi sektor.\nBaik itu peran pemerintah, swasta, serta masyarakat.\nKarena hingga sampai saat ini belum ada vaksin dan pengobatan yang spesifik untuk dapat mengatasi penyakit tersebut,” ungkapnya.Menurut Beta, perlu adanya peningkatan pencegahan demi mengurangi kasus DBD di Kota Palangka Raya.\nSebelumnya Pemerintah Kota (Pemko) beserta Dinas Kesehatan (Dinkes) menjalankan program juru pemantau jentik (Jumantik) atau gerakan satu rumah satu jumantikyang dibuka oleh Wali Kota Palangka Raya Fairin diwakili oleh Sekda Kota Palangka Raya Hera Nugrahayu tahun lalu.\nPolitikus Partai PAN ini berharap, agar masyarakat selalu meningkatkan kewaspadaan sejak dini sehingga kasus penderita DBD tidak bertambah, apa lagi sampai menambah angka kematian.\n Namun ke semua itukembali kepada kesadaran masyarakat, pemerintah hanya bisa memberikan imbauan"),
  const Berita(id: "6",
    judul: "Apa Itu CoronaVirus ?",
    tipe: "kesehatan",
    waktu: "14 Menit Yang lalu",
    gambar: "assets/images/virus.jpg",
    desk: "corona (coronaviruses) adalah keluarga besar virus, termasuk virus yang bikin batuk pilek biasa (selesma alias common cold, secara salah kaprah di sini disebut juga sebagai flu biasa). Isinya macam-macam virus yang mirip-mirip, sederhananya.\nDari keluarga besar virus itu, sebagian di antaranya hanya bisa bikin sakit binatang, tetapi sebagian yang lain bisa juga menginfeksi manusia dengan level kesakitan yang beragam.\nBinatang yang sebelumnya dikenal rentan dengan virus ini adalah unta, kucing, dan kelelawar. Kasus penularan infeksi virus corona dari hewan ke manusia pun sebagian besar tidak berlanjut ke fase penularan dari manusia ke manusia."),
  const Berita(id:"7",
    judul: "Runtuhnya Sunda Empire",
    tipe: "Trend",
    waktu: "2 Jam Yang Lalu",
    gambar: "assets/images/mampus.jpeg",
    desk: """Kekaisaran Sunda Empire runtuh. Polisi menetapkan tiga orang petinggi Sunda Empire sebagai tersangka gegara menyiarkan berita bohong.\nKetiga petinggi itu yakni Nasri Banks selaku Perdana Menteri atau Grand Prime Minister, Rd Ratna Ningrum selaku kaisar atau ibunda ratu agung dan Raden Rangga Sasana atau HRH Rangga sebagai Sekretaris Jenderal (Sekjen) Sunda Empire.\nPenetapan tersangka itu dilakukan setelah penyidik Subdit I Direktorat Reserse Kriminal Umum Polda Jabar memeriksa Nasri dan Ratna di Mapolda Jabar pada Selasa (28/1) kemarin. Sementara Rangga, dia diamankan penyidik di kawasan Tambun, Bekasi. Usai ditangkap, Rangga digiring penyidik ke Mapolda Jabar malam harinya.\n"Kita mentapkan sebagai tersangka sadara NB atau Nasri Banks selaku tokoh Sunda Empire atau perdana menteri dalam jabat weannya dan Rd Ratna Ningrum sebagai dudukannya kaisar," ucap Kabid Humas Polda Jabar Kombes Saptono Erlangga Waskitoroso di Mapolda Jabar.\n"Kemudian ada satu lagi yang sudah dilakukan penangkapan tadi pukul 15.00 WIB di Tambun, Bekasi Ki Ageng Rangga," kata Erlangga menambahkan.\,Menurut Erlangga, ketiganya disebut telah menyiarkan berita bohong. Mereka dikenakan Pasal 14 dan atau 15 Undang-undang nomor 1 tahun 1946 tentang penyiaran berita bohong yang menimbulkan keonaran.\nErlangga mengatakan penetapan tersangka terhadap ketiganya ini dilakukan setelah penyidik melakukan serangkaian pemeriksaan. Saat masih tahapan penyelidikan, polisi memeriksa sejumlah saksi mulai dari budayawan, sejarawan hingga pengelola Isola yang terletak di kampus Universitas Pendidikan Indonesia (UPI). Sunda Empire sendiri memang kerap menggunakan Isola sebagai tempat berkumpul.\n"Dari seluruh keterangan, penyidik telah melakukan gelar perkara dari hasil keterangan ahli dari alat bukti penyidik berkesimpulan memenuhi unsur pidana seusai Pasal 14 dan atau Pasal 15," kata Erlangga.\nDirektur Reserse Kriminal Umum Polda Jabar Kombes Hendra Suhartiyono menambahkan klaim-klaim Sunda Empire yang mengaku menguasai tatanan bumi tidak benar. Hendra mencontohkan beberapa klaim seperti yang diutarakan Rangga Sasana. Salah satunya soal pendirian PBB dan Nato dilakukan di Isola komplek Universitas Pendidikan Indonesia (UPI).\n"Dalam beberapa hal lain lagi, pengakuan Sunda Empire memiliki dana sebesar 500 juta USD. Penyidik sangkal tidak benar, apalagi Nato, Pentagon, Bank Dunia, PBB berdiri di Isola," tutur Hendra.\nHendra menyatakan pihaknya masih mendalami motif dari kemunculan Sunda Empire yang mengklaim menguasai tatanan dunia itu. Namun yang pasti, kata dia, petinggi Sunda Empire menjanjikan untuk mensejahterakan masyarakat dunia.\n"Motifnya masih didalami. Untuk sementara, dia memastikan bahwa Sunda Empire ini bisa mensejahterakan rakyat dunia," kata Hendra.\nDisinggung soal eksistensi kelompok Sunda Empire saat ini, pihaknya belum mengetahui pasti kelompok ini bubar atau tidak. Namun yang pasti, polisi sudah mengamankan petinggi Sunda Empire agar klaim-klaim selama ini tak berkembang luas dan mengganggu masyarakat.\n"Bicara bubar tidaknya belum tahu pasti, yang jelas tanggung jawab polisi sebagai penegak hukum tidak membiarkan bergulir terus," katanya.\nSementara itu, Raden Rangga bicara masalah statusnya yang kini menjadi tersangka. Sambil berjalan, Rangga mengaku menghargai proses hukum yang berlaku.\n"Kita menghargai hukum, kita menghargai hukum. Apapun keadaannya kita lakukan," kata Rangga."""
  )
 



 ];

