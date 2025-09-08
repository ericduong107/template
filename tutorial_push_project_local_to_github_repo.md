# Hướng dẫn đưa project local mới tạo lên GitHub repository đã có sẵn

Giả sử bạn đã có:
- Một project local (chưa khởi tạo git).
- Một repository trống đã tạo trên GitHub.

## Các bước thực hiện

### 1. Khởi tạo git trong folder local
```bash
git init
```
### 2. Kết nối repo local với Github remote
```bash
git remote add origin https://github.com/<username>/<repo-name>.git
```
### 3. Đặt tên nhánh chính là `main` (hoặc theo GitHub repo)
```bash
git branch -M main
```
### 4. Thêm toàn bộ file và commit
```bash
git add .
git commit -m "First commit"
```
### 5. Đẩy code lên GitHub
```bash
git push -u origin main
```
---

## Ghi chú
- Nếu repo GitHub đã có sẵn file (ví dụ: `README.md` hoặc `.gitignore`), thì cần **kéo về trước khi push**:
```bash
git pull origin main --rebase
git push -u origin main
```
> 👉 Như vậy repo local **mới khởi tạo** (chỉ là một folder code chưa có git) sẽ được đồng bộ lên repo GitHub đã có sẵn.