const pages = [...document.querySelectorAll('.page')];
const navItems = [...document.querySelectorAll('.nav-item')];
const titleMap = {overview:'Обзор проекта',learning:'Обучение',memory:'Память',sessions:'Runs',roadmap:'Roadmap',terminal:'Терминал',security:'Безопасность',research:'Исследования'};
function go(page){
  pages.forEach(p=>p.classList.toggle('active',p.id===`page-${page}`));
  navItems.forEach(n=>n.classList.toggle('active',n.dataset.page===page));
  document.getElementById('pageTitle').textContent=titleMap[page]||'AiPayWorlds';
  location.hash=page;
  window.scrollTo({top:0,behavior:'smooth'});
}
navItems.forEach(n=>n.addEventListener('click',()=>go(n.dataset.page)));
document.querySelectorAll('[data-go]').forEach(b=>b.addEventListener('click',()=>go(b.dataset.go)));
const initial=(location.hash||'#overview').slice(1); go(titleMap[initial]?initial:'overview');

document.querySelectorAll('[data-copy]').forEach(btn=>btn.addEventListener('click',async()=>{
  const text=btn.dataset.copy;
  try{await navigator.clipboard.writeText(text); const old=btn.textContent; btn.textContent='COPIED ✓'; setTimeout(()=>btn.textContent=old,1200)}catch{alert('Не удалось автоматически скопировать. Выдели команду вручную.');}
}));
document.getElementById('copyRun')?.addEventListener('click',async()=>{
  const text=document.getElementById('runTemplate').value;
  try{await navigator.clipboard.writeText(text); alert('Шаблон RUN скопирован.');}catch{alert('Скопируй шаблон вручную из окна ниже.');}
});
document.getElementById('themeBtn')?.addEventListener('click',()=>document.body.classList.toggle('light-preview'));
