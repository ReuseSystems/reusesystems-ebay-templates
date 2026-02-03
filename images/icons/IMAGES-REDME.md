# Image Assets Guide

## Required Images

### 1. Logo (REQUIRED)
- **Location:** `images/logo.jpg`
- **Recommended Size:** 800×200px
- **Format:** JPG or PNG
- **Max File Size:** 500KB
- **Background:** Transparent PNG or white JPG

Upload your RE-USE.SYSTEMS logo here. The template will automatically scale it for different screen sizes.

### 2. Icons (Optional)
- **Location:** `images/icons/`
- **Purpose:** Custom icons for service features
- **Currently:** Using Font Awesome icons (free)

---

## Adding Your Logo

### Method 1: GitHub Web Interface

1. Go to your repository on GitHub
2. Navigate to `images/` folder
3. Click **Add file** → **Upload files**
4. Drop your `logo.jpg` file
5. Commit: "Add RE-USE.SYSTEMS logo"

### Method 2: Git Command Line

```bash
# Copy your logo
cp /path/to/your/logo.jpg images/logo.jpg

# Add and commit
git add images/logo.jpg
git commit -m "Add RE-USE.SYSTEMS logo"
git push
```

---

## Logo Specifications

### Current Logo Dimensions
Your current logo appears to be approximately:
- Width: ~800px
- Height: ~150-200px
- Aspect ratio: ~4:1 (wide horizontal format)

### Optimization Tips

**For Web:**
```bash
# Optimize with ImageMagick
convert logo.png -quality 85 -strip logo.jpg

# Or use online tools:
# - TinyPNG.com
# - Squoosh.app
# - ImageOptim (Mac)
```

**For Retina Displays:**
- Export at 2x size (1600×400px)
- Save at 85% quality
- File should be <500KB

---

## Icon Assets

Currently using **Font Awesome 5.11.2** (free tier) for icons:

- ✅ Checkmark: `fa-check-square-o`
- 📅 Calendar: `fa-calendar-o`
- ♻️ Recycle: `fa-recycle`
- ✉️ Envelope: `fa-envelope`

### Custom Icons

If you want custom icons:

1. Create icons at 64×64px
2. Save as PNG with transparency
3. Upload to `images/icons/`
4. Update CSS references

Example:
```css
.service-box i {
    background-image: url('../images/icons/custom-icon.png');
    background-size: contain;
}
```

---

## Image Formats

### Supported Formats
- **JPG:** Photos, logos with solid backgrounds
- **PNG:** Logos with transparency, icons
- **SVG:** Scalable logos (best quality)
- **WebP:** Modern format (better compression)

### Recommended Formats by Use Case

| Use Case | Format | Why |
|----------|--------|-----|
| Logo | PNG | Transparency support |
| Product Photos | JPG | Smaller file size |
| Icons | SVG/PNG | Sharp at any size |
| Backgrounds | JPG | Good compression |

---

## eBay Image Guidelines

### Logo in Listings
- ✅ Allowed: Your business logo
- ✅ Allowed: Brand watermarks
- ❌ Not Allowed: Stock photos of other brands
- ❌ Not Allowed: Misleading images

### File Size Limits
- **Max per image:** 12MB (eBay)
- **Recommended:** <500KB for fast loading
- **CDN limit:** No specific limit, but smaller is faster

---

## Product Image Guidelines

While your template hosts CSS/logo on GitHub, **product images** come from:
1. WooCommerce media library
2. eBay's image hosting (via WP-Lister Pro)

**Note:** Product images are NOT stored in this GitHub repo - only template assets (logo, CSS, icons) are stored here.

---

## Testing Your Images

### Check Image URLs

After uploading, test these URLs in your browser:

```
https://YOUR-USERNAME.github.io/reusesystems-ebay-templates/images/logo.jpg
https://cdn.jsdelivr.net/gh/YOUR-USERNAME/reusesystems-ebay-templates@main/images/logo.jpg
```

Both should display your logo.

### Check in Template

1. Create test eBay listing
2. View listing preview
3. Inspect logo in browser (F12)
4. Verify it loads from GitHub/jsDelivr

---

## Placeholder Logo

This folder contains `IMAGES-README.md` as a placeholder.

**Replace this with your actual logo:**

```bash
# Remove placeholder
rm images/IMAGES-README.md

# Add your logo
cp ~/Downloads/reuse-systems-logo.jpg images/logo.jpg

# Commit
git add images/
git commit -m "Add company logo"
git push
```

---

## Future Enhancements

### Potential Additions
- Favicon (`images/favicon.ico`)
- Social media icons
- Payment method logos
- Trust badges
- Certification logos (ISO, etc.)

### WebP Support

For modern browsers, consider adding WebP versions:

```html
<picture>
  <source srcset="logo.webp" type="image/webp">
  <img src="logo.jpg" alt="RE-USE.SYSTEMS">
</picture>
```

This provides better compression for supported browsers while falling back to JPG.

---

**Need help optimizing images?** Use these free tools:
- [TinyPNG](https://tinypng.com/) - Compress PNG/JPG
- [Squoosh](https://squoosh.app/) - Google's image optimizer
- [SVGOMG](https://jakearchibald.github.io/svgomg/) - Optimize SVG files
