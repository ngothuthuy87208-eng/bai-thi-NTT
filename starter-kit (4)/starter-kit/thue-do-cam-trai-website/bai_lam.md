# BÀI LÀM – HACKATHON 02

- **Mã đề:** 05
- **Họ tên:**Ngô Thu Thúy
- **Lớp:**CNTT3
- **Link repository:**
- **Hệ điều hành (Windows/macOS):**Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# 1.pwd
  2.ls -Force
  3.mv .\quy_dinh_thue.txt .\docs
  4.mkdir backup
  5.cp .\data\don_thue_thang_5.xlsx .\backup
  6.rm .\temp_505.tmp
  7.cd .\logs
    ls
    cd..
    Get-ChildItem -Recurse -Force

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
PS C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website> Get-ChildItem -Recurse -Force


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        11/11/2026  10:55 AM                backup
d-r---        11/11/2026  10:52 AM                data
d-r---        11/11/2026  10:54 AM                docs
d-r---        11/11/2026  10:50 AM                evidence
d-r---        11/11/2026  10:52 AM                logs
d-r---        11/11/2026  10:47 AM                web
-a----         11/3/2026   7:07 AM             72 .env
-a----         11/3/2026   7:07 AM           2409 bai_lam.md


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6132 don_thue_thang_5.xlsx


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6132 don_thue_thang_5.xlsx


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            159 quy_dinh_thue.txt


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            934 Rental.log


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        11/11/2026  10:47 AM                images
-a----         11/3/2026   7:07 AM            582 app.js
-a----         11/3/2026   7:07 AM            534 index.html
-a----         11/3/2026   7:07 AM            460 style.css


    Directory: C:\Users\MY LAPTOP\Downloads\starter-kit (4)\starter-kit\thue-do-cam-trai-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           3090 logo-campgo.png


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
# Get-Content logs\rental.log | Select-String "ERROR" > logs/loi_500.txt
 Get-Content logs\loi_500.txt -TotalCount 2

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-05-28 08:03:17 GET / status=200
2026-05-28 08:06:28 GET /thue-do status=200

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
# Get-Content logs\rental.log | Select-String "status=404" | Measure-Object

```

```text

Count    : 4
Average  :
Sum      :
Maximum  :
Minimum  :
Property :



```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-05-28 08:13:01 GET /combo-cu status=404
2026-05-28 08:30:56 GET /images/leu-6.jpg status=404
2026-05-28 08:33:07 GET /images/leu-6.jpg status=404
2026-05-28 08:49:24 GET /combo-cu status=404




Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 



```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |  |  |  |
| 2 |  |  |  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** 

### Câu tìm kiếm Google

```text
(Ghi câu tìm kiếm vào đây – xoá dòng này)

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_thue_thang_5.xlsx`, không cần ghi vào đây.
