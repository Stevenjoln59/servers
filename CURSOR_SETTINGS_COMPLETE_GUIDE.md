# Hướng dẫn đầy đủ cài đặt Cursor IDE

## 📚 Nguồn tài liệu chính thức

### 1. Microsoft VS Code Documentation
- **URL**: https://code.visualstudio.com/docs/getstarted/settings
- **Mô tả**: Tài liệu chính thức về tất cả cài đặt settings.json
- **Bao gồm**: Editor, Files, Terminal, Git, Extensions, Debug, v.v.

### 2. Cursor Specific Guides
- **Setup Guide**: https://apidog.com/vi/blog/cursor-setup-guide/
- **Agent Mode**: https://apidog.com/vi/blog/how-to-use-cursor-agent-mode-vi/
- **AI Features**: https://200lab.io/blog/cursor-ai-la-gi/

## 🎯 Cách truy cập cài đặt trong Cursor

### Method 1: Settings UI
1. `Ctrl + ,` → Mở Settings
2. Tìm kiếm theo từ khóa
3. Xem mô tả chi tiết cho mỗi cài đặt

### Method 2: Settings JSON
1. `Ctrl + Shift + P` → "Preferences: Open Settings (JSON)"
2. Gõ `"` + `Ctrl + Space` để xem tất cả options
3. Hover chuột để xem mô tả

### Method 3: Default Settings
1. `Ctrl + Shift + P` → "Preferences: Open Default Settings (JSON)"
2. Xem tất cả cài đặt mặc định
3. Copy những cài đặt cần thiết

## 🔧 Các nhóm cài đặt chính

### 1. Editor Settings
```json
{
    "editor.fontSize": 14,                    // Kích thước font
    "editor.fontFamily": "Consolas",          // Font chữ
    "editor.tabSize": 4,                      // Kích thước tab
    "editor.insertSpaces": true,              // Sử dụng spaces thay vì tabs
    "editor.wordWrap": "on",                  // Tự động xuống dòng
    "editor.minimap.enabled": true,           // Hiển thị minimap
    "editor.lineNumbers": "on",               // Hiển thị số dòng
    "editor.rulers": [80, 120],              // Đường kẻ giới hạn
    "editor.cursorBlinking": "blink",         // Hiệu ứng nhấp nháy cursor
    "editor.cursorStyle": "line",             // Kiểu cursor
    "editor.smoothScrolling": true,           // Cuộn mượt
    "editor.mouseWheelZoom": true,            // Zoom bằng chuột
    "editor.formatOnSave": true,              // Format khi lưu
    "editor.formatOnPaste": true,             // Format khi paste
    "editor.formatOnType": false,             // Format khi gõ
    "editor.codeActionsOnSave": {             // Actions khi lưu
        "source.fixAll": true,
        "source.organizeImports": true
    }
}
```

### 2. Files Settings
```json
{
    "files.autoSave": "afterDelay",           // Tự động lưu
    "files.autoSaveDelay": 1000,              // Delay tự động lưu (ms)
    "files.autoSaveWhenNoErrors": true,       // Chỉ lưu khi không có lỗi
    "files.trimTrailingWhitespace": true,     // Xóa khoảng trắng cuối dòng
    "files.insertFinalNewline": true,         // Thêm dòng trống cuối file
    "files.trimFinalNewlines": true,          // Xóa dòng trống cuối file
    "files.encoding": "utf8",                 // Encoding mặc định
    "files.eol": "\n",                        // Ký tự xuống dòng
    "files.exclude": {                        // Ẩn file/folder
        "**/.git": true,
        "**/.DS_Store": true,
        "**/node_modules": true
    },
    "files.watcherExclude": {                 // Không theo dõi thay đổi
        "**/.git/objects/**": true,
        "**/node_modules/**": true
    }
}
```

### 3. Terminal Settings
```json
{
    "terminal.integrated.fontSize": 14,       // Kích thước font terminal
    "terminal.integrated.fontFamily": "Consolas", // Font terminal
    "terminal.integrated.cursorBlinking": true,   // Cursor nhấp nháy
    "terminal.integrated.cursorStyle": "block",   // Kiểu cursor terminal
    "terminal.integrated.scrollback": 1000,      // Số dòng lưu trữ
    "terminal.integrated.confirmOnExit": false,   // Không hỏi khi thoát
    "terminal.integrated.confirmOnKill": false,   // Không hỏi khi kill
    "terminal.integrated.defaultProfile.windows": "PowerShell", // Shell mặc định
    "terminal.integrated.defaultProfile.osx": "zsh",
    "terminal.integrated.defaultProfile.linux": "bash"
}
```

### 4. Git Settings
```json
{
    "git.enabled": true,                      // Bật Git
    "git.autofetch": true,                    // Tự động fetch
    "git.autofetchPeriod": 180,               // Thời gian fetch (phút)
    "git.confirmSync": false,                 // Không hỏi khi sync
    "git.enableSmartCommit": true,            // Bật smart commit
    "git.autoStash": true,                    // Tự động stash
    "git.autoRepositoryDetection": true,      // Tự động phát hiện repo
    "git.decorations.enabled": true,          // Hiển thị decorations
    "git.showInlineOpenFileAction": true,     // Hiển thị action mở file
    "git.mergeEditor": true,                  // Bật merge editor
    "git.mergeConflictOnEnter": "ask",        // Hành động khi conflict
    "git.postCommitCommand": "none",          // Lệnh sau commit
    "git.showPushSuccessNotification": true,  // Thông báo push thành công
    "git.terminalAuthentication": false       // Xác thực terminal
}
```

### 5. Workbench Settings
```json
{
    "workbench.colorTheme": "Default Dark+",  // Theme màu
    "workbench.iconTheme": "vs-seti",         // Theme icon
    "workbench.productIconTheme": "Default",  // Theme icon sản phẩm
    "workbench.editor.enablePreview": true,   // Bật preview file
    "workbench.editor.enablePreviewFromQuickOpen": true, // Preview từ quick open
    "workbench.editor.showTabs": true,        // Hiển thị tabs
    "workbench.editor.tabCloseButton": "right", // Vị trí nút đóng tab
    "workbench.editor.tabSizing": "fit",      // Kích thước tab
    "workbench.editor.wrapTabs": false,       // Không wrap tabs
    "workbench.editor.decorations.badges": true, // Badges cho tabs
    "workbench.editor.decorations.colors": true, // Màu cho tabs
    "workbench.sideBar.location": "left",     // Vị trí sidebar
    "workbench.panel.defaultLocation": "bottom", // Vị trí panel
    "workbench.statusBar.visible": true,      // Hiển thị status bar
    "workbench.activityBar.visible": true,    // Hiển thị activity bar
    "workbench.startupEditor": "welcomePage", // Trang khởi động
    "workbench.editor.confirmDelete": false,  // Không hỏi khi xóa
    "workbench.editor.confirmDragAndDrop": false // Không hỏi khi drag & drop
}
```

### 6. Explorer Settings
```json
{
    "explorer.confirmDelete": false,          // Không hỏi khi xóa
    "explorer.confirmDragAndDrop": false,     // Không hỏi khi drag & drop
    "explorer.incrementalNaming": "smart",    // Đặt tên file thông minh
    "explorer.openEditors.visible": 0,        // Số editor mở hiển thị
    "explorer.sortOrder": "type",             // Sắp xếp theo loại
    "explorer.autoReveal": true,              // Tự động reveal file
    "explorer.compactFolders": true,          // Thu gọn folder
    "explorer.decorations.badges": true,      // Badges cho file
    "explorer.decorations.colors": true,      // Màu cho file
    "explorer.inlineEdit": true,              // Sửa tên inline
    "explorer.openEditors.sortOrder": "editorOrder" // Sắp xếp editor mở
}
```

### 7. Search Settings
```json
{
    "search.exclude": {                       // Loại trừ khỏi tìm kiếm
        "**/node_modules": true,
        "**/bower_components": true,
        "**/.git": true,
        "**/dist": true
    },
    "search.useGlobalIgnoreFiles": true,      // Sử dụng global ignore
    "search.useIgnoreFiles": true,            // Sử dụng ignore files
    "search.smartCase": true,                 // Tìm kiếm thông minh
    "search.collapseResults": "auto",         // Thu gọn kết quả
    "search.showLineNumbers": true,           // Hiển thị số dòng
    "search.showFileNames": true,             // Hiển thị tên file
    "search.followSymlinks": true,            // Theo symlinks
    "search.quickOpen.includeHistory": true,  // Bao gồm lịch sử
    "search.quickOpen.includeSymbols": true   // Bao gồm symbols
}
```

### 8. Debug Settings
```json
{
    "debug.console.fontSize": 14,             // Kích thước font console
    "debug.console.fontFamily": "Consolas",   // Font console
    "debug.console.lineHeight": 22,           // Chiều cao dòng console
    "debug.console.wordWrap": true,           // Tự động xuống dòng console
    "debug.inlineValues": "auto",             // Hiển thị giá trị inline
    "debug.openDebug": "openOnDebugBreak",    // Mở debug khi break
    "debug.showBreakpointsInOverviewRuler": true, // Hiển thị breakpoints
    "debug.showInlineBreakpointCandidates": true, // Hiển thị breakpoint candidates
    "debug.terminal.clearBeforeReusing": true, // Xóa terminal trước khi dùng
    "debug.allowBreakpointsEverywhere": false, // Cho phép breakpoints mọi nơi
    "debug.console.acceptSuggestionOnEnter": "on", // Accept suggestion
    "debug.console.historyLength": 50         // Số dòng lịch sử
}
```

### 9. Extensions Settings
```json
{
    "extensions.autoUpdate": true,            // Tự động cập nhật extensions
    "extensions.autoCheckUpdates": true,      // Tự động kiểm tra cập nhật
    "extensions.ignoreRecommendations": false, // Bỏ qua gợi ý
    "extensions.showRecommendationsOnlyOnDemand": false, // Chỉ hiện gợi ý khi cần
    "extensions.verifySignature": true,       // Xác thực chữ ký
    "extensions.autoUpdate": true,            // Tự động cập nhật
    "extensions.autoCheckUpdates": true       // Tự động kiểm tra
}
```

### 10. Cursor AI Specific Settings
```json
{
    "cursor.ai.autoApprove": true,            // Tự động approve
    "cursor.ai.autoApproveFileOperations": true, // Tự động approve file ops
    "cursor.ai.autoApproveTerminalCommands": true, // Tự động approve terminal
    "cursor.ai.autoApproveCodeChanges": true, // Tự động approve code changes
    "cursor.ai.safetyMode": "balanced",       // Chế độ an toàn
    "cursor.ai.maxAutoOperations": 50,        // Số thao tác tự động tối đa
    "cursor.ai.autoBackup": true,             // Tự động backup
    "cursor.ai.autoFormat": true,             // Tự động format
    "cursor.ai.autoLint": true,               // Tự động lint
    "cursor.ai.autoApproveDelay": 5000,       // Delay trước khi approve
    "cursor.ai.showCountdown": true,          // Hiển thị countdown
    "cursor.ai.confirmationTimeout": 5000     // Timeout xác nhận
}
```

## 🎯 Cách sử dụng hướng dẫn này

1. **Chọn nhóm cài đặt** bạn quan tâm
2. **Copy cài đặt** cần thiết vào settings.json
3. **Tùy chỉnh giá trị** theo nhu cầu
4. **Restart Cursor** để áp dụng

## 📝 Lưu ý quan trọng

- Luôn backup settings.json trước khi thay đổi
- Test từng nhóm cài đặt một cách riêng biệt
- Sử dụng Command Palette (`Ctrl + Shift + P`) để tìm cài đặt nhanh
- Hover chuột để xem mô tả chi tiết của mỗi cài đặt