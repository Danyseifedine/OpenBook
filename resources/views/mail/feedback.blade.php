<!DOCTYPE html>
<html>

<head>
    <title>Feedback Received</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            max-width: 600px;
            padding: 20px;
        }

        .header {
            background-color: #4CAF50;
            border-radius: 8px 8px 0 0;
            color: #ffffff;
            padding: 10px;
            text-align: center;
        }

        .content {
            padding: 20px;
        }

        .footer {
            background-color: #f1f1f1;
            border-radius: 0 0 8px 8px;
            padding: 10px;
            text-align: center;
        }

        h1 {
            color: #333333;
        }

        p {
            color: #666666;
        }

        strong {
            color: #333333;
        }
    </style>
</head>

<body>
    <div class="card">
        <div class="header">
            <h1>Thank you for your feedback!</h1>
        </div>
        <div class="content">
            <p>Dear Dany Seifeddine,</p>
            <p>Feedback from {{ $user->name }}</p>
            <p>We have received your feedback with the following details:</p>
            <p><strong>Subject:</strong> {{ __($data['subject']) }}</p>
            <p><strong>Message:</strong> {{ $data['message'] }}</p>
            <p>We appreciate you taking the time to provide us with your thoughts and suggestions. Our team will review
                your
                feedback and get back to you if necessary.</p>
        </div>
        <div class="footer">
            <p>Best regards,</p>
            <p>OpenBook</p>
        </div>
    </div>
</body>

</html>
