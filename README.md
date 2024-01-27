# OpenBook - Your Gateway to Free Books

Welcome to OpenBook, a web platform developed with Laravel, HTML, CSS, Tailwind CSS, JavaScript, and jQuery, designed to provide users with access to a vast collection of free PDF books. OpenBook offers a seamless experience with features like authentication, dark/light mode, language switching, and a user-friendly interface.

## Features

### Home Page

-   **Authentication**: Secure login and registration with full validation for user access.
-   **Navbar**: Dynamic navigation with Home, Discover, and Categories. Dropdown category selection for easy navigation.
-   **Language and Theme**: Switch between English and Arabic, and toggle between dark and light modes.
-   **User Profiles**: Display user profile images. Admins have access to an admin panel, allowing them to manage the platform.
-   **Admin Features**: Admins can add new books through a form accessible from the navbar.

### Introduction Section

-   Introduction to the platform with a curated selection of books.

### Feedback Form

-   Users can provide feedback, recommend books, or submit queries through a form.

### Setting Page

-   **Profile Management**: Users can change their profile image, add languages, country, favorite books/authors, and phone numbers.
-   **Toggle Section**: Customize the information displayed in the user's profile.
-   **Change Password**: Easily change the password for added security.

### Profile Page

-   Displays user profile image and toggled information.

### All Books Page

-   Comprehensive search functionality by book name, author, page count, and date.
-   Pagination for easy navigation.

### Single Book Page

-   Detailed information about a book, including cover, name, world rating, page count, language, year of publish, category, and author.
-   Download and read options for authenticated users.
-   Related books by the same author and similar category.
-   Real-time comment section using Ajax, allowing users to share their thoughts.

### Category Pages

-   Dedicated pages for each category, classifying books accordingly.

### Admin Panel

-   Sidebar with access to all project features.
-   Full control over user profiles, book management, and settings.

## Language Support

-   The entire platform is available in English and Arabic, including book descriptions.

## Responsive Design

-   OpenBook is designed to be fully responsive, ensuring a seamless experience on all devices.

## Getting Started

1. Clone the repository.
2. Install dependencies using `composer install` and `npm install`.
3. Configure the `.env` file with your database details.
4. Run migrations using `php artisan migrate`.
5. Serve the application using `php artisan serve`.

Enjoy exploring the world of books with OpenBook! If you have any questions or feedback, feel free to reach out. Happy reading!
