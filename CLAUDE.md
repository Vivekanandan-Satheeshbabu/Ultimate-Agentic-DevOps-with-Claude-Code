# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront, provisioned with Terraform, and automated via GitHub Actions.

## Architecture

- Pure HTML5 and CSS3
- No JavaScript
- No build step
- No framework

## Commands

- terraform init
- terraform plan
- terraform apply

## Conventions

- All infrastructure changes go through Terraform — never modify AWS resources manually
- No JavaScript in this project
- CSS uses mobile-first approach with breakpoints at 900px, 768px, and 600px

## Safety

Never put secrets in this file. No API keys, passwords, or AWS credentials.

## Project Purpose

This is a **static HTML/CSS portfolio website** for the DevOps Micro Internship (DMI) program, Week 1. It serves as a hands-on learning project for students to practice:
- Linux basics
- Nginx web server setup and hosting
- Deployment proof and ownership verification
- Production-style web deployment

**No backend, database, or build process** — purely static HTML/CSS files.

## Project Structure

```
.
├── index.html          # Main portfolio page (single-page app with smooth scrolling)
├── privacy.html        # Privacy policy page
├── terms.html          # Terms of service page
├── style.css           # All styling (responsive, mobile-first)
└── images/             # Image assets (logo, course thumbnails, profile pic, etc.)
```

**Key Point**: The site is a **single-page portfolio** with smooth-scroll navigation (`scroll-behavior: smooth` in CSS). Most internal links are anchor-based (`#home`, `#about`, `#courses`, etc.).

## Important: Ownership Proof Requirement

**Critical for DMI students**: Before deployment, they **MUST** customize the footer (line ~604 in `index.html`) with their details:

```html
<!-- Change this -->
<p>Crafted with <span>cloud</span> excellence by Pravin Mishra</p>

<!-- To this (example) -->
<p><strong>Deployed by:</strong> [Name] | DMI Cohort [#] | Group [#] | Week 1 | [Date]</p>
```

This proof must be **visible in the browser** for submission. It demonstrates ownership and completion of the deployment task.

## Deployment (Ubuntu + Nginx)

Standard static site deployment — no special build steps required:

1. Clone repo → `/var/www/html/`
2. Install Nginx: `sudo apt install nginx -y`
3. Start Nginx: `sudo systemctl start nginx`
4. Site is live at `http://<public-ip>`

See README.md for full step-by-step instructions.

## CSS and Styling

- **Framework**: Vanilla CSS (no preprocessor)
- **Layout**: Flexbox-based, fully responsive
- **Mobile**: Hamburger menu toggle (JavaScript in `<script>` tags within HTML)
- **External**: Font Awesome 6.5.0 icons via CDN

All styles are in `style.css` — no CSS-in-JS or component styling.

## JavaScript

Minimal JavaScript embedded in `index.html`:
- `toggleMenu()` — hamburger menu toggle for mobile
- `goToSection()` — smooth scroll to anchor sections
- Dynamic year in footer (`<span id="year"></span>`)

No frameworks, no bundlers, no external JS files.

## External Links & Resources

The site links to external content (Udemy courses, Amazon books, social media). These are hardcoded in `index.html` — no configuration needed.

## Common Tasks for Future Work

- **Update footer/ownership proof**: Edit line ~604 in `index.html`
- **Add/update courses**: Edit `#courses` section in `index.html` (repeat `.course-card` div)
- **Update contact info**: Edit `#contact` section in `index.html`
- **Change colors/spacing**: Modify `style.css`
- **Add new pages**: Create `.html` file, link in navbar, replicate footer from `index.html`

---

**No CI/CD, no tests, no build tools.** This is intentionally minimal for educational purposes.
