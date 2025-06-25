#!/bin/bash
# ---------------------------------------------
# Script: acpi-wakeup-fix.sh
# Mục đích: Tắt quyền wakeup của các thiết bị gây lỗi tự bật máy
# Áp dụng: Ubuntu 22.04+ (hoặc distro dùng ACPI tương tự)
# ---------------------------------------------

# Thiết bị: LID0 (nắp laptop) và XHC (USB controller)
# Kiểm tra hiện tại bằng: cat /proc/acpi/wakeup

echo "Disabling ACPI wakeup for LID0 and XHC..."

echo LID0 > /proc/acpi/wakeup
echo XHC > /proc/acpi/wakeup

echo "Wakeup disabled. Done."
