// 30 seconds delay for the video page
window.onload = function() {
    const submitButton = document.querySelector('[name="submit_3_delay"]');
    if (submitButton) {
        submitButton.disabled = true;

        setTimeout(function() {
            submitButton.disabled = false;
        }, 30000); // 30000 milliseconds = 30 seconds
    }
};