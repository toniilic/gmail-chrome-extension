# Gmail API Extension

This project is a Node.js application that interacts with the Gmail API, allowing users to perform various operations on their Gmail account through a command-line interface.

## Features

- List Gmail labels
- List recent messages (with optional search query)
- Send emails

## Prerequisites

- Node.js
- npm
- Google Cloud Platform account with Gmail API enabled
- OAuth 2.0 Client ID credentials

## Setup

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/gmail-api-extension.git
   cd gmail-api-extension
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Set up your credentials:
   
   **Important:** For security reasons, `credentials.json` is not included in this repository.

   a. Go to the [Google Cloud Console](https://console.cloud.google.com/).
   
   b. Create a new project or select an existing one.
   
   c. Enable the Gmail API for your project.
   
   d. Go to "Credentials" and create a new OAuth 2.0 Client ID.
      - Choose "Desktop app" as the application type.
   
   e. Download the client configuration and save it as `credentials.json` in the project root.

   Your `credentials.json` file should look similar to this:

   ```json
   {
     "installed": {
       "client_id": "YOUR_CLIENT_ID",
       "project_id": "YOUR_PROJECT_ID",
       "auth_uri": "https://accounts.google.com/o/oauth2/auth",
       "token_uri": "https://oauth2.googleapis.com/token",
       "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
       "client_secret": "YOUR_CLIENT_SECRET",
       "redirect_uris": ["urn:ietf:wg:oauth:2.0:oob", "http://localhost"]
     }
   }
   ```

   Replace `YOUR_CLIENT_ID`, `YOUR_PROJECT_ID`, and `YOUR_CLIENT_SECRET` with your actual values.

   **Warning:** Never commit `credentials.json` to version control. Always keep it private and secure.

## Usage

Run the interactive CLI:

```
./gmail_cli.sh
```

Follow the on-screen prompts to interact with your Gmail account.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)

