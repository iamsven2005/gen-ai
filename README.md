# Pet Community Onboarding Wizard (PHP + CSV)

## Requirements
- PHP 8.0+ with file uploads enabled

## Run locally
From the `pet-community` directory:

```bash
php -S localhost:8000
```

Then open `http://localhost:8000`.

## Run with Docker
From the `pet-community` directory:

```bash
docker build -t pet-community-app .
docker run --name pet-community -p 8080:80 pet-community-app
```

Then open `http://localhost:8080`.

To persist CSV data and uploaded photos across container recreation:

```bash
docker run --name pet-community -p 8080:80 -v ${PWD}/data:/var/www/html/data -v ${PWD}/uploads:/var/www/html/uploads pet-community-app
```

## Data storage
- Users are stored in `data/users.csv`
- Pets are stored in `data/pets.csv`
- Images are stored in:
  - `uploads/profiles/`
  - `uploads/pets/`

## Features implemented
- 5-step onboarding wizard with separate pages and next/previous navigation
- Username/password setup
- Personal info collection
- Profile photo upload
- Multi-pet information entry (name, breed, age, photo)
- Confirmation and save to CSV
- Login/logout
- Dashboard with other user profiles
- Edit profile (username locked)
- Delete profile and related pet/photo records
