# Public Repository Push Instructions

Target repository:

```text
https://github.com/TBG-Chance/Pr0jectZer0
```

This package is documentation-only. Review the contents before pushing and confirm no source code, credentials, private development files, or customer information are present.

## Option A — Copy into the empty repository

From PowerShell:

```powershell
Expand-Archive .\Pr0jectZer0-Public-Repository.zip -DestinationPath C:\Temp\Pr0jectZer0-Public
Copy-Item C:\Temp\Pr0jectZer0-Public\Pr0jectZer0-Public-Repository\* C:\Projects\Pr0jectZer0 -Recurse -Force
Copy-Item C:\Temp\Pr0jectZer0-Public\Pr0jectZer0-Public-Repository\.github C:\Projects\Pr0jectZer0 -Recurse -Force
```

## Verify the remote

```powershell
cd C:\Projects\Pr0jectZer0
git remote -v
```

The push URL should point to:

```text
https://github.com/TBG-Chance/Pr0jectZer0.git
```

## Review the repository contents

```powershell
Get-ChildItem -Force
git status
```

Confirm there are no folders such as:

```text
cmd
internal
database
web
bin
build
```

## Commit and push

```powershell
git add .
git commit -m "docs: launch Pr0jectZer0 public product repository"
git branch -M main
git push -u origin main
```

## Social preview

In GitHub:

```text
Settings → General → Social preview
```

Upload:

```text
assets\social-preview.png
```

## Suggested repository description

```text
Privacy-first Cyber Security Exposure Management Platform. Know Your Exposure. Prioritize What Matters. Secure with Confidence.
```

## Suggested topics

```text
cybersecurity
vulnerability-management
exposure-management
windows-security
risk-management
cisa-kev
endpoint-security
```
