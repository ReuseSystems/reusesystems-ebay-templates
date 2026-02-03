# Quick Start Guide - GitHub eBay Templates

## 🚀 5-Minute Setup

### Step 1: Create GitHub Repository (2 minutes)

1. Go to https://github.com/new
2. Repository name: `reusesystems-ebay-templates`
3. Description: "eBay listing templates for RE-USE.SYSTEMS"
4. Set to **Public** (required for GitHub Pages)
5. Click **Create repository**

### Step 2: Upload Files (2 minutes)

**Option A: Web Upload (Easiest)**

1. Click **uploading an existing file**
2. Drag and drop all files from this folder
3. Commit message: "Initial template setup"
4. Click **Commit changes**

**Option B: Git Command Line**

```bash
cd reusesystems-ebay-templates
git init
git add .
git commit -m "Initial template setup"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/reusesystems-ebay-templates.git
git push -u origin main
```

### Step 3: Enable GitHub Pages (1 minute)

1. Go to repository **Settings**
2. Click **Pages** (left sidebar)
3. Under **Source**: Select **main** branch
4. Click **Save**
5. Wait 2-3 minutes for deployment

✅ Your templates are now live at:
```
https://YOUR-USERNAME.github.io/reusesystems-ebay-templates/
```

---

## 🔧 Configure WP-Lister Pro

### 1. Update Template URLs

Edit both template files and replace `YOUR-GITHUB-USERNAME`:

**Find:**
```html
https://cdn.jsdelivr.net/gh/YOUR-GITHUB-USERNAME/reusesystems-ebay-templates@main/css/style.css
```

**Replace with:**
```html
https://cdn.jsdelivr.net/gh/pierrebailey/reusesystems-ebay-templates@main/css/style.css
```

Or use the automated script:
```bash
./setup.sh
```

### 2. Add Logo

1. Save your logo as `logo.jpg`
2. Upload to `images/` folder in GitHub
3. Or replace locally and push:
```bash
cp /path/to/your/logo.jpg images/logo.jpg
git add images/logo.jpg
git commit -m "Add RE-USE.SYSTEMS logo"
git push
```

### 3. Import to WP-Lister Pro

1. WordPress Admin → **WP-Lister Pro** → **Settings** → **Templates**
2. Click **Add New Template**
3. Name: "Aircraft Parts"
4. Copy/paste contents of `templates/aircraft-parts.html`
5. Save
6. Repeat for `templates/standard.html`

---

## ✅ Testing

### Test Template URLs

Open these in your browser:

```
https://YOUR-USERNAME.github.io/reusesystems-ebay-templates/css/style.css
https://YOUR-USERNAME.github.io/reusesystems-ebay-templates/css/responsive.css
https://YOUR-USERNAME.github.io/reusesystems-ebay-templates/images/logo.jpg
```

If they load correctly, you're good to go! ✨

### Test eBay Listing

1. Create test product in WooCommerce
2. Assign template in WP-Lister Pro
3. Preview listing before publishing
4. Check on mobile device

---

## 🎯 Template Usage

### Aircraft Parts (RAF Surplus)

**Use for:**
- RAF equipment
- Military surplus
- Aviation parts
- MOD components

**Includes:**
- Export control notices
- Airworthiness disclaimers
- Military compliance terms

### Standard (Electronics)

**Use for:**
- Computer equipment
- General electronics
- IT hardware
- Consumer tech

**Includes:**
- Standard terms
- Return policy
- Shipping info

---

## 🔄 Making Changes

### Quick Edit (GitHub Web)

1. Navigate to file in GitHub
2. Click pencil icon (Edit)
3. Make changes
4. Commit directly to main

**Wait 5-10 minutes for CDN cache refresh**

### Local Development

```bash
# Pull latest changes
git pull

# Make edits
nano css/style.css

# Commit and push
git add .
git commit -m "Update styles"
git push
```

---

## 🆘 Common Issues

### "404 Not Found" for CSS

**Solution:** Wait 5-10 minutes after enabling GitHub Pages

### Template shows `{{ title }}` as text

**Solution:** 
1. Check template is assigned in WP-Lister Pro
2. Verify product has title and description
3. Check WP-Lister Pro is activated

### Logo doesn't display

**Solution:**
1. Check file is named exactly `logo.jpg` (case-sensitive)
2. Verify it's in `images/` folder
3. Test URL directly in browser
4. Wait 5 minutes for CDN cache

### CSS not updating

**Solution:** Change version in URL:
```html
<!-- Change @main to @v1.1 -->
<link href="...@v1.1/css/style.css">
```

---

## 📞 Support

**Documentation:** See full `README.md` in repository

**WP-Lister Pro Support:** https://www.wplab.com/support/

**GitHub Pages Status:** https://www.githubstatus.com/

---

## 🎉 You're Done!

Your eBay templates are now:
- ✅ Hosted on GitHub (free)
- ✅ Served via CDN (fast)
- ✅ Version controlled (safe)
- ✅ Easy to update (quick)

Start creating beautiful eBay listings! 🚀
