FROM ubuntu
COPY test.sh /
RUN chmod +x /test.sh
RUN /test.sh
# RUN akan menjalankan perintah dengan middle container dan mengcombinenya ke dalam image saat selesai RUN

# CMD [ "echo","Selesai" ]
# Akan menampilkan perintah output "Selesai" yang bisa dioverride dari luar
# dengan menjalankan docker run -itd echo "Percobaan"

# CMD [ "/bin/sh" ]
# Mengoverride bash command dari "bash" (bawaah) menjadi /bin/sh
# Command jika ada multiple, maka yang terakhir yang dijalankan.

# ENTRYPOINT [ "/bin/bash" ]
# Tidak boleh menjalankan perintah yang sama dengan CMD, misalkan CMD dengan /bin/sh dan ENTRYPOINT dengan /bin/bash
# Entrypoint tidak bisa dioverride saat running image ke container, sedangkan CMD bisa.

