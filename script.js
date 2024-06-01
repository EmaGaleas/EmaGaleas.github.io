
function submitFeedback() {
    let emailParams = {
        class: document.getElementById("classInput").value,
        res: document.getElementById("resourceInput").value,
        message: document.getElementById("feedbackInput").value,
    }

    // Envía el correo electrónico utilizando EmailJS
    emailjs.send("service_lff56q9","template_xsbwpyi", emailParams)
        .then(alert("Feedback sent! Thanks!")) // Si el correo se envía correctamente, se ejecuta esta función
}
