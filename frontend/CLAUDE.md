# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Common npm scripts
- `npm start` or `yarn start` - Runs the app in development mode at http://localhost:3000
- `npm test` or `yarn test` - Launches the test runner in interactive watch mode
- `npm run build` or `yarn build` - Builds the app for production to the `build` folder
- `npm run eject` - **Warning**: One-way operation that removes the single build dependency and copies all configuration files

### Environment Variables
- `REACT_APP_API_URL` - Base URL for the API backend (defaults to 'http://localhost:5000/api')
- Set in `.env` file or via environment configuration

### Running specific tests
- To run tests in watch mode: `npm test`
- To run tests once and exit: `npm test -- --watchAll=false`
- To run tests with coverage: `npm test -- --coverage`

### Development workflow
1. Start development server: `npm start`
2. Make changes to source files (they will hot-reload)
3. Run tests periodically: `npm test`
4. Build for production when ready: `npm run build`

## Code Architecture & Structure

### Project Structure
```
frontend/
├── public/                 # Static assets (HTML, icons, manifest)
├── src/                    # Source code
│   ├── components/         # Reusable UI components
│   │   └── layout/         # Layout components (Navbar, Footer)
│   ├── context/            # React Context providers (CartContext)
│   ├── hooks/              # Custom React hooks (currently empty)
│   ├── pages/              # Page components mapped to routes
│   │   ├── checkout/       # Checkout page
│   │   ├── product/        # Product detail page
│   │   └── tryon/          # Virtual try-on page (core feature)
│   ├── services/           # API services and mock data
│   │   ├── api.js          # HTTP client wrapper
│   │   └── productService.js # Mock product data and helpers
│   ├── App.js              # Main application component with routing
│   ├── index.js            # Application entry point
│   ├── index.css           # Global styles
│   └── App.test.js         # Example test file
├── tailwind.config.js      # Tailwind CSS configuration
├── postcss.config.js       # PostCSS configuration
├── package.json            # Dependencies and scripts
└── README.md               # Project overview
```

### Key Architectural Patterns

#### State Management
- Uses React Context API for global state (`CartContext`)
- Context provides cart items and manipulation functions (addItem, removeItem, updateQty, clearCart)
- Consumed via `useCart()` hook in components that need cart data
- Local component state managed with `useState` for UI-specific state (form inputs, toggles)

#### Routing
- Uses React Router DOM v6 (`BrowserRouter`, `Routes`, `Route`)
- Route definitions in `App.js`
- Navigation via `Link` components and `useNavigate()` hook
- Route parameters accessed via `useParams()` hook
- Protected routes not implemented (all routes publicly accessible)

#### Styling
- Tailwind CSS for utility-first styling
- Custom color scheme defined in `tailwind.config.js` (ink, cream, warm, gold, rust, muted)
- Custom fonts: Cormorant Garamond (serif), DM Sans (sans-serif)
- Component-specific styles often use inline style objects for complex values
- Classnames used for basic layout and responsive utilities

#### Data Flow
- Mock product data in `services/productService.js`
- Simple API wrapper in `services/api.js` for future backend integration
- Product data imported directly where needed (no global product state)
- Cart state is the primary global state managed via Context
- Form data handled locally with `useState` and submitted via context functions

#### Virtual Try-On Feature (Core Application Feature)
- The `/tryon` route implements the virtual try-on experience
- Uses a multi-step workflow: photo upload → analysis → results
- Integrates with the cart system to allow adding tried-on items
- Features include:
  - Photo upload with drag-and-drop and webcam support
  - Simulated clothing overlay on user photos
  - Size recommendation based on measurements
  - IA compatibility scoring
  - Adjustable measurements for fine-tuning fit

#### Component Organization
- Pages: Top-level components mapped to routes (`src/pages/`)
- Layout: Shared UI structures (`src/components/layout/`)
- Context: Global state providers (`src/context/`)
- Services: Data access and API utilities (`src/services/`)
- Reusable components would go in `src/components/` (beyond layout)

### Important Files to Understand First

1. **src/App.js** - Main application layout, routing, and route definitions
2. **src/context/CartContext.jsx** - Global cart state management
3. **src/index.js** - Application entry point and root rendering
4. **src/services/productService.js** - Mock product data and helper functions
5. **src/pages/Home.jsx** - Home page showing implementation patterns
6. **src/pages/tryon/TryOn.jsx** - Virtual try-on page (core feature implementation)
7. **src/pages/product/ProductDetail.jsx** - Detailed product page with form handling
8. **tailwind.config.js** - Styling configuration and theme extension
9. **package.json** - Dependencies and available scripts

### Development Guidelines

#### Adding New Features
1. For new pages: Create component in `src/pages/` and add route in `App.js`
2. For shared components: Create in `src/components/` with appropriate subfolder
3. For global state: Extend `CartContext` or create new context in `src/context/`
4. For data fetching: Extend `services/api.js` or create new service files
5. For styling: Use Tailwind utility classes or add to `tailwind.config.js` if needed
6. For virtual try-on features: Follow the pattern in `src/pages/tryon/TryOn.jsx`

#### Testing
- Tests located alongside source files with `.test.js` suffix
- Uses Jest and React Testing Library
- Render components with `render()` from `@testing-library/react`
- Query DOM with `screen` object
- Use `@testing-library/jest-dom` for custom matchers

#### Styling Conventions
- Apply Tailwind classes directly in JSX for utility styling
- Use `className` attribute for Tailwind classes
- For complex dynamic styles, use JavaScript `style` object
- Follow existing color palette from `tailwind.config.js`
- Use existing font families: serif for headings, sans for body text
- Maintain consistent spacing and border-radius values as used throughout the codebase