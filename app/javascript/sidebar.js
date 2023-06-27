export default function showNavbar(toggleId, navId, bodyId, headerId){
    const toggle = document.getElementById(toggleId),
        nav = document.getElementById(navId),
        bodypd = document.getElementById(bodyId),
        headerpd = document.getElementById(headerId)

    const change_icon = (toggle) => {
        if (toggle.classList.contains('fa-bars')){
            toggle.classList.remove('fa-bars')
            toggle.classList.add('fa-times')
        } else {
            toggle.classList.remove('fa-times')
            toggle.classList.add('fa-bars')
        }
    }

    if(toggle && nav && bodypd && headerpd){
        toggle.addEventListener('click', ()=>{
            nav.classList.toggle('show_bar')
            change_icon(toggle)
            bodypd.classList.toggle('body-pd')
            headerpd.classList.toggle('body-pd')
        })
    }
}