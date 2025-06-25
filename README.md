
# 🐧 Fix Ubuntu Wakeup Issue — Ngăn Laptop Tự Động Bật Lại Sau Khi Tắt

Một số laptop (như MSI GF63, Lenovo, Dell...) chạy Ubuntu 22.04 có thể gặp lỗi:
> "Shutdown xong gập máy, mở ra thì máy tự bật lại."

Lỗi này thường do **một số thiết bị như nắp máy (LID0) hoặc USB controller (XHC)** vẫn có quyền "đánh thức" máy thông qua ACPI wakeup.

Repo này cung cấp **script + systemd service** giúp bạn **vô hiệu hóa quyền wakeup của các thiết bị này mỗi lần khởi động máy**.

---

## 🚀 Tính năng

- 💤 Ngăn máy tự bật lại khi mở nắp sau khi shutdown
- 🔒 Không cần chỉnh BIOS
- ⚙️ Tự động chạy mỗi khi khởi động máy
- 🧩 Gọn nhẹ, dễ tích hợp vào hệ thống

---

## 📦 Cài đặt

### 1. Clone repo

```bash
git clone https://github.com/<your-username>/fix-ubuntu-wakeup.git
cd fix-ubuntu-wakeup
````

### 2. Cài đặt script & systemd service

```bash
sudo cp scripts/acpi-wakeup-fix.sh /etc/systemd/acpi-wakeup-fix.sh
sudo cp systemd/acpi-wakeup-fix.service /etc/systemd/system/acpi-wakeup-fix.service
sudo chmod +x /etc/systemd/acpi-wakeup-fix.sh
sudo systemctl enable acpi-wakeup-fix.service
```

---

## 🧪 Kiểm tra sau khi khởi động lại

Sau khi khởi động lại máy, kiểm tra:

```bash
cat /proc/acpi/wakeup
```

Bạn sẽ thấy:

```text
LID0      S3    *disabled
XHC       S3    *disabled
```

---

## 📁 Cấu trúc dự án

| Thư mục / Tệp                     | Mô tả                                      |
| --------------------------------- | ------------------------------------------ |
| `scripts/acpi-wakeup-fix.sh`      | Script để tắt quyền wakeup của LID0 và XHC |
| `systemd/acpi-wakeup-fix.service` | systemd unit file chạy script mỗi khi boot |
| `README.md`                       | Tài liệu hướng dẫn sử dụng                 |
| `LICENSE`                         | Giấy phép MIT                              |

---

## 📝 License

This project is licensed under the [MIT License](LICENSE).

---

## ❤️ Tác giả

**Nguyễn Duy Trọng Nhân**
Mọi ý kiến đóng góp, câu hỏi hoặc lỗi xin gửi tại phần Issues hoặc liên hệ qua GitHub.

---

> Nếu bạn thấy hữu ích, hãy ⭐ project để ủng hộ!

```


