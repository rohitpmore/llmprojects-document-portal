# Commit Message Guidelines

When creating a commit message, please follow these guidelines to ensure consistency and clarity.

## Format

Each commit message consists of a **header** and a **body**.

```
<type>: <emoji> <subject>

<body>
```

### Type

Must be one of the following:

*   **feat**: ✨ A new feature
*   **fix**: 🐛 A bug fix
*   **docs**: 📚 Documentation only changes
*   **style**: 💎 Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
*   **refactor**: 📦 A code change that neither fixes a bug nor adds a feature
*   **perf**: 🚀 A code change that improves performance
*   **test**: 🧪 Adding missing tests or correcting existing tests
*   **build**: 🛠️ Changes that affect the build system or external dependencies
*   **ci**: ⚙️ Changes to our CI configuration files and scripts
*   **chore**: 🧹 Other changes that don't modify `src` or `test` files

### Subject

The subject contains a succinct description of the change.
- Use the imperative, present tense: "add" not "added" nor "adds".
- Don't capitalize the first letter.
- No dot (.) at the end.

### Body

Use the imperative, present tense. The body should include the motivation for the change and contrast this with previous behavior. Use bullet points for detailing changes. 