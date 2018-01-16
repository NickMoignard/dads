
document.addEventListener('turbolinks:load', function() {
    const newProjectButton = document.getElementById('new-project-button');
    const newProjectDropdown = document.getElementById('new-project-dropdown');
    const cancelProjectDropdown = document.getElementById('cancel-new-project');
    const saveNewProject = document.getElementById('save-new-project');

    if (newProjectButton && newProjectDropdown) {
        newProjectButton.addEventListener('click', function() {
            return newProjectDropdown.classList.contains('is-hidden') ? newProjectDropdown.classList.remove('is-hidden') : null;
        }, false);

        cancelProjectDropdown.addEventListener('click', function() {
            return newProjectDropdown.classList.add('is-hidden');
        }, false);

        saveNewProject.addEventListener('click', function() {
            return newProjectDropdown.classList.add('is-hidden');
        }, false);
    }
    
});

