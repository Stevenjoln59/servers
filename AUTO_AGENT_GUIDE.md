# Hướng dẫn Cài đặt Agent Tự động trong Cursor

## Các tính năng đã được cài đặt:

### 1. ✅ Tự động lưu code
- Code sẽ tự động lưu sau 1 giây khi bạn dừng gõ
- Tự động format code khi lưu
- Tự động sửa lỗi linting

### 2. ✅ Tự động chạy command
- Terminal không hỏi xác nhận khi thoát
- Không hỏi xác nhận khi xóa file
- Git tự động sync và commit

### 3. ✅ Quy tắc cho AI Agent
- Agent có thể tạo, sửa, xóa file tự do
- Tự động chạy build, test, lint commands
- Tự động cài đặt dependencies
- Chỉ hỏi xác nhận cho các thao tác nguy hiểm

### 4. ✅ Cài đặt bổ sung
- Auto-import packages
- Smart code completion
- Auto-suggestions
- Git auto-fetch

## Cách sử dụng:

1. **Khởi động workspace**: Chạy `./scripts/auto-setup.sh`
2. **Làm việc bình thường**: Agent sẽ tự động xử lý các thao tác
3. **Kiểm tra logs**: Xem terminal để theo dõi các thao tác tự động

## Lưu ý an toàn:

- Agent sẽ KHÔNG chạy các lệnh nguy hiểm như `rm -rf /`
- Sẽ hỏi xác nhận cho thao tác database quan trọng
- Tự động backup trước khi thay đổi lớn

## Tùy chỉnh thêm:

Chỉnh sửa file `.cursorrules` để thay đổi quy tắc cho agent.
Chỉnh sửa `.vscode/settings.json` để thay đổi cài đặt editor.