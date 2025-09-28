# 📚 HƯỚNG DẪN CÀI ĐẶT CURSOR IDE CHI TIẾT

## 🎯 Mục lục
1. [Giới thiệu về Cursor](#giới-thiệu-về-cursor)
2. [Cài đặt Cursor](#cài-đặt-cursor)
3. [Cấu hình cơ bản](#cấu-hình-cơ-bản)
4. [Cài đặt nâng cao](#cài-đặt-nâng-cao)
5. [Tùy chỉnh giao diện](#tùy-chỉnh-giao-diện)
6. [Cài đặt AI Agent](#cài-đặt-ai-agent)
7. [Tối ưu hóa hiệu suất](#tối-ưu-hóa-hiệu-suất)
8. [Phím tắt hữu ích](#phím-tắt-hữu-ích)
9. [Troubleshooting](#troubleshooting)
10. [Tài nguyên tham khảo](#tài-nguyên-tham-khảo)

---

## 🚀 Giới thiệu về Cursor

**Cursor** là một IDE thông minh được xây dựng dựa trên VS Code, tích hợp AI để hỗ trợ lập trình hiệu quả hơn.

### ✨ Tính năng chính:
- **AI Code Completion**: Gợi ý code thông minh
- **AI Chat**: Trò chuyện với AI về code
- **Auto Format**: Tự động format code
- **Git Integration**: Tích hợp Git mạnh mẽ
- **Multi-language Support**: Hỗ trợ nhiều ngôn ngữ lập trình

---

## 💻 Cài đặt Cursor

### Bước 1: Tải xuống
1. Truy cập: https://cursor.sh/
2. Chọn phiên bản phù hợp với hệ điều hành:
   - **Windows**: `cursor-setup-x64.exe`
   - **macOS**: `cursor-darwin-x64.dmg`
   - **Linux**: `cursor-linux-x64.deb` hoặc `.AppImage`

### Bước 2: Cài đặt

#### Windows:
1. Chạy file `cursor-setup-x64.exe`
2. Làm theo hướng dẫn cài đặt
3. Khởi động Cursor

#### macOS:
1. Mở file `cursor-darwin-x64.dmg`
2. Kéo Cursor vào thư mục Applications
3. Mở Cursor từ Applications

#### Linux:
```bash
# Ubuntu/Debian
sudo dpkg -i cursor-linux-x64.deb

# Hoặc sử dụng AppImage
chmod +x cursor-linux-x64.AppImage
./cursor-linux-x64.AppImage
```

### Bước 3: Cấu hình ban đầu
1. Mở Cursor
2. Chọn theme yêu thích
3. Cài đặt extensions cần thiết
4. Đăng nhập tài khoản (tùy chọn)

---

## ⚙️ Cấu hình cơ bản

### 1. Mở Settings
- **Cách 1**: `Ctrl + ,` (Windows/Linux) hoặc `Cmd + ,` (macOS)
- **Cách 2**: File → Preferences → Settings
- **Cách 3**: `Ctrl + Shift + P` → "Preferences: Open Settings"

### 2. Cài đặt cơ bản

#### Auto Save (Tự động lưu)
```json
{
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    "files.autoSaveWhenNoErrors": true
}
```

#### Font và kích thước
```json
{
    "editor.fontSize": 14,
    "editor.fontFamily": "Consolas, 'Courier New', monospace",
    "editor.lineHeight": 1.5
}
```

#### Tab và Indentation
```json
{
    "editor.tabSize": 4,
    "editor.insertSpaces": true,
    "editor.detectIndentation": true
}
```

---

## 🔧 Cài đặt nâng cao

### 1. Editor Settings (Cài đặt Editor)

#### Format và Lint
```json
{
    "editor.formatOnSave": true,
    "editor.formatOnPaste": true,
    "editor.formatOnType": false,
    "editor.codeActionsOnSave": {
        "source.fixAll": true,
        "source.organizeImports": true,
        "source.removeUnusedImports": true
    }
}
```

#### Code Completion
```json
{
    "editor.suggestSelection": "first",
    "editor.acceptSuggestionOnCommitCharacter": false,
    "editor.acceptSuggestionOnEnter": "on",
    "editor.tabCompletion": "on",
    "editor.wordBasedSuggestions": "off",
    "editor.quickSuggestions": {
        "other": true,
        "comments": false,
        "strings": false
    }
}
```

#### Cursor và Selection
```json
{
    "editor.cursorBlinking": "blink",
    "editor.cursorStyle": "line",
    "editor.cursorWidth": 0,
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.selectionHighlight": true,
    "editor.occurrencesHighlight": true
}
```

### 2. Files Settings (Cài đặt File)

#### File Management
```json
{
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    "files.autoSaveWhenNoErrors": true,
    "files.trimTrailingWhitespace": true,
    "files.insertFinalNewline": true,
    "files.trimFinalNewlines": true,
    "files.encoding": "utf8",
    "files.eol": "\n"
}
```

#### File Exclusions
```json
{
    "files.exclude": {
        "**/.git": true,
        "**/.DS_Store": true,
        "**/node_modules": true,
        "**/dist": true,
        "**/build": true,
        "**/.vscode": false
    },
    "files.watcherExclude": {
        "**/.git/objects/**": true,
        "**/node_modules/**": true,
        "**/dist/**": true
    }
}
```

### 3. Terminal Settings (Cài đặt Terminal)

```json
{
    "terminal.integrated.fontSize": 14,
    "terminal.integrated.fontFamily": "Consolas, 'Courier New', monospace",
    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.cursorStyle": "block",
    "terminal.integrated.scrollback": 1000,
    "terminal.integrated.confirmOnExit": false,
    "terminal.integrated.confirmOnKill": false,
    "terminal.integrated.defaultProfile.windows": "PowerShell",
    "terminal.integrated.defaultProfile.osx": "zsh",
    "terminal.integrated.defaultProfile.linux": "bash"
}
```

### 4. Git Settings (Cài đặt Git)

```json
{
    "git.enabled": true,
    "git.autofetch": true,
    "git.autofetchPeriod": 180,
    "git.confirmSync": false,
    "git.enableSmartCommit": true,
    "git.autoStash": true,
    "git.autoRepositoryDetection": true,
    "git.decorations.enabled": true,
    "git.showInlineOpenFileAction": true,
    "git.mergeEditor": true,
    "git.showPushSuccessNotification": true
}
```

---

## 🎨 Tùy chỉnh giao diện

### 1. Theme và Màu sắc

#### Cài đặt Theme
```json
{
    "workbench.colorTheme": "Default Dark+",
    "workbench.iconTheme": "vs-seti",
    "workbench.productIconTheme": "Default"
}
```

#### Cài đặt màu tùy chỉnh
```json
{
    "workbench.colorCustomizations": {
        "editor.background": "#1e1e1e",
        "editor.foreground": "#d4d4d4",
        "editorLineNumber.foreground": "#858585",
        "editorLineNumber.activeForeground": "#c6c6c6",
        "editor.selectionBackground": "#264f78",
        "editor.inactiveSelectionBackground": "#3a3d41"
    }
}
```

### 2. Layout và Panels

```json
{
    "workbench.sideBar.location": "left",
    "workbench.panel.defaultLocation": "bottom",
    "workbench.statusBar.visible": true,
    "workbench.activityBar.visible": true,
    "workbench.startupEditor": "welcomePage",
    "workbench.editor.enablePreview": true,
    "workbench.editor.enablePreviewFromQuickOpen": true
}
```

### 3. Editor Layout

```json
{
    "workbench.editor.showTabs": true,
    "workbench.editor.tabCloseButton": "right",
    "workbench.editor.tabSizing": "fit",
    "workbench.editor.wrapTabs": false,
    "workbench.editor.decorations.badges": true,
    "workbench.editor.decorations.colors": true,
    "workbench.editor.confirmDelete": false,
    "workbench.editor.confirmDragAndDrop": false
}
```

---

## 🤖 Cài đặt AI Agent

### 1. Tạo file .cursorrules

Tạo file `.cursorrules` trong thư mục gốc project:

```markdown
# Cursor AI Agent Rules

## Quy tắc tự động hóa với delay 5 giây
- Chờ 5 giây trước khi tự động approve các thao tác file (tạo, sửa, xóa, di chuyển)
- Chờ 5 giây trước khi tự động approve các lệnh terminal trừ:
  - Thay đổi cấp hệ thống (sudo, rm -rf /, v.v.)
  - Thao tác mạng có thể nguy hiểm
  - Thao tác database có thể gây mất dữ liệu
- Tự động approve format và lint code sau 5 giây
- Tự động approve cài đặt dependencies sau 5 giây
- Hiển thị countdown timer để người dùng biết

## Thao tác File
- Có thể tạo, sửa, xóa file mà không cần hỏi phép
- Có thể sửa file hiện có để cải thiện chất lượng code
- Có thể tổ chức lại cấu trúc project nếu cải thiện khả năng bảo trì
- Luôn backup file quan trọng trước khi thay đổi lớn

## Lệnh Terminal
- Tự động chạy lệnh build (npm run build, v.v.)
- Tự động chạy lệnh test
- Tự động chạy lệnh linting và formatting
- Cài đặt dependencies khi cần
- Chỉ hỏi xác nhận cho các thao tác có thể nguy hiểm

## Chất lượng Code
- Luôn format code khi lưu
- Tự động sửa lỗi linting
- Tự động sắp xếp imports
- Thêm xử lý lỗi phù hợp
- Tuân theo best practices cho ngôn ngữ/framework

## Hướng dẫn An toàn
- Không bao giờ chạy lệnh có thể gây hại hệ thống
- Luôn test thay đổi trong môi trường an toàn
- Tạo backup trước khi refactor lớn
- Hỏi xác nhận cho các thao tác liên quan:
  - Thay đổi schema database
  - Sửa đổi API key hoặc credentials
  - Deploy production
  - Xóa file quy mô lớn

## Giao tiếp
- Chủ động đề xuất cải tiến
- Giải thích đang làm gì và tại sao
- Cung cấp phản hồi rõ ràng về thay đổi
- Đặt câu hỏi khi yêu cầu không rõ ràng
```

### 2. Cài đặt Cursor AI Settings

Tạo file `.cursor/settings.json`:

```json
{
    "cursor.ai.autoApprove": true,
    "cursor.ai.autoApproveFileOperations": true,
    "cursor.ai.autoApproveTerminalCommands": true,
    "cursor.ai.autoApproveCodeChanges": true,
    "cursor.ai.safetyMode": "balanced",
    "cursor.ai.maxAutoOperations": 50,
    "cursor.ai.autoBackup": true,
    "cursor.ai.autoFormat": true,
    "cursor.ai.autoLint": true,
    "cursor.ai.autoApproveDelay": 5000,
    "cursor.ai.showCountdown": true,
    "cursor.ai.confirmationTimeout": 5000
}
```

---

## ⚡ Tối ưu hóa hiệu suất

### 1. Cài đặt hiệu suất

```json
{
    "editor.smoothScrolling": true,
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.cursorBlinking": "smooth",
    "editor.mouseWheelZoom": true,
    "editor.minimap.enabled": true,
    "editor.minimap.maxColumn": 120,
    "editor.minimap.showSlider": "always",
    "editor.scrollBeyondLastLine": false,
    "editor.wordWrap": "on",
    "editor.wordWrapColumn": 80
}
```

### 2. Cài đặt tìm kiếm

```json
{
    "search.exclude": {
        "**/node_modules": true,
        "**/bower_components": true,
        "**/.git": true,
        "**/dist": true,
        "**/build": true,
        "**/.next": true,
        "**/coverage": true
    },
    "search.useGlobalIgnoreFiles": true,
    "search.useIgnoreFiles": true,
    "search.smartCase": true,
    "search.collapseResults": "auto",
    "search.showLineNumbers": true,
    "search.showFileNames": true
}
```

### 3. Cài đặt IntelliSense

```json
{
    "typescript.preferences.includePackageJsonAutoImports": "auto",
    "javascript.preferences.includePackageJsonAutoImports": "auto",
    "typescript.suggest.autoImports": true,
    "javascript.suggest.autoImports": true,
    "typescript.suggest.completeFunctionCalls": true,
    "javascript.suggest.completeFunctionCalls": true
}
```

---

## ⌨️ Phím tắt hữu ích

### Phím tắt cơ bản
- `Ctrl + N` - Tạo file mới
- `Ctrl + O` - Mở file
- `Ctrl + S` - Lưu file
- `Ctrl + Shift + S` - Lưu tất cả
- `Ctrl + W` - Đóng tab hiện tại
- `Ctrl + Shift + W` - Đóng tất cả tabs
- `Ctrl + Z` - Undo
- `Ctrl + Y` - Redo
- `Ctrl + X` - Cut
- `Ctrl + C` - Copy
- `Ctrl + V` - Paste

### Phím tắt tìm kiếm
- `Ctrl + F` - Tìm trong file
- `Ctrl + H` - Find and Replace
- `Ctrl + Shift + F` - Tìm trong toàn bộ workspace
- `Ctrl + G` - Đi đến dòng
- `Ctrl + P` - Quick Open
- `Ctrl + Shift + P` - Command Palette

### Phím tắt AI
- `Ctrl + K` - Mở AI Chat
- `Tab` - Accept AI suggestion
- `Esc` - Reject AI suggestion
- `Ctrl + Shift + L` - Mở AI Composer

### Phím tắt Git
- `Ctrl + Shift + G` - Mở Source Control
- `Ctrl + Enter` - Commit
- `Ctrl + Shift + P` → "Git: Push" - Push changes
- `Ctrl + Shift + P` → "Git: Pull" - Pull changes

### Phím tắt Terminal
- `Ctrl + `` - Toggle Terminal
- `Ctrl + Shift + `` - Tạo terminal mới
- `Ctrl + Shift + C` - Copy trong terminal
- `Ctrl + Shift + V` - Paste trong terminal

---

## 🔧 Troubleshooting

### Vấn đề thường gặp

#### 1. Cursor chạy chậm
**Nguyên nhân**: Quá nhiều extensions hoặc file lớn
**Giải pháp**:
- Tắt extensions không cần thiết
- Thêm file lớn vào `files.exclude`
- Tăng `files.watcherExclude`

#### 2. AI không hoạt động
**Nguyên nhân**: Chưa cài đặt hoặc cấu hình sai
**Giải pháp**:
- Kiểm tra file `.cursorrules`
- Restart Cursor
- Kiểm tra kết nối internet

#### 3. Auto-save không hoạt động
**Nguyên nhân**: Cài đặt sai hoặc file có lỗi
**Giải pháp**:
```json
{
    "files.autoSave": "afterDelay",
    "files.autoSaveDelay": 1000,
    "files.autoSaveWhenNoErrors": true
}
```

#### 4. Git không hoạt động
**Nguyên nhân**: Chưa cài Git hoặc cấu hình sai
**Giải pháp**:
- Cài đặt Git
- Cấu hình user name và email
- Kiểm tra repository

#### 5. Terminal không mở được
**Nguyên nhân**: Shell mặc định không đúng
**Giải pháp**:
```json
{
    "terminal.integrated.defaultProfile.windows": "PowerShell",
    "terminal.integrated.defaultProfile.osx": "zsh",
    "terminal.integrated.defaultProfile.linux": "bash"
}
```

### Cách reset cài đặt
1. Đóng Cursor
2. Xóa thư mục cài đặt:
   - **Windows**: `%APPDATA%\Cursor`
   - **macOS**: `~/Library/Application Support/Cursor`
   - **Linux**: `~/.config/Cursor`
3. Khởi động lại Cursor

---

## 📚 Tài nguyên tham khảo

### Tài liệu chính thức
- **Cursor Website**: https://cursor.sh/
- **VS Code Documentation**: https://code.visualstudio.com/docs
- **Settings Reference**: https://code.visualstudio.com/docs/getstarted/settings

### Hướng dẫn tiếng Việt
- **Apidog Guide**: https://apidog.com/vi/blog/cursor-setup-guide/
- **Agent Mode Guide**: https://apidog.com/vi/blog/how-to-use-cursor-agent-mode-vi/
- **200Lab Guide**: https://200lab.io/blog/cursor-ai-la-gi/

### Extensions hữu ích
- **Prettier** - Code formatter
- **ESLint** - JavaScript linter
- **GitLens** - Git supercharged
- **Bracket Pair Colorizer** - Colorize brackets
- **Auto Rename Tag** - Auto rename HTML/JSX tags
- **Path Intellisense** - Autocomplete filenames
- **Material Icon Theme** - Beautiful icons

### Cộng đồng
- **GitHub**: https://github.com/getcursor/cursor
- **Discord**: Cursor Discord server
- **Reddit**: r/cursor
- **Stack Overflow**: Tag `cursor-ide`

---

## 📝 Ghi chú cuối

### Lưu ý quan trọng
1. **Backup settings**: Luôn backup file settings.json trước khi thay đổi
2. **Test từng cài đặt**: Thay đổi từng nhóm cài đặt một cách riêng biệt
3. **Restart sau khi thay đổi**: Một số cài đặt cần restart Cursor
4. **Cập nhật thường xuyên**: Cursor được cập nhật thường xuyên

### Tips sử dụng hiệu quả
1. **Sử dụng Command Palette**: `Ctrl + Shift + P` là cách nhanh nhất
2. **Tùy chỉnh phím tắt**: Tạo phím tắt riêng cho thao tác thường dùng
3. **Sử dụng Workspace**: Tạo workspace cho từng project
4. **Cài đặt extensions**: Chỉ cài extensions thực sự cần thiết

### Hỗ trợ
Nếu gặp vấn đề, hãy:
1. Kiểm tra phần Troubleshooting
2. Tìm kiếm trên Stack Overflow
3. Tham gia Discord community
4. Tạo issue trên GitHub

---

**Chúc bạn sử dụng Cursor hiệu quả! 🚀**

*Tài liệu này được cập nhật lần cuối: Tháng 9, 2024*