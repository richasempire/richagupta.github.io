<?php
  if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST['sndmessage'])) {
       // Get form data safely
       $name = htmlspecialchars(trim($_POST['username']));
       $email = htmlspecialchars(trim($_POST['useremail']));
       $fmsubject = htmlspecialchars(trim($_POST['subject']));
       $fmmessage = htmlspecialchars(trim($_POST['message']));
       // Validate form data
       if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
           echo "Invalid email format.";
           exit;
       }
   
       // Email configuration
       $to = "avinaykumar.web@gmail.com"; // Replace with your email
       $subject = "Contact Form Message from $name";

       // Email content
       $email_body = "Client Information\n\n";
       $email_body .= "Name: $name\n";
       $email_body .= "Email: $email\n";
       $email_body .= "Subject: $fmsubject\n";
       $email_body .= "Messsage: $fmmessage\n";

       // Send the email
       if (mail( $to, $subject, $email_body )) {
           echo "<div class='thankyou'><p>Message sent successfully!</p><a href='#'>Cancel</a></div>";
       } else {
           echo "<div class='merror'><p>Failed to send the message. Please try again.</p><a href='#'>Back</a></div>";
       }
   }
   } 
?>