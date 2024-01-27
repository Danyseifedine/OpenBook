const inputFile = document.getElementById("input-file");
const saveBtn = document.getElementById("save-btn");

// Function to toggle the visibility of the Save button
function toggleSaveButton() {
    if (inputFile.value) {
        saveBtn.style.display = "block";
    } else {
        saveBtn.style.display = "none";
    }
}

// Add event listener to the input file element
inputFile.addEventListener("change", toggleSaveButton);

$(document).ready(function () {
    setTimeout(function () {
        $(".error").fadeOut("slow", function () {
            $(this).remove();
        });
    }, 3000);
});
