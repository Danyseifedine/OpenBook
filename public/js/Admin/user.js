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

inputFile.addEventListener("change", toggleSaveButton);
