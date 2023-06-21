export default class Sidebar {
    constructor(){
        this.visible = '320px';
        this.invisible = '0';
        this.class_invisible = 'invisible';
        this.state = true;
        this.icon_invisible = document.createElement('i')
        this.icon_invisible.classList.add('bi')
        this.icon_invisible.classList.add('bi-list')
        this.icon_visible = document.createElement('i')
        this.icon_visible.classList.add('bi')
        this.icon_visible.classList.add('bi-x-lg')

    }

    init_element(){
        this.bar.style.width = this.invisible
        this.menu_btn.appendChild(this.icon_invisible)
    }

    elements(menu_btn, bar){
        this.menu_btn = menu_btn;
        this.bar = bar;
        this.init_element()
        this.on_click();

    }

    on_click(){
        this.menu_btn.onclick = () => {this.change()}
    }

    change(){
        if (this.state) {
            this.bar.style.width = this.visible
            this.bar.classList.remove(this.class_invisible)
            this.menu_btn.removeChild(this.menu_btn.lastElementChild)
            this.menu_btn.appendChild(this.icon_visible)
            this.state = false
        }else{
            this.bar.style.width = this.invisible
            this.bar.classList.add(this.class_invisible)
            this.menu_btn.removeChild(this.menu_btn.lastElementChild)
            this.menu_btn.appendChild(this.icon_invisible)
            this.state = true
        }
    }
}