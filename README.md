# RE-USE.SYSTEMS eBay Template Repository

Professional eBay listing templates for RE-USE.SYSTEMS, hosted on GitHub and served via jsDelivr CDN for fast, reliable delivery.

## 🚀 Quick Start

### 1. Fork or Clone This Repository

```bash
git clone https://github.com/YOUR-USERNAME/reusesystems-ebay-templates.git
cd reusesystems-ebay-templates
```

### 2. Enable GitHub Pages

1. Go to your repository Settings
2. Navigate to **Pages** (under Code and automation)
3. Under **Source**, select **Deploy from a branch**
4. Choose **main** branch and **/ (root)** folder
5. Click **Save**

Your assets will be available at:
```
https://YOUR-USERNAME.github.io/reusesystems-ebay-templates/
```

### 3. Update Template URLs

Replace `YOUR-GITHUB-USERNAME` in all template files with your actual GitHub username:

**In templates/aircraft-parts.html:**
```html
<!-- Change this: -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/YOUR-GITHUB-USERNAME/reusesystems-ebay-templates@main/css/style.css">

<!-- To this: -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/pierrebailey/reusesystems-ebay-templates@main/css/style.css">
```

Do this for:
- `css/style.css`
- `css/responsive.css`
- `images/logo.jpg`

## 📁 Repository Structure

```
reusesystems-ebay-templates/
├── css/
│   ├── style.css              # Main stylesheet
│   └── responsive.css         # Mobile/tablet responsive styles
├── images/
│   ├── logo.jpg               # RE-USE.SYSTEMS logo
│   └── icons/                 # Icon assets
├── templates/
│   ├── aircraft-parts.html    # Template with aircraft conditions
│   └── standard.html          # Standard electronics template
└── README.md                  # This file
```

## 🎨 Templates Available

### 1. Aircraft Parts Template
**File:** `templates/aircraft-parts.html`

Includes:
- Aircraft parts conditions warning (yellow box)
- Export control compliance notice
- MOD/RAF specific terms
- 4 tabs: About Us, Aircraft Terms, Shipping, Returns

**Use for:** RAF surplus, aviation parts, military equipment

### 2. Standard Template
**File:** `templates/standard.html`

Includes:
- Clean product description
- Standard terms and conditions
- 3 tabs: About Us, Shipping, Returns

**Use for:** Electronics, IT equipment, general surplus

## 🔧 WP-Lister Pro Setup

### 1. Install Your Logo

1. Add your logo to the `images/` folder
2. Commit and push to GitHub
3. Wait 5-10 minutes for CDN cache
4. Test the URL: `https://cdn.jsdelivr.net/gh/YOUR-USERNAME/reusesystems-ebay-templates@main/images/logo.jpg`

### 2. Configure WP-Lister Pro

1. In WordPress, go to **WP-Lister Pro** → **Settings** → **Templates**
2. Create new template: "Aircraft Parts"
3. Paste contents of `templates/aircraft-parts.html`
4. Save template
5. Repeat for "Standard" template

### 3. Assign Templates to Products

**Method A: Per Product**
- Edit product in WooCommerce
- Scroll to **WP-Lister Pro** section
- Select template: "Aircraft Parts" or "Standard"

**Method B: Category-Based**
- Set default template in WP-Lister Pro settings
- Override per category if needed

## 🖼️ Template Variables (Jinja2)

WP-Lister Pro will automatically populate these:

| Variable | Description | Example |
|----------|-------------|---------|
| `{{ title }}` | Product title | "Tornado F3 Instrument Panel" |
| `{{ description }}` | Product description | Full WooCommerce description |
| `{{ images[0].url }}` | First image | Product gallery images |
| `{{ loop.index }}` | Image counter | 1, 2, 3... |

## 🎯 CDN Hosting Options

### Option 1: jsDelivr (Recommended)
**Pros:** Fast CDN, version pinning, aggressive caching
**URL Pattern:**
```
https://cdn.jsdelivr.net/gh/USERNAME/REPO@main/css/style.css
```

### Option 2: GitHub Pages
**Pros:** Simple, clean URLs, free HTTPS
**URL Pattern:**
```
https://USERNAME.github.io/REPO/css/style.css
```

### Option 3: Raw GitHub
**Pros:** Direct from repo, instant updates
**Cons:** No CDN, slower
**URL Pattern:**
```
https://raw.githubusercontent.com/USERNAME/REPO/main/css/style.css
```

## 🎨 Customization

### Changing Colors

Edit `css/style.css`:

```css
/* Primary brand color (RAF Blue) */
/* Find and replace #003d82 with your color */

/* Example: Change to green */
.header { border-bottom: 3px solid #00823d; }
.menu-bg { background: #00823d; }
.title h4 { color: #00823d; }
```

### Adding New Templates

1. Create new file in `templates/` folder
2. Copy from existing template
3. Modify content as needed
4. Commit and push to GitHub
5. Add to WP-Lister Pro

## 📱 Responsive Design

Templates are fully responsive:
- **Desktop:** Full layout with side-by-side content
- **Tablet:** Stacked layout, collapsible menu
- **Mobile:** Single column, touch-optimized thumbnails

Test on:
- Desktop: 1920×1080
- Tablet: 768×1024
- Mobile: 375×667

## 🔄 Updating Templates

### Quick Updates (Small Changes)

1. Edit file directly on GitHub web interface
2. Commit changes
3. Wait 5-10 minutes for CDN cache clear
4. Test eBay listing

### Major Updates (Version Control)

1. Create a new branch: `git checkout -b feature/new-design`
2. Make changes locally
3. Test thoroughly
4. Merge to main: `git checkout main && git merge feature/new-design`
5. Push: `git push origin main`

### Force CDN Cache Refresh

If changes don't appear immediately:

**jsDelivr:** Add version tag
```html
<!-- Change @main to @v1.1 -->
<link href="https://cdn.jsdelivr.net/gh/USER/REPO@v1.1/css/style.css">
```

**GitHub Pages:** Wait 5-10 minutes for automatic deployment

## 🧪 Testing

### Test Checklist

- [ ] Logo displays correctly
- [ ] All CSS loads (check browser console)
- [ ] Image gallery works (click thumbnails)
- [ ] Tabs switch correctly
- [ ] Responsive on mobile
- [ ] External links work
- [ ] No JavaScript errors (eBay blocks JS)

### Preview Template

Before pushing to eBay, test locally:

1. Save template as `test.html`
2. Replace `{{ variables }}` with actual content
3. Open in browser
4. Test on different screen sizes

## 📊 Performance

**Expected Load Times:**
- CSS: ~50ms (CDN cached)
- Logo: ~100ms (CDN cached)
- Total: <200ms for all assets

**Optimization Tips:**
- Use optimized images (WebP when possible)
- Minify CSS for production (optional)
- Leverage browser caching via CDN

## 🔒 Security & Compliance

### eBay Requirements

✅ External CSS via HTTPS (allowed)
✅ External images via HTTPS (allowed)
❌ JavaScript (blocked by eBay)
❌ External forms (blocked by eBay)

### Export Control Compliance

Aircraft parts template includes UK export control notices for:
- Export Control (Amendment) Order 2022
- Restricted countries list
- Military end-use controls

## 🐛 Troubleshooting

### CSS Not Loading

**Problem:** Styles don't appear on eBay listing

**Solutions:**
1. Check URL is correct (copy/paste from browser)
2. Verify GitHub Pages is enabled
3. Check for HTTPS (not HTTP)
4. Clear CDN cache (change @main to @v1.1)

### Images Not Displaying

**Problem:** Logo or images don't show

**Solutions:**
1. Verify file uploaded to GitHub
2. Check file name matches exactly (case-sensitive)
3. Wait 5-10 minutes for CDN propagation
4. Test URL directly in browser

### Template Variables Not Populating

**Problem:** `{{ title }}` appears as text

**Solutions:**
1. Verify WP-Lister Pro is installed and activated
2. Check template is assigned to product
3. Test product sync to eBay
4. Review WP-Lister Pro error logs

## 📚 Additional Resources

- [WP-Lister Pro Documentation](https://www.wplab.com/plugins/wp-lister/)
- [eBay Listing Policies](https://www.ebay.co.uk/help/policies/listing-policies/listing-policies?id=4213)
- [jsDelivr CDN Docs](https://www.jsdelivr.com/documentation)
- [GitHub Pages Guide](https://docs.github.com/en/pages)

## 🤝 Contributing

This is a private business repository. For changes:

1. Create feature branch
2. Test thoroughly
3. Document changes
4. Merge to main when ready

## 📄 License

Proprietary - RE-USE.SYSTEMS © 2025

---

**Maintained by:** Pierre Bailey
**Business:** RE-USE.SYSTEMS, Launceston, Cornwall
**Last Updated:** February 2025
