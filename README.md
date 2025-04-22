# 🧩 GenericGridLayout

A reusable and highly customizable `GenericGridLayout` SwiftUI component that enables dynamic horizontal grid arrangements using **any SwiftUI `View`**. It supports multiple rows, dynamic item arrangement, and promotes modularity and reusability across your SwiftUI projects.

---

## 🚀 Features

- 📦 Lightweight Swift Package, ready for SPM
- 🧱 Generic layout for any kind of SwiftUI view content
- 🧭 Horizontal scrolling support
- 🪄 Customizable row-based arrangement
- ♻️ Highly reusable for different UI use cases
- ✅ Supports iOS 13+

---

## 🛠 Installation

### Using Swift Package Manager (SPM)

1. In Xcode:  
   `File` → `Add Packages...`

2. Enter the repository URL:
https://github.com/your-username/GenericGridLayout.git

3. Choose a version (e.g., `from 1.0.0`)

OR

### Add manually to your `Package.swift`:

swift
.package(url: "https://github.com/your-username/GenericGridLayout.git", from: "1.0.0")

🧑‍💻 Usage
Step 1: Import the Package
import GenericGridLayout


Step 2: Use GenericGridLayout in Your View

GenericGridLayout(data: myDataArray) { item in
    VStack {
        Circle()
            .fill(Color.blue)
            .frame(width: 30, height: 30)
        Text(item)
            .font(.caption)
    }
}


data: Your data array (e.g., [String], [Model], etc.)

content: A closure that builds a SwiftUI View for each item




📷 Demo



📝 License
This project is licensed under the MIT License.

🤝 Contributions
Contributions, issues, and feature requests are welcome!
Feel free to submit a pull request or open an issue.

📬 Contact
For questions, feel free to reach out via GitHub Issues or create a discussion.


---

Let me know if you'd like help customizing the demo section with a real screenshot/GIF, or want me to scaffold a sample app using this component.
