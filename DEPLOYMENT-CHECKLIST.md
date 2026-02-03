# Deployment Checklist

Use this checklist to ensure everything is properly configured before going live with your GitHub-hosted eBay templates.

## ✅ Pre-Deployment

### GitHub Repository Setup
- [ ] Repository created: `reusesystems-ebay-templates`
- [ ] Set to **Public** (required for GitHub Pages)
- [ ] All files uploaded to repository
- [ ] `.gitignore` file in place
- [ ] `README.md` is complete and accurate

### GitHub Pages Configuration
- [ ] GitHub Pages enabled in repository settings
- [ ] Source set to **main** branch
- [ ] Deploy from **/ (root)**
- [ ] Deployment successful (check Actions tab)
- [ ] Site live at `https://USERNAME.github.io/reusesystems-ebay-templates/`

### Template Files Updated
- [ ] Ran `setup.sh` OR manually updated templates
- [ ] All instances of `YOUR-GITHUB-USERNAME` replaced
- [ ] CSS URLs point to correct GitHub username
- [ ] Image URLs point to correct GitHub username
- [ ] Both templates updated (aircraft-parts.html + standard.html)

---

## 🎨 Asset Verification

### Logo Upload
- [ ] Logo file added to `images/logo.jpg`
- [ ] File size optimized (<500KB)
- [ ] Image displays correctly
- [ ] URL test: `https://USERNAME.github.io/.../images/logo.jpg`
- [ ] jsDelivr CDN test: `https://cdn.jsdelivr.net/gh/USER/REPO@main/images/logo.jpg`

### CSS Files
- [ ] `css/style.css` loads correctly
- [ ] `css/responsive.css` loads correctly
- [ ] No 404 errors in browser console
- [ ] Styles apply correctly to template
- [ ] Colors match brand guidelines

### External Dependencies
- [ ] Bootstrap 4.6.2 loads
- [ ] Font Awesome 5.11.2 loads
- [ ] All external CDNs accessible

---

## 🔧 WP-Lister Pro Configuration

### Plugin Setup
- [ ] WP-Lister Pro installed and activated
- [ ] eBay account connected
- [ ] Store settings configured
- [ ] API credentials valid

### Template Import
- [ ] Aircraft Parts template created
- [ ] Standard template created
- [ ] Templates saved in WP-Lister Pro
- [ ] Preview templates in WordPress admin
- [ ] No syntax errors visible

### Template Assignment
- [ ] Default template set (if desired)
- [ ] Category-based rules configured
- [ ] Test product assigned to template
- [ ] Template variables populating correctly

---

## 🧪 Testing Phase

### Template Functionality
- [ ] Product title displays: `{{ title }}`
- [ ] Product description displays: `{{ description }}`
- [ ] Image gallery works (all images)
- [ ] Thumbnail navigation works
- [ ] Tab switching works (About, Terms, Shipping, Returns)
- [ ] No broken images
- [ ] No missing CSS

### Responsive Testing
- [ ] Desktop view (1920×1080)
- [ ] Tablet view (768×1024)
- [ ] Mobile view (375×667)
- [ ] Hamburger menu works on mobile
- [ ] Images scale correctly
- [ ] Text readable on all devices

### Cross-Browser Testing
- [ ] Chrome/Edge (latest)
- [ ] Firefox (latest)
- [ ] Safari (if Mac available)
- [ ] Mobile Safari (iOS)
- [ ] Chrome Mobile (Android)

### Link Testing
- [ ] "Visit Store" link works
- [ ] "About Us" link works
- [ ] "New Arrivals" link works
- [ ] "Contact Us" link works
- [ ] "Feedback" link works
- [ ] All footer links work
- [ ] Newsletter subscribe link works

---

## 📋 Content Verification

### Aircraft Parts Template
- [ ] Aircraft conditions warning displays
- [ ] Export control notice present
- [ ] Restricted countries list accurate
- [ ] Airworthiness disclaimer clear
- [ ] 4 tabs present and working

### Standard Template
- [ ] No aircraft-specific content
- [ ] General terms appropriate
- [ ] 3 tabs present and working
- [ ] Return policy clear

### Legal Compliance
- [ ] Return policy matches actual policy (30 days)
- [ ] Shipping times accurate (cut-off times)
- [ ] Export restrictions accurate (for aircraft parts)
- [ ] Copyright notice present
- [ ] Business name correct

---

## 🚀 eBay Listing Tests

### Create Test Listings
- [ ] Test listing #1: Aircraft part with aircraft template
- [ ] Test listing #2: Electronics with standard template
- [ ] Preview both listings before publishing
- [ ] Publish to eBay sandbox/test environment (if available)

### Live Listing Verification
- [ ] Template renders correctly on eBay
- [ ] Images display
- [ ] CSS applies
- [ ] Mobile view works on eBay
- [ ] No eBay policy violations
- [ ] No JavaScript errors (JS blocked by eBay)

### Performance Check
- [ ] Page loads in <3 seconds
- [ ] CSS loads from CDN (check Network tab)
- [ ] Images load properly
- [ ] No console errors
- [ ] Smooth scrolling/navigation

---

## 🔒 Security & Best Practices

### Repository Security
- [ ] No sensitive data in repository
- [ ] No API keys in code
- [ ] No private information in templates
- [ ] `.gitignore` excludes sensitive files

### eBay Compliance
- [ ] No JavaScript in templates
- [ ] No prohibited content
- [ ] External CSS via HTTPS only
- [ ] No autoplay media
- [ ] No pop-ups or overlays

### Accessibility
- [ ] Alt text on logo image
- [ ] Alt text on product images
- [ ] Semantic HTML structure
- [ ] Color contrast meets WCAG 2.1 AA
- [ ] Keyboard navigation works

---

## 📊 Monitoring & Maintenance

### Post-Launch Monitoring
- [ ] Monitor first 10 listings for issues
- [ ] Check eBay seller dashboard for policy warnings
- [ ] Review customer feedback
- [ ] Monitor page load times
- [ ] Check for 404 errors

### Regular Maintenance Schedule
- [ ] Weekly: Review new listings
- [ ] Monthly: Check for broken links
- [ ] Quarterly: Update dependencies (Bootstrap, Font Awesome)
- [ ] Annually: Review legal terms for accuracy

### Backup Strategy
- [ ] Repository backed up (GitHub automatic)
- [ ] Local backup of templates
- [ ] WP-Lister Pro templates exported
- [ ] Document changes in commit messages

---

## 🎯 Performance Benchmarks

### Target Metrics
- [ ] CSS load time: <100ms
- [ ] Logo load time: <200ms
- [ ] Total template assets: <300ms
- [ ] Full page render: <2 seconds
- [ ] Mobile performance score: >85 (Lighthouse)

### Optimization Completed
- [ ] Images optimized (<500KB each)
- [ ] CSS minified (optional)
- [ ] CDN caching enabled
- [ ] Compression enabled on GitHub Pages

---

## 📝 Documentation

### Repository Documentation
- [ ] README.md complete
- [ ] QUICKSTART.md accurate
- [ ] Images guide (IMAGES-README.md) clear
- [ ] Code comments where needed
- [ ] Commit messages descriptive

### Internal Documentation
- [ ] WP-Lister Pro settings documented
- [ ] Template usage guidelines written
- [ ] Team members trained (if applicable)
- [ ] Troubleshooting guide accessible

---

## ✨ Final Checks

### Pre-Launch Validation
- [ ] All checklist items above completed
- [ ] Test listings successful
- [ ] No console errors
- [ ] Mobile optimized
- [ ] Fast loading times

### Launch Approval
- [ ] Final review by Pierre
- [ ] Business owner approval
- [ ] Legal terms verified
- [ ] Brand guidelines followed
- [ ] Ready to launch! 🚀

---

## 🆘 Rollback Plan

If something goes wrong:

### Quick Fixes
1. **CSS Issue:** Revert to previous commit
   ```bash
   git checkout HEAD~1 css/style.css
   git commit -m "Revert CSS changes"
   git push
   ```

2. **Template Issue:** Use WP-Lister Pro to switch templates back

3. **Complete Rollback:** Revert entire repository
   ```bash
   git revert HEAD
   git push
   ```

### Emergency Contacts
- WP-Lister Pro Support: https://www.wplab.com/support/
- eBay Seller Support: 0800 279 5533
- GitHub Support: https://support.github.com/

---

## 📅 Post-Launch Schedule

### Week 1
- [ ] Monitor all new listings daily
- [ ] Address any customer questions
- [ ] Fix any template issues immediately

### Week 2-4
- [ ] Continue monitoring
- [ ] Gather feedback from customers
- [ ] Make minor improvements

### Month 2+
- [ ] Review analytics
- [ ] Plan template improvements
- [ ] Consider A/B testing variations

---

**Deployment Date:** ______________

**Deployed By:** ______________

**Sign-off:** ______________

---

*Save this checklist and update it as you complete each item. Good luck with your launch! 🎉*
