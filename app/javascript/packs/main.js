const open = document.querySelector('.open-icon')
const box = document.querySelector('.comunity-area-3')

open.addEventListener('click', () => {
    box.classList.toggle('active')
})
