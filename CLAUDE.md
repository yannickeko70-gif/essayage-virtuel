# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview
This repository contains the frontend for a virtual try-on clothing application. The backend is not included in this repository; the frontend uses mock data and a configurable API URL.

## Key Information
- **Frontend Location:** `frontend/` directory
- **Technology Stack:** React (Create React App), Tailwind CSS, React Router, React Context API
- **Main Features:** Product browsing, shopping cart, authentication, virtual try-on experience

## Development Commands (within frontend/)
- `npm start` - Runs the app in development mode at http://localhost:3000
- `npm test` - Launches the test runner in interactive watch mode
- `npm test -- --watchAll=false` - Runs tests once and exits
- `npm test -- --coverage` - Runs tests with coverage report
- `npm run build` - Builds the app for production to the `build` folder
- `npm run eject` - **Warning**: One-way operation that removes the single build dependency

## Environment Variables
- `REACT_APP_API_URL` - Base URL for the API backend (defaults to 'http://localhost:5000/api')
- Set in `frontend/.env` file or via environment configuration

## Code Architecture & Structure

### Project Structure
The frontend follows a standard Create React App structure with domain-oriented organization:
- `src/components/` - Reusable UI components (layout, shop, tryon)
- `src/context/` - React Context providers (CartContext, AuthContext)
- `src/pages/` - Page components mapped to routes
- `src/services/` - API services and mock data (api.js, productService.js, authService.js)
- `src/App.js` - Main application component with routing
- `src/index.js` - Application entry point

### Key Architectural Patterns

#### State Management
- Uses React Context API for global state (`CartContext` and `AuthContext`)
- `CartContext` manages cart items and provides functions (addItem, removeItem, updateQty, clearCart)
- `AuthContext` manages authentication state (user, login, logout, etc.)
- Consumed via custom hooks (`useCart()`, `useAuth()`) in components
- Local UI state managed with `useState` (form inputs, toggles)

#### Routing
- Uses React Router DOM v6 (`BrowserRouter`, `Routes`, `Route`)
- Route definitions in `src/App.js`
- Navigation via `Link` components and `useNavigate()` hook
- Route parameters accessed via `useParams()` hook

#### Styling
- Tailwind CSS for utility-first styling
- Custom color scheme in `tailwind.config.js` (ink, cream, warm, gold, rust, muted)
- Custom fonts: Cormorant Garamond (serif), DM Sans (sans-serif)
- Component-specific styles use inline style objects for complex values
- Classnames used for basic layout and responsive utilities

#### Data Flow
- Mock product data in `src/services/productService.js`
- Simple API wrapper in `src/services/api.js` for future backend integration
- Authentication service in `src/services/authService.js`
- Product data imported directly where needed (no global product state)
- Cart state is managed via `CartContext`
- Auth state managed via `AuthContext`
- Form data handled locally with `useState` and submitted via context functions

#### Virtual Try-On Feature (Core Feature)
- Implemented in `src/pages/tryon/TryOn.jsx`
- Multi-step workflow: photo upload → analysis → results
- Integrates with cart system to add tried-on items
- Features: photo upload (drag-and-drop/webcam), simulated clothing overlay, size recommendations, IA compatibility scoring, adjustable measurements

## Important Files to Understand First
1. `src/App.js` - Main application layout and routing
2. `src/context/CartContext.jsx` - Global cart state management
3. `src/context/AuthContext.jsx` - Authentication state management
4. `src/index.js` - Application entry point
5. `src/services/productService.js` - Mock product data and helpers
6. `src/services/authService.js` - Authentication service helpers
7. `src/pages/tryon/TryOn.jsx` - Virtual try-on page (core feature)
8. `tailwind.config.js` - Styling configuration and theme extension
9. `package.json` - Dependencies and available scripts

## Development Guidelines

### Adding New Features
- **New pages**: Create component in `src/pages/` and add route in `App.js`
- **Shared components**: Create in `src/components/` with appropriate subdomain (layout, shop, tryon, etc.)
- **Global state**: Extend existing Contexts (`CartContext`, `AuthContext`) or create new context in `src/context/`
- **Data fetching**: Extend `services/api.js` or create new service files
- **Styling**: Use Tailwind utility classes or extend `tailwind.config.js` if needed
- **Virtual try-on features**: Follow patterns in `src/pages/tryon/TryOn.jsx`
- **Authentication features**: Follow patterns in `src/pages/auth/Auth.jsx` and `src/services/authService.js`

### Testing
- Tests located alongside source files with `.test.js` suffix
- Uses Jest and React Testing Library
- Render components with `render()` from `@testing-library/react`
- Query DOM with `screen` object
- Use `@testing-library/jest-dom` for custom matchers

### Styling Conventions
- Apply Tailwind classes directly in JSX for utility styling
- Use `className` attribute for Tailwind classes
- For complex dynamic styles, use JavaScript `style` object
- Follow existing color palette from `tailwind.config.js`
- Use existing font families: serif for headings, sans for body text
- Maintain consistent spacing and border-radius values as used throughout the codebase

## Quick Reference
- To begin development: `cd frontend && npm start`
- To run tests: `cd frontend && npm test`
- To build for production: `cd frontend && npm run build`